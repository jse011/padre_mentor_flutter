import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/app/page/portal_alumno/portal_alumno_presenter.dart';
import 'package:padre_mentor/src/domain/entities/evento_ui.dart';
import 'package:padre_mentor/src/domain/entities/hijos_ui.dart';
import 'package:padre_mentor/src/domain/entities/programa_educativo_ui.dart';
import 'package:padre_mentor/src/domain/entities/usuario_ui.dart';

class PortalAlumnoController extends Controller{
  static const String TAG = "PortalAlumnoController";
  HijosUi _hijoSelected;

  var _selectedTipoEventoUi;
  String _sinConexion = null;
  String get sinConexion => _sinConexion;
  List<EventoUi> _eventoUilIst = [];
  List<EventoUi> get eventoUiList => _eventoUilIst;
  bool _isLoading = false;
  get isLoading => _isLoading;

  HijosUi get hijoSelected => _hijoSelected;
  List<HijosUi> _hijoList = [];
  List<ProgramaEducativoUi> _programaEducativoList = [];
  List<ProgramaEducativoUi> get programaEducativoList => _programaEducativoList;
  ProgramaEducativoUi _programaEducativoSelected;
  ProgramaEducativoUi get programaEducativoSelected => _programaEducativoSelected;
  PortalAlumnoPresenter presenter;

  PortalAlumnoController(checkConexRepo, httpRepository, usuarioConfiRepo):this.presenter = PortalAlumnoPresenter(checkConexRepo, httpRepository, usuarioConfiRepo)
  ,super();

  @override
  void initListeners() {
    presenter.getSesionUsuarioOnNext = (UsuarioUi user) {

      _programaEducativoList = user.programaEducativoUiList;
     _programaEducativoSelected = user.programaEducativoUiSelected;
     _hijoSelected = user.hijoSelected;
      print('User retrieved : ' + _hijoSelected.nombre);
      _hijoList = user.hijos;
      //SelectedPageProgramaEducativo();
      refreshUI(); // Refreshes the UI manually
      presenter.onChangeUsuario(user, _selectedTipoEventoUi);
    };

    presenter.getSesionUsuarioOnComplete = () {
      print('User retrieved');
    };

    // On error, show a snackbar, remove the user, and refresh the UI
    presenter.getSesionUsuarioOnError = (e) {
      print('Could not retrieve user.');
      refreshUI(); // Refreshes the UI manually
    };

    presenter.getEventoActualesOnComplete = () {
      refreshUI();
    };
    presenter.getEventoActualesOnError = (e) {
      print('evento error');
      _eventoUilIst = [];
      hideProgress();
      _sinConexion = "!Oops! Al parecer ocurrió un error involuntario.";
      refreshUI();
    };
    presenter.getEventoActualesOnNext = (List<EventoUi> eventoList, bool sinConexion) {
      print('evento next');
      _eventoUilIst = eventoList;
      _sinConexion = sinConexion?"No hay Conexión a Internet...":null;
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
        }
    }
    presenter.onSaveProgramaUsuario(_programaEducativoSelected);
    refreshUI();
  }
  void showProgress(){
    _isLoading = true;
  }

  void hideProgress(){
    _isLoading = false;
  }
}