import 'dart:async';

import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/domain/entities/contrato_ui_ui.dart';
import 'package:padre_mentor/src/domain/entities/curso_boleta_ui.dart';
import 'package:padre_mentor/src/domain/repositories/curso_repository.dart';
import 'package:padre_mentor/src/domain/repositories/http_datos_repository.dart';

class GetBoletaNota extends UseCase<GetBoletaNotaResponse, GetBoletaNotaParams>{
  final HttpDatosRepository httprepository;
  final CursoRepository repository;


  GetBoletaNota(this.httprepository, this.repository);

  @override
  Future<Stream<GetBoletaNotaResponse>> buildUseCaseStream(GetBoletaNotaParams params)async {
    final controller = StreamController<GetBoletaNotaResponse>();
    logger.finest('Hola Jse');
    try {
      ContratoUi contratoUi = await repository.getContratoUi(params.anioAcademicoId, params.alumnoId);

      Map<String, dynamic> datosBoleta = await httprepository.getBoletasNotas(params.anioAcademicoId, params.programaId, contratoUi.periodoId, contratoUi.seccionId, params.calendarioPeridoId, params.alumnoId, params.georeferenciaId);
      await repository.saveBoletaNotas(datosBoleta, params.anioAcademicoId, contratoUi.seccionId, contratoUi.periodoId, params.programaId);

    controller.add(GetBoletaNotaResponse(await repository.getBoletaNotas(params.alumnoId, params.anioAcademicoId, params.calendarioPeridoId, params.programaId, contratoUi.periodoId, contratoUi.seccionId)));
    logger.finest('SyncDatosInicioPadre successful.');
    controller.close();
    } catch (e) {
    logger.severe('SyncDatosInicioPadre unsuccessful: '+e.toString());
    // Trigger .onError
    controller.addError(e);

    }
    return controller.stream;
  }

}

class GetBoletaNotaParams {
  int anioAcademicoId;
  int programaId;
  int calendarioPeridoId;
  int alumnoId;
  int georeferenciaId;

  GetBoletaNotaParams({this.anioAcademicoId, this.programaId, this.calendarioPeridoId, this.alumnoId,
      this.georeferenciaId});
}

class GetBoletaNotaResponse{
  final List<CursoBoletaUi> cursoBoletaUiList;

  GetBoletaNotaResponse(this.cursoBoletaUiList){

  }
}