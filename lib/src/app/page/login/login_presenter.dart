import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/domain/usecases/login.dart';

class LoginPresenter extends Presenter{

  Login _login;
  Function loginOnComplete, loginOnNext, loginOnError;
  LoginPresenter(HttpRepo, UsuarioConfRepo):this._login = Login(HttpRepo, UsuarioConfRepo);


  void login(String usuario, String contrasenia, String dni, String correo){
    _login.execute(_LoginUseCase(this), LoginParams(usuario: usuario, password: contrasenia, dni: dni, correo: correo));
  }

  @override
  void dispose() {
    _login.dispose();
  }

}

class _LoginUseCase extends Observer<LoginResponse>{
  final LoginPresenter presenter;

  _LoginUseCase(this.presenter);

  @override
  void onComplete() {
    assert(presenter.loginOnComplete != null);
    presenter.loginOnComplete();
  }

  @override
  void onError(e) {
    assert(presenter.loginOnError != null);
    presenter.loginOnError(e);
  }

  @override
  void onNext(LoginResponse response) {
    assert(presenter.loginOnNext != null);
    presenter.loginOnNext(response.loginUi, response.errorServidor);
  }

}