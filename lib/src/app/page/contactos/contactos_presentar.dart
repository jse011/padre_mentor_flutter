import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/domain/entities/usuario_ui.dart';
import 'package:padre_mentor/src/domain/usecases/get_contactos.dart';
import 'package:padre_mentor/src/domain/usecases/get_usuario_usecase.dart';

class ContactosPresenter extends Presenter{
  GetContactos _getContactos;
  Function getContactosOnNext, getContactosOnComplete, getContactosOnError;
  GetSessionUsuarioCase getSessionUsuarioCase;
  Function getSesionUsuarioOnNext, getSesionUsuarioOnComplete, getSesionUsuarioOnError;

  ContactosPresenter(httpRepo, cursoRepo, usuarioConfRepo):_getContactos = GetContactos(cursoRepo, httpRepo), getSessionUsuarioCase = GetSessionUsuarioCase(usuarioConfRepo);

  void onInitState() {
    getDatosGenerales();
  }

  @override
  void dispose() {
    _getContactos.dispose();
    getSessionUsuarioCase.dispose();
  }

  void getDatosGenerales(){
    getSessionUsuarioCase.execute(_GetSessionUsuarioCase(this), GetSessionUsuarioCaseParams());
  }

  void getContactos(UsuarioUi usuarioUi){
    if(usuarioUi!=null&&usuarioUi.hijos!=null){
      List<int> hijosIdList = [];
      for(var hijo in usuarioUi.hijos){
        hijosIdList.add(hijo.personaId);
      }
      _getContactos.execute(_GetContactosCase(this), GetContactosCaseParams(usuarioUi.id, hijosIdList));
    }
  }

}

class _GetContactosCase extends Observer<GetContactosCaseResponse>{
  final ContactosPresenter presenter;
  _GetContactosCase(this.presenter);

  @override
  void onComplete() {
    assert(presenter.getContactosOnComplete != null);
    presenter.getContactosOnComplete();
  }

  @override
  void onError(e) {
    assert(presenter.getContactosOnError != null);

    presenter.getContactosOnError(e);
  }

  @override
  void onNext(GetContactosCaseResponse response) {
    assert(presenter.getContactosOnNext != null);
    presenter.getContactosOnNext(response.alumnosList, response.docentesList, response.directivosList);
  }

}

class _GetSessionUsuarioCase extends Observer<GetSessionUsuarioCaseResponse>{
  final ContactosPresenter presenter;
  _GetSessionUsuarioCase(this.presenter);

  @override
  void onComplete() {
    assert(presenter.getSesionUsuarioOnComplete != null);
    print("_GetSessionUsuarioCase onComplete");
    presenter.getSesionUsuarioOnComplete();
  }

  @override
  void onError(e) {
    assert(presenter.getSesionUsuarioOnError != null);
    print("_GetSessionUsuarioCase onError");
    presenter.getSesionUsuarioOnError(e);
  }

  @override
  void onNext(GetSessionUsuarioCaseResponse response) {
    assert(presenter.getSesionUsuarioOnNext != null);
    print("_GetSessionUsuarioCase onNext");
    presenter.getSesionUsuarioOnNext(response.usurio);
  }

}