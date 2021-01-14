import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/app/page/boleta_notas/boleta_notas_presenter.dart';
import 'package:padre_mentor/src/domain/entities/calendario_periodio_ui.dart';
import 'package:padre_mentor/src/domain/entities/curso_boleta_ui.dart';

class BoletaNotaController extends Controller{

  List<CalendarioPeriodoUI> _calendarioPeriodoList = [];
  List<CalendarioPeriodoUI> get calendarioPeriodoList => _calendarioPeriodoList;
  CalendarioPeriodoUI _calendarioPeriodoUI = null;
  CalendarioPeriodoUI get calendarioPeriodoUI => _calendarioPeriodoUI;
  List<CursoBoletaUi> _cursoBoletaUiList = [];
  List<CursoBoletaUi> get cursoBoletaUiList => _cursoBoletaUiList;

  BoletaNotasPresenter presenter;
  BoletaNotaController(alumnoId, programaAcademicoId, anioAcademicoId, cursoRepo, httpRepo):presenter = BoletaNotasPresenter(alumnoId, programaAcademicoId, anioAcademicoId, cursoRepo, httpRepo), super();

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

      };
      presenter.getBoletaNotaOnNext = (List<CursoBoletaUi> items){
        _cursoBoletaUiList = items;

        refreshUI();
      };
      presenter.getBoletaNotaOnError = (e){
        _cursoBoletaUiList = [];
        refreshUI();
      };
      presenter.getBoletaNotaOnComplete = (){

      };

  }

  @override
  void onInitState() {
    super.onInitState();
    presenter.getCalendarioPerido();
    presenter.getBoletaNota(calendarioPeriodoUI);
  }

  void onSelectedCalendarioPeriodo(CalendarioPeriodoUI calendarioPeriodoUi) {
      this._calendarioPeriodoUI = calendarioPeriodoUi;
      for(var item in  _calendarioPeriodoList){
        item.selected = false;
      }
      calendarioPeriodoUI.selected = true;
      refreshUI();
  }

}

