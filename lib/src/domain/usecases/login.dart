import 'dart:async';

import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/domain/entities/login_ui.dart';
import 'package:padre_mentor/src/domain/repositories/http_datos_repository.dart';
import 'package:padre_mentor/src/domain/repositories/usuario_configuarion_repository.dart';

class Login extends UseCase<LoginResponse,LoginParams>{
  final HttpDatosRepository repository;
  final UsuarioAndConfiguracionRepository datosrepository;

  Login(this.repository, this.datosrepository);

  @override
  Future<Stream<LoginResponse>> buildUseCaseStream(LoginParams params) async{
    final controller = StreamController<LoginResponse>();

    try {

      Map<String, dynamic> loginRest = null;
      if(params.usuario!=null&&params.usuario.isNotEmpty
          && params.password!=null&&params.password.isNotEmpty){
        loginRest = await this.repository.getUsuarioExterno(1, params.usuario, params.password, "", "");
      }else if(params.usuario!=null&&params.usuario.isNotEmpty
          && params.password!=null&&params.password.isNotEmpty
            && params.correo!=null&&params.correo.isNotEmpty){
        loginRest = await this.repository.getUsuarioExterno(2, params.usuario, params.password, params.correo, "");
      }else if(params.usuario!=null&&params.usuario.isNotEmpty
          && params.password!=null&&params.password.isNotEmpty
          && params.correo!=null&&params.correo.isNotEmpty
          && params.dni!=null&&params.dni.isNotEmpty){
        loginRest = await this.repository.getUsuarioExterno(3, params.usuario, params.password, params.correo, params.dni);
      }
      LoginUi loginUi = null;
          bool errorServidor = loginRest==null;
      if(!errorServidor){
        loginUi = await datosrepository.saveDatosServidor(loginRest);
      }



      controller.add(LoginResponse(errorServidor, loginUi));
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

class LoginResponse {
  bool errorServidor;
  LoginUi loginUi;

  LoginResponse(this.errorServidor, this.loginUi);
}

class LoginParams {
  final String usuario;
  final String password;
  final String correo;
  final String dni;

  LoginParams({this.usuario, this.password, this.correo, this.dni});


}