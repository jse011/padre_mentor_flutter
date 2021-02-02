import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/domain/usecases/cerrar_cesion.dart';
import 'package:padre_mentor/src/domain/usecases/get_usuario_usecase.dart';
import 'package:padre_mentor/src/domain/usecases/sync_datos_inicio_padre.dart';
import 'package:padre_mentor/src/domain/usecases/validar_usuario.dart';

class HomePresenter extends Presenter{
  Function getUserOnNext;
  Function getUserOnComplete;
  Function getUserOnError;
  Function validarUsuarioOnError, validarUsuarioOnComplete;
  final GetSessionUsuarioCase getUsuarioUseCase;
  ValidarUsuario _validarUsuario;
  CerrarCesion _cerrarCesion;
  Function cerrarCesionOnError, cerrarCesionOnComplete;

  HomePresenter(usuarioConfigRepo, httpDatosRepo) : getUsuarioUseCase = GetSessionUsuarioCase(usuarioConfigRepo), _validarUsuario = ValidarUsuario(usuarioConfigRepo), _cerrarCesion = CerrarCesion(usuarioConfigRepo);

  @override
  void dispose() {
    getUsuarioUseCase.dispose();
    _cerrarCesion.dispose();
  }

  void cerrarCesion(){
    _cerrarCesion.execute(_CerrarSesionUseCase(this), CerrarCesionCaseParams());
  }

  void getUserSession() {
    print('getUserSession GO');

    // execute getUseruserCase
    getUsuarioUseCase.execute(
        _GetSessionUsuarioCase(this), GetSessionUsuarioCaseParams());
  }

  void validarUsuario(){
    _validarUsuario.execute(_ValidarUsuarioUseCase(this), ValidarUsuarioCaseParams());
  }
}

class _GetSessionUsuarioCase extends Observer<GetSessionUsuarioCaseResponse>{
  final HomePresenter presenter;

  _GetSessionUsuarioCase(this.presenter);

  @override
  void onComplete() {
    assert(presenter.getUserOnComplete != null);
    presenter.getUserOnComplete();
  }

  @override
  void onError(e) {
    assert(presenter.getUserOnError != null);
    presenter.getUserOnError(e);
  }

  @override
  void onNext(GetSessionUsuarioCaseResponse response) {
    assert(presenter.getUserOnNext != null);
    presenter.getUserOnNext(response.usurio);
  }

}

class _ValidarUsuarioUseCase extends Observer<ValidarUsuarioCaseResponse>{
  final HomePresenter presenter;

  _ValidarUsuarioUseCase(this.presenter);

  @override
  void onComplete() {
    assert(presenter.validarUsuarioOnComplete != null);
    presenter.validarUsuarioOnComplete();
  }

  @override
  void onError(e) {
    assert(presenter.validarUsuarioOnError != null);
    presenter.validarUsuarioOnError(e);
  }

  @override
  void onNext(ValidarUsuarioCaseResponse response) {

  }

}

class _CerrarSesionUseCase extends Observer<CerrarCesionCaseResponse>{
  final HomePresenter presenter;

  _CerrarSesionUseCase(this.presenter);

  @override
  void onComplete() {

  }

  @override
  void onError(e) {
    assert(presenter.cerrarCesionOnError != null);
    presenter.cerrarCesionOnError(e);
  }

  @override
  void onNext(CerrarCesionCaseResponse response) {
    assert(presenter.cerrarCesionOnComplete != null);
    presenter.cerrarCesionOnComplete(response.success);
  }

}