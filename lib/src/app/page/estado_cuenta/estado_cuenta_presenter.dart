import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/domain/usecases/get_hijo.dart';

class EstadoCuentaPresenter extends Presenter{
  final int alumnoId;
  GetHijo _getHijo;
  Function getHijonNext, getHijoOnComplete, getHijoOnError;

  EstadoCuentaPresenter(this.alumnoId, usuarioCongRepo): _getHijo = GetHijo(usuarioCongRepo);

  void getHijo(){
    _getHijo.execute(_GetHijoCase(this), GetHijoCaseParams(alumnoId));
  }

  @override
  void dispose() {
    _getHijo.dispose();
  }

}

class _GetHijoCase extends Observer<GetHijoCaseResponse>{
  final EstadoCuentaPresenter presenter;

  _GetHijoCase(this.presenter);

  @override
  void onComplete() {
    assert(presenter.getHijoOnComplete != null);
    presenter.getHijoOnComplete();
  }

  @override
  void onError(e) {
    assert(presenter.getHijoOnError != null);
    presenter.getHijoOnError(e);
  }

  @override
  void onNext(GetHijoCaseResponse response) {
    assert(presenter.getHijonNext != null);
    presenter.getHijonNext(response.hijosUi);
  }

}