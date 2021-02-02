import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/domain/entities/familia_ui.dart';
import 'package:padre_mentor/src/domain/entities/hijos_ui.dart';
import 'package:padre_mentor/src/domain/entities/usuario_ui.dart';
import 'package:padre_mentor/src/domain/usecases/get_usuario_usecase.dart';
import 'package:padre_mentor/src/domain/usecases/update_familia.dart';

class FamiliaPresenter extends Presenter{
  GetSessionUsuarioCase getSessionUsuarioCase;
  Function getSesionUsuarioOnNext, getSesionUsuarioOnComplete,  getSesionUsuarioOnError;
  UpdateFamilia _updateFamilia;
  Function updateFamiliaOnNext, updateFamiliaOnComplete, updateFamiliaOnError;

  FamiliaPresenter(httpRepo, usuarioConfiRepo ):getSessionUsuarioCase = GetSessionUsuarioCase(usuarioConfiRepo), _updateFamilia = UpdateFamilia(httpRepo, usuarioConfiRepo);

  @override
  void dispose() {
    getSessionUsuarioCase.dispose();
    _updateFamilia.dispose();
  }

  void onInitState() {
    getDatosGenerales();
  }

  void getDatosGenerales(){
    getSessionUsuarioCase.execute(_GetSessionUsuarioCase(this), GetSessionUsuarioCaseParams());
  }

  void updateFamilia(UsuarioUi usuarioUi, List<HijosUi> hijosUiList, List<FamiliaUi> familiaUiList) {
    _updateFamilia.execute(_UpdateFamiliaCaseState(this), UpdateFamiliaCaseParams(usuarioUi, hijosUiList, familiaUiList));
  }

}

class _GetSessionUsuarioCase extends Observer<GetSessionUsuarioCaseResponse>{
  final FamiliaPresenter presenter;
  _GetSessionUsuarioCase(this.presenter);

  @override
  void onComplete() {
    assert(presenter.getSesionUsuarioOnComplete != null);
    presenter.getSesionUsuarioOnComplete();
  }

  @override
  void onError(e) {
    assert(presenter.getSesionUsuarioOnError != null);
    presenter.getSesionUsuarioOnError(e);
  }

  @override
  void onNext(GetSessionUsuarioCaseResponse response) {
    assert(presenter.getSesionUsuarioOnNext != null);
    presenter.getSesionUsuarioOnNext(response.usurio);
  }

}

class _UpdateFamiliaCaseState extends Observer<UpdateFamiliaCaseResponse>{
  final FamiliaPresenter presenter;
  _UpdateFamiliaCaseState(this.presenter);
  @override
  void onComplete() {
    assert(presenter.updateFamiliaOnComplete != null);
    presenter.updateFamiliaOnComplete();
  }

  @override
  void onError(e) {
    assert(presenter.updateFamiliaOnError != null);
    presenter.updateFamiliaOnError(e);
  }

  @override
  void onNext(UpdateFamiliaCaseResponse response) {
    assert(presenter.updateFamiliaOnNext != null);
    presenter.updateFamiliaOnNext();
  }

}