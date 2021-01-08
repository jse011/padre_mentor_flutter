import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/app/page/menu/feedback_screen.dart';
import 'package:padre_mentor/src/app/page/menu/help_screen.dart';
import 'package:padre_mentor/src/app/page/menu/home_screen.dart';
import 'package:padre_mentor/src/app/page/menu/invite_friend_screen.dart';
import 'package:padre_mentor/src/app/utils/app_theme.dart';
import 'package:padre_mentor/src/app/widgets/navigation_drawer/drawer_user_controller.dart';
import 'package:padre_mentor/src/app/widgets/navigation_drawer/home_drawer.dart';
import 'package:padre_mentor/src/data/repositories/floor_beta/data_usuario_configuracion_respository.dart';
import 'package:padre_mentor/src/device/repositories/http/device_http_datos_repository.dart';
import 'package:sqlite_viewer/sqlite_viewer.dart';

import 'home_controller.dart';

class HomePage extends View{
  static const TAG = "HomePage";
  @override
  _HomePageState createState() =>
      // inject dependencies inwards
      _HomePageState();

}
class _HomePageState extends ViewState<HomePage, HomeController> {
  DrawerIndex _drawerIndex;
  Widget _screenView;
  _HomePageState() : super(HomeController(DataUsuarioAndRepository(), DeviceHttpDatosRepositorio()));

  @override
  // TODO: implement view
  Widget get view =>
      Container(
        color: AppTheme.nearlyWhite,
        child: SafeArea(
          top: false,
          bottom: false,
          child: Scaffold(
            backgroundColor: AppTheme.nearlyWhite,
            appBar: AppBar(
                title: Text('DBDEBUG'),
                actions: <Widget>[
                  new IconButton(
                      icon: new Icon(Icons.folder),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) => DatabaseList()));
                      }
                  ),
                ]
            ),
            body: ControlledWidgetBuilder<HomeController>(
              builder: (context, controller) {
                changeIndex(controller.vistaActual);

                return DrawerUserController(
                  photoUser: controller.usuario == null ? '' : '${controller.usuario.foto}',
                  nameUser: controller.usuario == null ? '' : '${controller.usuario.nombre}',
                  screenIndex: _drawerIndex,
                  drawerWidth: MediaQuery
                      .of(context)
                      .size
                      .width * 0.75,
                  onDrawerCall: (DrawerIndex drawerIndexdata) {

                    switch(drawerIndexdata){
                      case DrawerIndex.HOME:
                        controller.onSelectedVistaPrincial();
                        break;
                      case DrawerIndex.Help:
                        controller.onSelectedVistaAyuda();
                        break;
                      case DrawerIndex.Share:
                      // TODO: Handle this case.
                        break;
                      case DrawerIndex.About:
                      // TODO: Handle this case.
                        controller.onSelectedVistaAbout();
                        break;
                      case DrawerIndex.Invite:
                      // TODO: Handle this case.
                        break;
                      case DrawerIndex.Testing:
                      // TODO: Handle this case.
                        break;
                      case DrawerIndex.FeedBack:
                        controller.onSelectedVistaFeedBack();
                        break;
                    }
                    //callback from drawer for replace screen as user need with passing DrawerIndex(Enum index)
                  },
                  screenView: _screenView,
                  //we replace screen view as we need on navigate starting screens like MyHomePage, HelpScreen, FeedbackScreen, etc...
                );
              },
            ),
          ),
        ),
      );


  void changeIndex(VistaIndex vistaIndex) {
    switch (vistaIndex) {
      case VistaIndex.Principal:
        _screenView = MyHomePage();
        _drawerIndex = DrawerIndex.HOME;
        break;
      case VistaIndex.FeedBack:
        _screenView = FeedbackScreen();
        _drawerIndex = DrawerIndex.FeedBack;
        break;
      case VistaIndex.Ayuda:
        _screenView = HelpScreen();
        _drawerIndex = DrawerIndex.Help;
        break;
      case VistaIndex.SobreNosotros:
        _screenView = InviteFriend();
        _drawerIndex = DrawerIndex.About;
        break;
    }
  }

}


/*
class _HomePageState2 extends ViewState<HomePage, HomeController>{
  Widget screenView;
  DrawerIndex drawerIndex;

  @override
  void initState() {
    // TODO: implement initState
    drawerIndex = DrawerIndex.HOME;
    screenView = const MyHomePage();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.nearlyWhite,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: AppTheme.nearlyWhite,
          body: DrawerUserController(
            screenIndex: drawerIndex,
            drawerWidth: MediaQuery.of(context).size.width * 0.75,
            onDrawerCall: (DrawerIndex drawerIndexdata) {
              changeIndex(drawerIndexdata);
              //callback from drawer for replace screen as user need with passing DrawerIndex(Enum index)
            },
            screenView: screenView,
            //we replace screen view as we need on navigate starting screens like MyHomePage, HelpScreen, FeedbackScreen, etc...
          ),
        ),
      ),
    );
  }

  void changeIndex(DrawerIndex drawerIndexdata) {
    if (drawerIndex != drawerIndexdata) {
      drawerIndex = drawerIndexdata;
      if (drawerIndex == DrawerIndex.HOME) {
        setState(() {
          screenView = const MyHomePage();
        });
      } else if (drawerIndex == DrawerIndex.Help) {
        setState(() {
          screenView = HelpScreen();
        });
      } else if (drawerIndex == DrawerIndex.FeedBack) {
        setState(() {
          screenView = FeedbackScreen();
        });
      } else if (drawerIndex == DrawerIndex.Invite) {
        setState(() {
          screenView = InviteFriend();
        });
      } else {
        //do in your way......
      }
    }
  }
}
*/
