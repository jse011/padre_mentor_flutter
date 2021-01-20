import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/app/page/evaluacion/evaluacion_presenter.dart';
import 'package:padre_mentor/src/domain/entities/calendario_periodio_ui.dart';
import 'package:padre_mentor/src/domain/entities/rubro_evaluacion_ui.dart';

class EvaluacionController extends Controller{
  EvaluacionPresenter presenter;
  final int alumnoId;
  final int programaAcademicoId;
  final int anioAcademicoId;
  final String fotoAlumno;
  List<CalendarioPeriodoUI> _calendarioPeriodoList = [];
  List<CalendarioPeriodoUI> get calendarioPeriodoList => _calendarioPeriodoList;
  CalendarioPeriodoUI _calendarioPeriodoUI = null;
  CalendarioPeriodoUI get calendarioPeriodoUI => _calendarioPeriodoUI;
  List<dynamic> _rubroEvaluacionList = [];
  List<dynamic> get rubroEvaluacionList => _rubroEvaluacionList;
  bool _isLoading = false;
  get isLoading => _isLoading;

  EvaluacionController(this.alumnoId, this.programaAcademicoId, this.anioAcademicoId, this.fotoAlumno, cursoRepo, httpDatosRepo): presenter = EvaluacionPresenter(alumnoId, programaAcademicoId, anioAcademicoId, fotoAlumno,cursoRepo, httpDatosRepo), super();

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

    presenter.getEvaluacionOnError = (e){
      _rubroEvaluacionList = [];
      hideProgress();
      refreshUI();
    };

    presenter.getEvaluacionOnNext = (List<dynamic> items){
      _rubroEvaluacionList = items;
      print("getEvaluacionOnNext: "+items.length.toString());
    };

    presenter.getEvaluacionOnComplete = (){
      hideProgress();
      refreshUI();
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

}