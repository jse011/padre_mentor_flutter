import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/app/page/login/login_presenter.dart';
import 'package:padre_mentor/src/domain/entities/login_ui.dart';

class LoginController extends Controller{
  bool _ocultarContrasenia = true;
  String _mensaje = null;
  String _usuario = "";
  String get usuario => _usuario;
  String _password = "";
  String get password => _password;
  String _dni = "";
  String get dni => _dni;
  String _correo = "";
  String get correo => _correo;


  String get mensaje => _mensaje;
  bool _dismis = false;
  bool get dismis => _dismis;
  bool _progress = false;
  bool get progress => _progress;
  LoginUi _loginUi = null;
  bool get ocultarContrasenia => _ocultarContrasenia;

  bool _progressData = false;
  bool get progressData => _progressData;

  LoginPresenter presenter;
  LoginTypeView _typeView = LoginTypeView.USUARIO;
  LoginTypeView get typeView => _typeView;
  LoginController(HttpRepo, UsuarioConfRepo):this.presenter = LoginPresenter(HttpRepo, UsuarioConfRepo);

  @override
  void initListeners() {
    presenter.loginOnNext = (LoginUi loginUi, bool errorServidor){
      _loginUi = loginUi;
      print("LoginController: "+_loginUi.toString());
      print("saveDatosServidor _loginUi: "+_loginUi.toString());
      _mensaje = null;
      if(errorServidor){
        _mensaje = "!Oops! Al parecer ocurrió un error involuntario.";
      }else{
        if(_loginUi == LoginUi.INVALIDO){
          if(typeView == LoginTypeView.USUARIO){
            _mensaje = "Credenciales incorrectos";
          }else if(typeView == LoginTypeView.CORREO){
            _mensaje = "Ingresar su correo electrónico";
          }else{
            _mensaje = "Correo electrónico incorrecto";
          }

        }else if(_loginUi == LoginUi.DUPLICADO){
          if(typeView == LoginTypeView.USUARIO){
            _typeView = LoginTypeView.CORREO;
          }else if(typeView == LoginTypeView.CORREO){
            _typeView = LoginTypeView.DNI;
          }
        }else if(_loginUi == LoginUi.SUCCESS){
          //_dismis = true;
         _progressData = true;
        }
      }
      _progress = false;
      refreshUI();
    };

    presenter.loginOnComplete = (){


    };

    presenter.loginOnError = (e){
      _loginUi = null;
      _progress = false;
      _mensaje = "No hay Conexión a Internet...";
      refreshUI();
    };
  }

  void onClikMostarContrasenia() {
    _ocultarContrasenia = !_ocultarContrasenia;
    refreshUI();
  }

  void onClikAtrasLogin() {
    if(typeView == LoginTypeView.DNI){
      _typeView = LoginTypeView.USUARIO;
    }else if(typeView == LoginTypeView.CORREO){
      _typeView = LoginTypeView.DNI;
    }else{
      _typeView = LoginTypeView.USUARIO;
    }
    refreshUI();
  }

  void onClickInciarSesion() {
    _progress = true;
    refreshUI();
    presenter.login(_usuario, _password, _dni, _correo);

  }

  void onChangeUsuario(String str) {
    _usuario = str;
  }

  void onChangeContrasenia(String str) {
    _password = str;
  }

  void onChangeDni(String str) {
    _dni = str;
  }

  void onChangeCorreo(String str) {
    _correo = str;
  }

  void successMsg() {
    _mensaje = null;
  }

}

enum LoginTypeView{
  USUARIO,
  DNI,
  CORREO,
}