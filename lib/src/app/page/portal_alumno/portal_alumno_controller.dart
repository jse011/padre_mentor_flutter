import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/app/page/portal_alumno/portal_alumno_presenter.dart';
import 'package:padre_mentor/src/domain/entities/hijos_ui.dart';
import 'package:padre_mentor/src/domain/entities/programa_educativo_ui.dart';
import 'package:padre_mentor/src/domain/entities/usuario_ui.dart';

class PortalAlumnoController extends Controller{
  static const String TAG = "PortalAlumnoController";
  HijosUi _hijoSelected;
  HijosUi get hijoSelected => _hijoSelected;
  List<HijosUi> _hijoList = [];
  List<ProgramaEducativoUi> _programaEducativoList = [];
  List<ProgramaEducativoUi> get programaEducativoList => _programaEducativoList;
  ProgramaEducativoUi _programaEducativoSelected;
  ProgramaEducativoUi get programaEducativoSelected => _programaEducativoSelected;
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

      _hijoList = user.hijos;
      _programaEducativoList = user.programaEducativoUiList;

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

  void onSelectedProgramaSelected(ProgramaEducativoUi programaEducativo) {
    _programaEducativoSelected = programaEducativo;
    for(var hijo in _hijoList){
        if(hijo.personaId == _programaEducativoSelected.hijoId){
          _hijoSelected = hijo;
          print(TAG+" _hijoSelected "+_hijoSelected.nombre);
        }
    }
    refreshUI();
  }

}