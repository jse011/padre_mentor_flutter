import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/app/page/portal_alumno/portal_alumno_presenter.dart';
import 'package:padre_mentor/src/domain/entities/hijos_ui.dart';
import 'package:padre_mentor/src/domain/entities/usuario_ui.dart';

class PortalAlumnoController extends Controller{
  HijosUi _hijoSelected;
  HijosUi get hijoSelected => _hijoSelected;
  PortalAlumnoPresenter presenter;

  PortalAlumnoController(usuarioConfiRepo):this.presenter = PortalAlumnoPresenter(usuarioConfiRepo)
  ,super();

  @override
  void initListeners() {
    presenter.getSesionUsuarioOnNext = (UsuarioUi user) {
      if(user.hijos.isEmpty){

      }else{
        _hijoSelected = user.hijos.first;
      }

      refreshUI(); // Refreshes the UI manually
    };

    presenter.getSesionUsuarioOnComplete = () {
      print('User retrieved');
    };

    // On error, show a snackbar, remove the user, and refresh the UI
    presenter.getSesionUsuarioOnError = (e) {
      print('Could not retrieve user.');
      refreshUI(); // Refreshes the UI manually
    };


  }

  @override
  void onInitState() {
    presenter.onInitState();
  }

}