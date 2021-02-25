import 'dart:async';

import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/domain/repositories/usuario_configuarion_repository.dart';

import 'get_usuario_usecase.dart';

class UpdateSession extends UseCase<UpdateSessionResponse, UpdateSessionParams>{

  UsuarioAndConfiguracionRepository repository;

  UpdateSession(this.repository);

  @override
  Future<Stream<UpdateSessionResponse>> buildUseCaseStream(UpdateSessionParams params) async {
    final controller = StreamController<UpdateSessionResponse>();

    try {
      // get user
     if(params.hijoSelectedId!=null){
       await repository.updateSessionHijoSelected(params.hijoSelectedId);
     }
     if(params.hijoSelectedId!=null&&params.programaAcademicoId!=null){
       await repository.updateSessionProgramaEduSelected(params.programaAcademicoId, params.hijoSelectedId, params.anioAcademicoId);
     }
      // Adding it triggers the .onNext() in the `Observer`
      // It is usually better to wrap the reponse inside a respose object.
      controller.add(UpdateSessionResponse());
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

class UpdateSessionResponse {

}

class UpdateSessionParams {
  int hijoSelectedId;
  int programaAcademicoId;
  int anioAcademicoId;

  UpdateSessionParams({this.hijoSelectedId, this.programaAcademicoId, this.anioAcademicoId});
}