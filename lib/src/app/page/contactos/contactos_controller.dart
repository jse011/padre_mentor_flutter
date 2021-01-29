import 'dart:async';

import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/app/page/contactos/contactos_presentar.dart';
import 'package:padre_mentor/src/app/utils/app_theme.dart';
import 'package:padre_mentor/src/domain/entities/contacto_ui.dart';
import 'package:padre_mentor/src/domain/entities/hijos_ui.dart';
import 'package:padre_mentor/src/domain/entities/usuario_ui.dart';

class ContactosController extends Controller{
  ContactosPresenter presenter;

  HijosUi _hijoSelected = null;
  UsuarioUi _usuarioUi = null;

  HijosUi get hijoSelected => _hijoSelected;
  List<dynamic> _companieroList = [];
  List<dynamic> get companieroList => _companieroList;
  List<dynamic> _directivosList = [];
  List<dynamic> get directivosList => _directivosList;
  List<dynamic> _doncentesList = [];
  List<dynamic> get doncentesList => _doncentesList;
  ContactoUi _companiero = null;
  ContactoUi get companiero => companiero;

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
      _companieroList=alumnosList;
      _doncentesList=docentesList;
      _directivosList = directivosList;
      refreshUI();
    };

    presenter.getContactosOnComplete = (){

    };

    presenter.getContactosOnError = (e){
      _companieroList= [];
      _doncentesList=[];
      _directivosList = [];
      refreshUI();
    };
  }

  void onChagenHijo() {

  }
  void onClickCompanieroContacto(ContactoUi contactoUi) {
    _companiero = contactoUi;
    for(dynamic comp in _companieroList)if(comp is ContactoUi)comp.toogle =  false;
    _companiero.toogle = true;
    refreshUI();


  }

}