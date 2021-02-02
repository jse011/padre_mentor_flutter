import 'dart:async';

import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/domain/entities/familia_ui.dart';
import 'package:padre_mentor/src/domain/entities/hijos_ui.dart';
import 'package:padre_mentor/src/domain/entities/usuario_ui.dart';
import 'package:padre_mentor/src/domain/repositories/http_datos_repository.dart';
import 'package:padre_mentor/src/domain/repositories/usuario_configuarion_repository.dart';

class UpdateFamilia extends UseCase<UpdateFamiliaCaseResponse, UpdateFamiliaCaseParams>{
  HttpDatosRepository httpRepository;
  UsuarioAndConfiguracionRepository repository;


  UpdateFamilia(this.httpRepository, this.repository);

  @override
  Future<Stream<UpdateFamiliaCaseResponse>> buildUseCaseStream(UpdateFamiliaCaseParams params) async {
    final controller = StreamController<UpdateFamiliaCaseResponse>();

    try {
      int usuarioId = await repository.getSessionUsuarioId();
      String urlServidorLocal = await repository.getSessionUsuarioUrlServidor();
      List<dynamic> jsonPersonas =  repository.getJsonUpdatePersonas(params.usuarioUi, params.hijosUiList, params.familiaUiList);
      List<dynamic> jsonPersonasUpdate = await httpRepository.updateFamilia(urlServidorLocal, usuarioId, jsonPersonas);
      controller.add(UpdateFamiliaCaseResponse());
      logger.finest('GetUserUseCase successful.');
      controller.close();
    } catch (e) {
      logger.severe('GetUserUseCase unsuccessful: ' + e.toString());
      // Trigger .onError
      controller.addError(e);
    }
    return controller.stream;
  }

}

class UpdateFamiliaCaseResponse {

}

class UpdateFamiliaCaseParams {
  UsuarioUi usuarioUi;
  List<HijosUi> hijosUiList;
  List<FamiliaUi> familiaUiList;

  UpdateFamiliaCaseParams(this.usuarioUi, this.hijosUiList, this.familiaUiList);


}