import 'dart:async';

import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/domain/entities/asistencia_tipo_ui.dart';
import 'package:padre_mentor/src/domain/entities/asistencia_ui.dart';
import 'package:padre_mentor/src/domain/entities/curso_ui.dart';
import 'package:padre_mentor/src/domain/repositories/curso_repository.dart';
import 'package:padre_mentor/src/domain/repositories/http_datos_repository.dart';
import 'package:padre_mentor/src/domain/repositories/usuario_configuarion_repository.dart';

class GetAsistencia extends UseCase<GetAsistenciaResponse, GetAsistenciaParameters>{
  final HttpDatosRepository httprepository;
  final CursoRepository cursoRepository;
  final UsuarioAndConfiguracionRepository usuaConfRepository;


  GetAsistencia(
      this.httprepository, this.cursoRepository, this.usuaConfRepository);

  @override
  Future<Stream<GetAsistenciaResponse>> buildUseCaseStream(GetAsistenciaParameters params) async{
    final controller = StreamController<GetAsistenciaResponse>();
    bool offlineServidor = false;
    bool errorServidor = false;

    try{
      String urlServidorLocal = await usuaConfRepository.getSessionUsuarioUrlServidor();
      Map<String, dynamic> datosEvaluaciones = await httprepository.getEvaluacionAlumno(urlServidorLocal, params.anioAcademicoId, params.programaId, params.calendarioPeridoId, params.alumnoId);
      errorServidor = datosEvaluaciones==null;
      if(!errorServidor){
        await cursoRepository.saveAsistencia(datosEvaluaciones, params.anioAcademicoId, params.programaId, params.calendarioPeridoId, params.alumnoId);
      }
    }catch(e){
      offlineServidor = true;
   }


    try {
      List<dynamic> lista = [];
      List<AsistenciaTipoUi> asistenciaTipoUiList = await cursoRepository.getAsistenciaTipo(params.anioAcademicoId, params.programaId, params.calendarioPeridoId, params.alumnoId);
      List<AsistenciaUi> asistenciaAlumnoList = await cursoRepository.getAsistenciaAlumno(params.anioAcademicoId, params.programaId, params.calendarioPeridoId, params.alumnoId);
      int porcentaje = 0;
      int cantidad = 0;
      for (AsistenciaTipoUi asistenciaTipoUi in asistenciaTipoUiList){
          porcentaje+=asistenciaTipoUi.porcentaje;
          cantidad += asistenciaTipoUi.cantidad;
      }
      porcentaje = porcentaje.round();
      cantidad = cantidad.round();

      for(AsistenciaUi rubroEvalItem in asistenciaAlumnoList){
        CursoUi cursoUi = rubroEvalItem.cursoUi;

        CursoUi search = lista.firstWhere((element)=> element is CursoUi? element.silaboEventoId==cursoUi.silaboEventoId :false, orElse: () => null);
        if(search == null){
          lista.add(cursoUi);
        }
        lista.add(rubroEvalItem);
      }
      controller.add(GetAsistenciaResponse(lista, asistenciaTipoUiList, porcentaje, cantidad, offlineServidor, errorServidor));
      logger.finest('GetEvaluacion successful. size: '+lista.length.toString());
      controller.close();
    } catch (e) {
      logger.severe('GetEvaluacion unsuccessful: '+e.toString());
      // Trigger .onError
      controller.addError(e);

    }
    return controller.stream;
  }

}

class GetAsistenciaResponse{
  List<AsistenciaTipoUi> asistenciaTipoList;
  int porcentaje = 0;
  int cantidad = 0;
  List<dynamic> asistenciaAlumnoList;
  bool offlineServidor;
  bool errorServidor;
  GetAsistenciaResponse(this.asistenciaAlumnoList, this.asistenciaTipoList, this.porcentaje, this.cantidad, this.offlineServidor, this.errorServidor);
}

class GetAsistenciaParameters{
  final int anioAcademicoId;
  final int programaId;
  final int calendarioPeridoId;
  final int alumnoId;

  GetAsistenciaParameters(this.anioAcademicoId, this.programaId,
      this.calendarioPeridoId, this.alumnoId);
}