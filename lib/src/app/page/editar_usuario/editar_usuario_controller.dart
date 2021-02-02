import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/app/page/editar_usuario/editar_usuario_presenter.dart';
import 'package:padre_mentor/src/domain/entities/familia_ui.dart';
import 'package:padre_mentor/src/domain/entities/hijos_ui.dart';
import 'package:padre_mentor/src/domain/entities/usuario_ui.dart';

class EditarUsuarioController extends Controller{
  EditarUsuarioPresenter presenter;

  UsuarioUi _usuarioUi;
  UsuarioUi get usuarioUi => _usuarioUi;
  List<HijosUi> _hijoUiList = [];
  List<HijosUi> get hijoUiList => _hijoUiList;
  List<FamiliaUi> _familiaUiList = [];
  List<FamiliaUi> get familiaUiList => _familiaUiList;

  EditarUsuarioController(usuarioConfRepo):this.presenter=EditarUsuarioPresenter(usuarioConfRepo);

  @override
  void initListeners() {
    presenter.getUserOnNext = (UsuarioUi user) {
      _usuarioUi = user;
      _hijoUiList = user.hijos;
      _familiaUiList = user.familiaUiList;
      refreshUI(); // Refreshes the UI manually
    };

    presenter.getUserOnComplete = () {
      print('User retrieved');
    };

    // On error, show a snackbar, remove the user, and refresh the UI
    presenter.getUserOnError = (e) {
      print('Could not retrieve user.');
      _usuarioUi = null;
      _hijoUiList = [];
      _familiaUiList = [];
      refreshUI(); // Refreshes the UI manually
    };
  }

  @override
  void onInitState() {
    // TODO: implement onInitState
    super.onInitState();
    presenter.getSessionUsuarioCase();
  }

  void onSave() {
    presenter.onSaveFamiliar(_usuarioUi, _hijoUiList, _familiaUiList);
  }
}