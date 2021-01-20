import 'dart:async';
import 'dart:collection';

import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/domain/entities/curso_ui.dart';
import 'package:padre_mentor/src/domain/entities/rubro_evaluacion_ui.dart';
import 'package:padre_mentor/src/domain/repositories/curso_repository.dart';
import 'package:padre_mentor/src/domain/repositories/http_datos_repository.dart';

import 'get_boleta_nota.dart';

class GetEvaluacion extends UseCase<GetEvaluacionCaseResponse, GetEvaluacionCaseParams>{

  final HttpDatosRepository httprepository;
  final CursoRepository repository;

  GetEvaluacion(this.httprepository, this.repository);

  @override
  Future<Stream<GetEvaluacionCaseResponse>> buildUseCaseStream(GetEvaluacionCaseParams params) async{
    final controller = StreamController<GetEvaluacionCaseResponse>();
    logger.finest('Hola Jse');
    try {

      Map<String, dynamic> datosEvaluaciones = await httprepository.getEvaluacionesPorCurso(params.anioAcademicoId, params.programaId, params.calendarioPeridoId, params.alumnoId);
      await repository.saveEvaluaciones(datosEvaluaciones);
      List<dynamic> lista = [];
      List<RubroEvaluacionUi> rubroEvaluacionList = await repository.getEvaluacionesPorCurso(params.anioAcademicoId, params.programaId, params.calendarioPeridoId, params.alumnoId);

      for(RubroEvaluacionUi rubroEvalItem in rubroEvaluacionList){
        CursoUi cursoUi = rubroEvalItem.cursoUi;

        CursoUi search = lista.firstWhere((element)=> element is CursoUi? element.silaboEventoId==cursoUi.silaboEventoId :false, orElse: () => null);
        if(search == null){
          lista.add(cursoUi);
        }
        lista.add(rubroEvalItem);
      }
      controller.add(GetEvaluacionCaseResponse(lista));
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

    GetEvaluacionCaseResponse(this.rubroEvaluacionList);
}