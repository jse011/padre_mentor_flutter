import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/app/page/contactos/contactos_presentar.dart';
import 'package:padre_mentor/src/domain/entities/hijos_ui.dart';
import 'package:padre_mentor/src/domain/entities/usuario_ui.dart';

class ContactosController extends Controller{
  ContactosPresenter presenter;

  HijosUi _hijoSelected = null;
  UsuarioUi _usuarioUi = null;
  HijosUi get hijoSelected => _hijoSelected;
  List<dynamic> _alumnosList = [];
  List<dynamic> get alumnosList => _alumnosList;

  ContactosController(httpRepo, cursoRepo, usuarioConfRepo): presenter = ContactosPresenter(httpRepo, cursoRepo, usuarioConfRepo);

@override
  void onInitState() {
    // TODO: implement onInitState
    super.onInitState();
    presenter.onInitState();
  }


  @override
  void initListeners() {
    presenter.getSesionUsuarioOnNext = (UsuarioUi usuarioUi) {
      _hijoSelected = usuarioUi.hijoSelected;
      //refreshUI(); // Refreshes the UI manually
      _usuarioUi = usuarioUi;
      refreshUI();
    };

    presenter.getSesionUsuarioOnComplete = () {
      print('User retrieved');
      print("GetEventoAgenda getSesionUsuarioOnComplete");
      presenter.getContactos(_usuarioUi);
    };

    // On error, show a snackbar, remove the user, and refresh the UI
    presenter.getSesionUsuarioOnError = (e) {
      print('Could not retrieve user.');
      refreshUI(); // Refreshes the UI manually
    };

    presenter.getContactosOnNext = (List<dynamic> alumnosList, List<dynamic> docentesList, List<dynamic> directivosList){
      _alumnosList=alumnosList;
      refreshUI();
    };

    presenter.getContactosOnComplete = (){

    };

    presenter.getContactosOnError = (e){

    };
  }

  void onChagenHijo() {

  }

}