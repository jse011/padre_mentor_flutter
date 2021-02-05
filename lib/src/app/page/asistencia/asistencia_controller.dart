import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/app/page/asistencia/asistencia_presenter.dart';
import 'package:padre_mentor/src/domain/entities/asistencia_tipo_ui.dart';
import 'package:padre_mentor/src/domain/entities/calendario_periodio_ui.dart';

class AsistenciaController extends Controller{
  AsistenciaPresenter presenter;
  final int alumnoId;
  final int programaAcademicoId;
  final int anioAcademicoId;
  final String fotoAlumno;
  List<CalendarioPeriodoUI> _calendarioPeriodoList = [];
  List<CalendarioPeriodoUI> get calendarioPeriodoList => _calendarioPeriodoList;
  List<AsistenciaTipoUi> _asistenciaTipoList = [];
  List<AsistenciaTipoUi> get asistenciaTipoList => _asistenciaTipoList;
  CalendarioPeriodoUI _calendarioPeriodoUI = null;
  CalendarioPeriodoUI get calendarioPeriodoUI => _calendarioPeriodoUI;
  List<dynamic> _asistenciaAlumnoList = [];
  List<dynamic> get aistenicaAlumnoList => _asistenciaAlumnoList;
  bool _isLoading = false;
  get isLoading => _isLoading;
  String _msgConexion = null;
  String get msgConexion => _msgConexion;
  int _porcentaje = 0;
  int get porcentaje => _porcentaje;
  int _cantidad = 0;
  int get cantidad => _cantidad;

  AsistenciaController(this.alumnoId, this.programaAcademicoId, this.anioAcademicoId, this.fotoAlumno, usuarioConfigRepo, cursoRepo, httpDatosRepo): presenter = AsistenciaPresenter(alumnoId, programaAcademicoId, anioAcademicoId, fotoAlumno, cursoRepo, httpDatosRepo, usuarioConfigRepo), super();

  @override
  void initListeners() {
    presenter.getCalendarioPeridoOnNext = (List<CalendarioPeriodoUI> items, CalendarioPeriodoUI calendarioPeriodoUI){
      _calendarioPeriodoList = items;
      _calendarioPeriodoUI = calendarioPeriodoUI;
      refreshUI();
    };
    presenter.getCalendarioPeridoOnError = (e){
      _calendarioPeriodoList = [];
      refreshUI();
    };
    presenter.getCalendarioPeridoOnComplete = (){
      presenter.getEvaluacion(_calendarioPeriodoUI);
    };

    presenter.getAsistenciaOnError = (e){
      _asistenciaAlumnoList = [];
      _asistenciaTipoList = [];
      _porcentaje = 0;
      _cantidad = 0;
          hideProgress();
      refreshUI();
    };

    presenter.getAsistenciaOnNext = (List<dynamic> items,  List<AsistenciaTipoUi> asistenciaTipoList, int porcentaje, int cantidad, bool errorServidor, bool offlineServidor){
      _asistenciaAlumnoList = items;
      _asistenciaTipoList = asistenciaTipoList;
      _porcentaje = porcentaje;
      _cantidad = cantidad;
      _msgConexion = errorServidor? "!Oops! Al parecer ocurrió un error involuntario.":null;
      _msgConexion = offlineServidor? "No hay Conexión a Internet...":null;
      hideProgress();
      refreshUI();
    };

    presenter.getAsistenciaOnComplete = (){

    };
  }

  @override
  void onInitState() {
    super.onInitState();
    showProgress();
    presenter.getCalendarioPerido();
  }

  void onSelectedCalendarioPeriodo(CalendarioPeriodoUI calendarioPeriodoUi) {
    this._calendarioPeriodoUI = calendarioPeriodoUi;
    for(var item in  _calendarioPeriodoList){
      item.selected = false;
    }
    calendarioPeriodoUI.selected = true;
    showProgress();
    presenter.getEvaluacion(calendarioPeriodoUi);
    refreshUI();
  }

  void showProgress(){
    _isLoading = true;
  }

  void hideProgress(){
    _isLoading = false;
  }

  void successMsg() {
    _msgConexion = null;
  }

}