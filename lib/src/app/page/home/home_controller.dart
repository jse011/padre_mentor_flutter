import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/domain/entities/usuario_ui.dart';

import 'home_presenter.dart';

class HomeController extends Controller{
  final HomePresenter homePresenter;
  VistaIndex _vistaActual;
  UsuarioUi _userioSession;
  UsuarioUi get usuario => _userioSession; // data used by the View

  VistaIndex get vistaActual => _vistaActual;

  HomeController(usuarioConfiRepo, httpDatosRepo)
      :  _vistaActual = VistaIndex.Principal,
        this.homePresenter = HomePresenter(usuarioConfiRepo, httpDatosRepo),
      super();

  @override
  // this is called automatically by the parent class
  void initListeners() {
    homePresenter.getUserOnNext = (UsuarioUi user) {
      print(user.nombre.toString());
      _userioSession = user;
      refreshUI(); // Refreshes the UI manually
    };

    homePresenter.getUserOnComplete = () {
      print('User retrieved');
    };

    // On error, show a snackbar, remove the user, and refresh the UI
    homePresenter.getUserOnError = (e) {
      print('Could not retrieve user.');
      _userioSession = null;
      refreshUI(); // Refreshes the UI manually
    };

    homePresenter.getUserSession();
  }

  void onSelectedVistaAbout() {
    _vistaActual = VistaIndex.SobreNosotros;
    refreshUI(); // Refreshes the UI manually

  }

  void onSelectedVistaFeedBack() {
    _vistaActual = VistaIndex.FeedBack;
    refreshUI(); // Refreshes the UI manually
  }

  void onSelectedVistaPrincial() {
    _vistaActual = VistaIndex.Principal;
    refreshUI(); // Refreshes the UI manually

  }

  void onSelectedVistaAyuda() {
    _vistaActual = VistaIndex.Ayuda;
    refreshUI(); // Refreshes the UI manually

  }

}

enum VistaIndex {
  Principal,
  FeedBack,
  Ayuda,
  SobreNosotros,
}