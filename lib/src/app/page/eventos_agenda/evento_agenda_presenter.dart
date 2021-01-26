import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/domain/entities/tipo_evento_ui.dart';
import 'package:padre_mentor/src/domain/entities/usuario_ui.dart';
import 'package:padre_mentor/src/domain/usecases/get_evento_agenda.dart';
import 'package:padre_mentor/src/domain/usecases/get_usuario_usecase.dart';

class EventoAgendaPresenter extends Presenter{

  GetSessionUsuarioCase getSessionUsuarioCase;
  Function getSesionUsuarioOnNext, getSesionUsuarioOnComplete, getSesionUsuarioOnError;

  GetEventoAgenda _getEventoAgenda;
  Function getEventoAgendaOnNext, getEventoAgendaOnComplete, getEventoAgendaOnError;

  EventoAgendaPresenter(usuarioRepo, httpRepo): this._getEventoAgenda = GetEventoAgenda(usuarioRepo, httpRepo), this.getSessionUsuarioCase = GetSessionUsuarioCase(usuarioRepo);

  void getEventoAgenda(int usuarioId, int tipoEventoId, List<int> hijoIdList){
    _getEventoAgenda.execute(_GetEventoAgendaCase(this), GetEventoAgendaParams(usuarioId, tipoEventoId, hijoIdList));
  }

  void getDatosGenerales(){
    getSessionUsuarioCase.execute(_GetSessionUsuarioCase(this), GetSessionUsuarioCaseParams());
  }

  void onInitState() {
    getDatosGenerales();
  }

  @override
  void dispose() {
    _getEventoAgenda.dispose();
    getSessionUsuarioCase.dispose();
  }

  void onChangeUsuario(UsuarioUi usuarioUi, TipoEventoUi selectedTipoEventoUi) {
    if(usuarioUi==null)return;
    List<int> hijosIdList = [];
    for(var hijo in usuarioUi.hijos){
      hijosIdList.add(hijo.personaId);
    }
    getEventoAgenda(usuarioUi.id, selectedTipoEventoUi!=null?selectedTipoEventoUi.id:0, hijosIdList);
  }

}

class _GetEventoAgendaCase extends Observer<GetEvaluacionCaseResponse>{
  final EventoAgendaPresenter presenter;

  _GetEventoAgendaCase(this.presenter);

  @override
  void onComplete() {
    assert(presenter.getEventoAgendaOnComplete != null);
    presenter.getEventoAgendaOnComplete();
  }

  @override
  void onError(e) {
    assert(presenter.getEventoAgendaOnError != null);
    presenter.getEventoAgendaOnError(e);
  }

  @override
  void onNext(GetEvaluacionCaseResponse response) {
    assert(presenter.getEventoAgendaOnNext != null);
    presenter.getEventoAgendaOnNext(response.tipoEventoUiList, response.eventoUiList);
  }

}

class _GetSessionUsuarioCase extends Observer<GetSessionUsuarioCaseResponse>{
  final EventoAgendaPresenter presenter;
  _GetSessionUsuarioCase(this.presenter);

  @override
  void onComplete() {
    assert(presenter.getSesionUsuarioOnComplete != null);
    print("_GetSessionUsuarioCase onComplete");
    presenter.getSesionUsuarioOnComplete();
  }

  @override
  void onError(e) {
    assert(presenter.getSesionUsuarioOnError != null);
    print("_GetSessionUsuarioCase onError");
    presenter.getSesionUsuarioOnError(e);
  }

  @override
  void onNext(GetSessionUsuarioCaseResponse response) {
    assert(presenter.getSesionUsuarioOnNext != null);
    print("_GetSessionUsuarioCase onNext");
    presenter.getSesionUsuarioOnNext(response.usurio);
  }

}