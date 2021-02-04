import 'dart:async';

import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/domain/entities/familia_ui.dart';
import 'package:padre_mentor/src/domain/entities/hijos_ui.dart';
import 'package:padre_mentor/src/domain/entities/usuario_ui.dart';
import 'package:padre_mentor/src/domain/repositories/check_conex_repository.dart';
import 'package:padre_mentor/src/domain/repositories/http_datos_repository.dart';
import 'package:padre_mentor/src/domain/repositories/usuario_configuarion_repository.dart';

class UpdateFamilia extends UseCase<UpdateFamiliaCaseResponse, UpdateFamiliaCaseParams>{
  HttpDatosRepository httpRepository;
  UsuarioAndConfiguracionRepository repository;
  CheckConexRepository checkConexRepository;

  UpdateFamilia(this.httpRepository, this.repository, this.checkConexRepository);

  @override
  Future<Stream<UpdateFamiliaCaseResponse>> buildUseCaseStream(UpdateFamiliaCaseParams params) async {
    final controller = StreamController<UpdateFamiliaCaseResponse>();

    try {
      bool hayconexion = await checkConexRepository.hayConexcion();
      if(hayconexion){
        int usuarioId = await repository.getSessionUsuarioId();
        String urlServidorLocal = await repository.getSessionUsuarioUrlServidor();

        List<dynamic> jsonPersonas =  repository.getJsonUpdatePersonas(params.usuarioUi, params.hijosUiList, params.familiaUiList);
        if(jsonPersonas!=null&&jsonPersonas.isNotEmpty){
          List<dynamic> jsonPersonasUpdate = await httpRepository.updateFamilia(urlServidorLocal, usuarioId, jsonPersonas);
          await repository.updatePersona(jsonPersonasUpdate);
        }

        logger.finest('UpdateFamilia successful.');
      }
      controller.add(UpdateFamiliaCaseResponse(hayconexion));
      controller.close();
    } catch (e) {
      logger.severe('UpdateFamilia unsuccessful: ' + e.toString());
      // Trigger .onError
      controller.addError(e);
    }
    return controller.stream;
  }

}

class UpdateFamiliaCaseResponse {
    bool hayconexion;

    UpdateFamiliaCaseResponse(this.hayconexion);
}

class UpdateFamiliaCaseParams {
  UsuarioUi usuarioUi;
  List<HijosUi> hijosUiList;
  List<FamiliaUi> familiaUiList;

  UpdateFamiliaCaseParams(this.usuarioUi, this.hijosUiList, this.familiaUiList);


}