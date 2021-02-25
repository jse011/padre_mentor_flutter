import 'dart:async';
import 'dart:collection';

import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/domain/entities/curso_evaluacion_ui.dart';
import 'package:padre_mentor/src/domain/entities/curso_ui.dart';
import 'package:padre_mentor/src/domain/entities/rubro_evaluacion_ui.dart';
import 'package:padre_mentor/src/domain/repositories/curso_repository.dart';
import 'package:padre_mentor/src/domain/repositories/http_datos_repository.dart';
import 'package:padre_mentor/src/domain/repositories/usuario_configuarion_repository.dart';

import 'get_boleta_nota.dart';

class GetEvaluacion extends UseCase<GetEvaluacionCaseResponse, GetEvaluacionCaseParams>{

  final HttpDatosRepository httprepository;
  final CursoRepository repository;
  final UsuarioAndConfiguracionRepository usuaConfRepository;

  GetEvaluacion(this.httprepository, this.repository, this.usuaConfRepository);

  @override
  Future<Stream<GetEvaluacionCaseResponse>> buildUseCaseStream(GetEvaluacionCaseParams params) async{
    final controller = StreamController<GetEvaluacionCaseResponse>();
    bool offlineServidor = false;
    bool errorServidor = false;
    try{
      String urlServidorLocal = await usuaConfRepository.getSessionUsuarioUrlServidor();
      Map<String, dynamic> datosEvaluaciones = await httprepository.getEvaluacionesPorCurso(urlServidorLocal, params.anioAcademicoId, params.programaId, params.calendarioPeridoId, params.alumnoId);
      errorServidor = datosEvaluaciones==null;
      if(!errorServidor){
        await repository.saveEvaluaciones(datosEvaluaciones, params.anioAcademicoId, params.programaId, params.calendarioPeridoId, params.alumnoId);
      }
    }catch(e){
      offlineServidor = true;
    }
    try {
      List<dynamic> lista = [];
      List<RubroEvaluacionUi> rubroEvaluacionList = await repository.getEvaluacionesPorCurso(params.anioAcademicoId, params.programaId, params.calendarioPeridoId, params.alumnoId);

      for(RubroEvaluacionUi rubroEvalItem in rubroEvaluacionList){
        CursoUi cursoUi = rubroEvalItem.cursoUi;

        CursoEvaluacionUi search = lista.firstWhere((element)=> element is CursoEvaluacionUi? element.cursoUi.silaboEventoId==cursoUi.silaboEventoId :false, orElse: () => null);
        if(search == null){
          search = CursoEvaluacionUi(cursoUi: cursoUi, evaluacionUiList: []);
          lista.add(search);
        }else{
          search.evaluacionUiList.add(rubroEvalItem);
        }
        lista.add(rubroEvalItem);
      }
      controller.add(GetEvaluacionCaseResponse(lista, offlineServidor, errorServidor));
    logger.finest('GetEvaluacion successful.');
    controller.close();
    } catch (e) {
    logger.severe('GetEvaluacion unsuccessful: '+e.toString());
    // Trigger .onError
    controller.addError(e);

    }
    return controller.stream;
  }

}
/// Wrapping params inside an object makes it easier to change later
class GetEvaluacionCaseParams {
  final int anioAcademicoId;
  final int programaId;
  final int calendarioPeridoId;
  final int alumnoId;

  GetEvaluacionCaseParams(this.anioAcademicoId, this.programaId,
      this.calendarioPeridoId, this.alumnoId);
}

/// Wrapping response inside an object makes it easier to change later
class GetEvaluacionCaseResponse {

    List<dynamic> rubroEvaluacionList;
    bool offlineServidor;
    bool errorServidor;

    GetEvaluacionCaseResponse(
      this.rubroEvaluacionList, this.offlineServidor, this.errorServidor);
}