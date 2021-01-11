import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/domain/usecases/get_usuario_usecase.dart';
import 'package:padre_mentor/src/domain/usecases/sync_datos_inicio_padre.dart';

class HomePresenter extends Presenter{
  Function getUserOnNext;
  Function getUserOnComplete;
  Function getUserOnError;

  final GetSessionUsuarioCase getUsuarioUseCase;
  final SyncDatosInicioPadre syncDatosInicioPadre;

  HomePresenter(usuarioConfigRepo, httpDatosRepo) : getUsuarioUseCase = GetSessionUsuarioCase(usuarioConfigRepo), syncDatosInicioPadre = SyncDatosInicioPadre(httpDatosRepo, usuarioConfigRepo);

  @override
  void dispose() {
    syncDatosInicioPadre.dispose();
    getUsuarioUseCase.dispose();
  }

  void getUserSession() {
    print('getUserSession GO');
    syncDatosInicioPadre.execute(
        _SyncDatosInicioPadreCase(this), SyncDatosInicioPadreParams(2));

    // execute getUseruserCase
    getUsuarioUseCase.execute(
        _GetSessionUsuarioCase(this), GetSessionUsuarioCaseParams());


  }
}

class _GetSessionUsuarioCase extends Observer<GetSessionUsuarioCaseResponse>{
  final HomePresenter presenter;

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

class _SyncDatosInicioPadreCase extends Observer<SyncDatosInicioPadreResponse>{
  final HomePresenter presenter;

  _SyncDatosInicioPadreCase(this.presenter);

  @override
  void onComplete() {

  }

  @override
  void onError(e) {

  }

  @override
  void onNext(SyncDatosInicioPadreResponse response) {

  }

}