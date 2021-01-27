import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/app/page/eventos_agenda/evento_agenda_presenter.dart';
import 'package:padre_mentor/src/domain/entities/evento_ui.dart';
import 'package:padre_mentor/src/domain/entities/hijos_ui.dart';
import 'package:padre_mentor/src/domain/entities/tipo_evento_ui.dart';
import 'package:padre_mentor/src/domain/entities/usuario_ui.dart';

class EventoAgendaController extends Controller{
  UsuarioUi _usuarioUi;
  List<TipoEventoUi> _tipoEventoList = [];

  String _sinConexion = null;
  String get sinConexion => _sinConexion;
  List<TipoEventoUi> get tipoEventoList => _tipoEventoList;
  TipoEventoUi _selectedTipoEventoUi;
  TipoEventoUi get selectedTipoEventoUi => _selectedTipoEventoUi;
  List<EventoUi> _eventoUilIst = [];
  List<EventoUi> get eventoUiList => _eventoUilIst;
  bool _isLoading = false;
  get isLoading => _isLoading;

  HijosUi get hijoSelected => _hijoSelected;
  HijosUi _hijoSelected = null;
  EventoAgendaPresenter presenter;

  EventoAgendaController(checkConext, usuarioRepo, httpRepo):this.presenter = new EventoAgendaPresenter(checkConext, usuarioRepo, httpRepo);

  @override
  void initListeners() {
    presenter.getSesionUsuarioOnNext = (UsuarioUi usuarioUi) {
      _hijoSelected = usuarioUi.hijoSelected;
      refreshUI(); // Refreshes the UI manually
      _usuarioUi = usuarioUi;
      presenter.onChangeUsuario(usuarioUi, _selectedTipoEventoUi);
    };

    presenter.getSesionUsuarioOnComplete = () {
      print('User retrieved');
    };

    // On error, show a snackbar, remove the user, and refresh the UI
    presenter.getSesionUsuarioOnError = (e) {
      print('Could not retrieve user.');
      refreshUI(); // Refreshes the UI manually
    };

    presenter.getEventoAgendaOnComplete = () {
      if(_selectedTipoEventoUi==null){
        for(TipoEventoUi tipoEventoUi in tipoEventoList){
          if(tipoEventoUi.id == 0){
            tipoEventoUi.toogle = true;
            _selectedTipoEventoUi = tipoEventoUi;
          }
        }
      }else{
        for(TipoEventoUi tipoEventoUi in tipoEventoList){
          if(_selectedTipoEventoUi.id == tipoEventoUi.id){
            tipoEventoUi.toogle = true;
            _selectedTipoEventoUi = tipoEventoUi;
          }
        }
      }
      hideProgress();
      refreshUI();
    };
    presenter.getEventoAgendaOnError = (e) {
      print('evento error');
      _eventoUilIst = [];
      hideProgress();
      _sinConexion = "!Oops! Al parecer ocurrió un error involuntario.";
      refreshUI();
    };
    presenter.getEventoAgendaOnNext = (List<TipoEventoUi> tipoEvantoList, List<EventoUi> eventoList, bool sinConexion, bool datosOffline) {
      print('evento next');
      if(datosOffline){
        _tipoEventoList = tipoEvantoList;
        refreshUI();
      }else{
        _tipoEventoList = tipoEvantoList;
        _eventoUilIst = eventoList;
        _sinConexion = sinConexion?"No hay Conexión a Internet...":null;
      }
    };
  }

  @override
  void onInitState() {
    showProgress();
    presenter.onInitState();
  }

  void onSelectedTipoEvento(TipoEventoUi tipoEvento) {
    showProgress();
    _selectedTipoEventoUi = tipoEvento;
    for(var item in _tipoEventoList)item.toogle = false;
    tipoEvento.toogle = true;
    presenter.onChangeUsuario(_usuarioUi, selectedTipoEventoUi);
    refreshUI();
  }

  void showProgress(){
    _isLoading = true;
  }

  void hideProgress(){
    _isLoading = false;
  }

  void onChagenHijo() {
    showProgress();
    if(_usuarioUi.hijos!=null&&_usuarioUi.hijoSelected!=null){
        int position = _usuarioUi.hijos.indexWhere((element) => element.personaId == _hijoSelected.personaId);
        if(position == _usuarioUi.hijos.length-1){
          _hijoSelected =_usuarioUi.hijos[0];
        }else{
          _hijoSelected =_usuarioUi.hijos[position+1];
        }
    }
    presenter.onChagenHijo(_hijoSelected);
    presenter.onChangeUsuario(_usuarioUi, selectedTipoEventoUi);
    refreshUI();
  }

}