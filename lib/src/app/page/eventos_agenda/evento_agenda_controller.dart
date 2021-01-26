import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/app/page/eventos_agenda/evento_agenda_presenter.dart';
import 'package:padre_mentor/src/domain/entities/evento_ui.dart';
import 'package:padre_mentor/src/domain/entities/hijos_ui.dart';
import 'package:padre_mentor/src/domain/entities/tipo_evento_ui.dart';
import 'package:padre_mentor/src/domain/entities/usuario_ui.dart';

class EventoAgendaController extends Controller{
  List<TipoEventoUi> _tipoEventoList = [];
  List<TipoEventoUi> get tipoEventoList => _tipoEventoList;

  HijosUi hijoSelected =  HijosUi(foto: "https://i.ytimg.com/vi/f6n0aIvRxc0/hqdefault.jpg");
  EventoAgendaPresenter presenter;

  EventoAgendaController(usuarioRepo, httpRepo):this.presenter = new EventoAgendaPresenter(usuarioRepo, httpRepo);

  @override
  void initListeners() {
    presenter.getSesionUsuarioOnNext = (UsuarioUi user) {
      /*
      _programaEducativoList = user.programaEducativoUiList;
      if(!programaEducativoList.isEmpty){
        _programaEducativoSelected = programaEducativoList.first;
      }

      if(!user.hijos.isEmpty){
        if(_programaEducativoSelected != null){
          for(var item in user.hijos){
            if(item.personaId == _programaEducativoSelected.hijoId){
              _hijoSelected = item;
            }
          }
        }
        if(_hijoSelected==null) _hijoSelected = user.hijos.first;
      }

      _hijoList = user.hijos;*/

      //refreshUI(); // Refreshes the UI manually
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
      print('evento complete');
    };
    presenter.getEventoAgendaOnError = (e) {
      print('evento error');
    };
    presenter.getEventoAgendaOnNext = (List<TipoEventoUi> tipoEvantoList, List<EventoUi> eventoList) {
      print('evento next');
      _tipoEventoList = tipoEvantoList;
    };
  }

  @override
  void onInitState() {
    presenter.onInitState();
  }

}