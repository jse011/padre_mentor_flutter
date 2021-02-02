import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/domain/entities/familia_ui.dart';
import 'package:padre_mentor/src/domain/entities/hijos_ui.dart';
import 'package:padre_mentor/src/domain/entities/usuario_ui.dart';
import 'package:padre_mentor/src/domain/usecases/get_usuario_usecase.dart';

class EditarUsuarioPresenter extends Presenter{
  GetSessionUsuarioCase _getSessionUsuarioCase;

  Function getUserOnComplete, getUserOnError, getUserOnNext;


  EditarUsuarioPresenter(usuarioConfRepo):this._getSessionUsuarioCase=GetSessionUsuarioCase(usuarioConfRepo);

  void getSessionUsuarioCase(){
    _getSessionUsuarioCase.execute(_GetSessionUsuarioCase(this), GetSessionUsuarioCaseParams());
  }

  @override
  void dispose() {
    _getSessionUsuarioCase.dispose();
  }

  void onSaveFamiliar(UsuarioUi usuarioUi, List<HijosUi> hijoUiList, List<FamiliaUi> familiaUiList) {

  }

}

class _GetSessionUsuarioCase extends Observer<GetSessionUsuarioCaseResponse>{
  final EditarUsuarioPresenter presenter;

  _GetSessionUsuarioCase(this.presenter);

  @override
  void onComplete() {
    assert(presenter.getUserOnComplete != null);
    presenter.getUserOnComplete();
  }

  @override
  void onError(e) {
    assert(presenter.getUserOnError != null);
    presenter.getUserOnError(e);
  }

  @override
  void onNext(GetSessionUsuarioCaseResponse response) {
    assert(presenter.getUserOnNext != null);
    presenter.getUserOnNext(response.usurio);
  }

}