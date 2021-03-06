import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/app/page/editar_usuario/editar_usuario_view.dart';
import 'package:padre_mentor/src/app/page/login/login_router.dart';
import 'package:padre_mentor/src/app/page/menu/feedback_screen.dart';
import 'package:padre_mentor/src/app/page/menu/help_screen.dart';
import 'package:padre_mentor/src/app/page/menu/home_screen.dart';
import 'package:padre_mentor/src/app/page/menu/invite_friend_screen.dart';
import 'package:padre_mentor/src/app/utils/app_theme.dart';
import 'package:padre_mentor/src/app/widgets/navigation_drawer/drawer_user_controller.dart';
import 'package:padre_mentor/src/app/widgets/navigation_drawer/home_drawer.dart';
import 'package:padre_mentor/src/app/widgets/splash.dart';
import 'package:padre_mentor/src/data/repositories/moor/data_usuario_configuracion_respository.dart';
import 'package:padre_mentor/src/device/repositories/http/device_http_datos_repository.dart';
import 'package:padre_mentor/utils/new_version.dart';
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
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {

    super.didChangeDependencies();
    Future.delayed(const Duration(milliseconds: 500), () {
      NewVersion(
        context: context,
        dismissText: "Quizás más tarde",
        updateText: "Actualizar",
        dialogTitle: "Actualización disponible",
        //iOSId: 'com.google.Vespa',
        iOSId: 'com.consultoraestrategia.padre_mentor',
        androidId: 'com.consultoraestrategia.padre_mentor2',
        dialogTextBuilder: (localVersion, storeVersion) => 'Ahora puede actualizar esta aplicación del ${localVersion} al ${storeVersion}',
      ).showAlertIfNecessary();
    }
    );
  }


  @override
  Widget get view =>
      Container(
        color: AppTheme.nearlyWhite,
        child: SafeArea(
          top: false,
          bottom: false,
          child: Scaffold(
            backgroundColor: AppTheme.nearlyWhite,
            /*appBar: AppBar(
                title: Text('DBDEBUG'),
                actions: <Widget>[
                  new IconButton(
                      icon: new Icon(Icons.folder),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) => DatabaseList()));
                      }
                  ),
                ]
            ),*/
            body: ControlledWidgetBuilder<HomeController>(
              builder: (context, controller) {
                Color colorEspera = Color(0xFFBBADA2);
                if(controller.showLoggin == 0){
                  return Container(
                    color: colorEspera,
                  );
                }else if(controller.showLoggin == 1){
                  SchedulerBinding.instance.addPostFrameCallback((_) {
                    // fetch data
                    LoginRouter.createRouteLogin(context);
                  });

                  return Container();
                }else{
                  changeIndex(controller.vistaActual);
                  return Stack(
                    children: [
                      DrawerUserController(
                        photoUser: controller.usuario == null ? '' : '${controller.usuario.foto}',
                        nameUser: controller.usuario == null ? '' : '${controller.usuario.nombreSimple}',
                        correo: controller.usuario == null ? '' : '${controller.usuario.correo}',
                        screenIndex: _drawerIndex,
                        screenView: _screenView,
                        drawerWidth: MediaQuery
                            .of(context)
                            .size
                            .width * 0.70,
                        onDrawerCall: (DrawerIndex drawerIndexdata) {

                          switch(drawerIndexdata){
                            case DrawerIndex.HOME:
                              controller.onSelectedVistaPrincial();
                              break;
                            case DrawerIndex.EDITUSER:
                              controller.onSelectedVistaEditUsuario();
                              break;
                            case DrawerIndex.SUGERENCIAS:
                              controller.onSelectedVistaFeedBack();
                              break;
                            case DrawerIndex.ABAOUT:
                              controller.onSelectedVistaAbout();
                              break;
                          }

                        },
                        onClickCerrarCession: (){
                          controller.onClickCerrarCession();
                        },
                      ),
                      if(controller.splash)SplashView(colorEspera),

                    ],
                  );
                }

              }
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
      case VistaIndex.EditarUsuario:
        _screenView = EditarUsuarioView();
        _drawerIndex = DrawerIndex.EDITUSER;
        break;
      case VistaIndex.Sugerencia:
        _screenView = HelpScreen();
        _drawerIndex = DrawerIndex.SUGERENCIAS;
        break;
      case VistaIndex.SobreNosotros:
        _screenView = InviteFriend();
        _drawerIndex = DrawerIndex.ABAOUT;
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
