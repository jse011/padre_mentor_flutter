import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/app/page/contactos/contactos_controller.dart';
import 'package:padre_mentor/src/app/utils/app_theme.dart';
import 'package:padre_mentor/src/app/widgets/animation_view.dart';
import 'package:padre_mentor/src/app/widgets/menu_item_view.dart';
import 'package:padre_mentor/src/app/widgets/title_view.dart';
import 'package:padre_mentor/src/app/widgets/workout_view.dart';
import 'package:padre_mentor/src/data/repositories/moor/data_curso_repository.dart';
import 'package:padre_mentor/src/data/repositories/moor/data_usuario_configuracion_respository.dart';
import 'package:padre_mentor/src/device/repositories/http/device_http_datos_repository.dart';
import 'package:padre_mentor/src/domain/entities/contacto_ui.dart';

class ContactosView extends View{
  final AnimationController animationController;

  ContactosView({this.animationController});

  @override
  _ContactosViewState createState() => _ContactosViewState();

}

class _ContactosViewState extends ViewState<ContactosView, ContactosController>{
  Animation<double> topBarAnimation;
  final ScrollController scrollController = ScrollController();
  double topBarOpacity = 0.0;

  _ContactosViewState() : super(ContactosController(DeviceHttpDatosRepositorio(), DataCursoRepository(), DataUsuarioAndRepository()));

  @override
  void initState() {
    topBarAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: widget.animationController,
            curve: Interval(0, 0.5, curve: Curves.fastOutSlowIn)));

    scrollController.addListener(() {
      if (scrollController.offset >= 24) {
        if (topBarOpacity != 1.0) {
          setState(() {
            topBarOpacity = 1.0;
          });
        }
      } else if (scrollController.offset <= 24 &&
          scrollController.offset >= 0) {
        if (topBarOpacity != scrollController.offset / 24) {
          setState(() {
            topBarOpacity = scrollController.offset / 24;
          });
        }
      } else if (scrollController.offset <= 0) {
        if (topBarOpacity != 0.0) {
          setState(() {
            topBarOpacity = 0.0;
          });
        }
      }
    });
    widget.animationController.reset();

    Future.delayed(const Duration(milliseconds: 500), () {
// Here you can write your code
      setState(() {
        widget.animationController.forward();
      });}

      );

    super.initState();
  }

  @override
  Widget get view =>
      Container(
        color: AppTheme.background,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: <Widget>[
              getMainTab(),
              getAppBarUI(),
              SizedBox(
                height: MediaQuery.of(context).padding.bottom,
              )
            ],
          ),
        ),
      );

  Widget getAppBarUI() {
    return Column(
      children: <Widget>[
        AnimatedBuilder(
          animation: widget.animationController,
          builder: (BuildContext context, Widget child) {
            return FadeTransition(
              opacity: topBarAnimation,
              child: Transform(
                transform: Matrix4.translationValues(
                    0.0, 30 * (1.0 - topBarAnimation.value), 0.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppTheme.white.withOpacity(topBarOpacity),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(32.0),
                    ),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: AppTheme.grey
                              .withOpacity(0.4 * topBarOpacity),
                          offset: const Offset(1.1, 1.1),
                          blurRadius: 10.0),
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: MediaQuery.of(context).padding.top,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 48,
                            right: 16,
                            top: 16 - 8.0 * topBarOpacity,
                            bottom: 12 - 8.0 * topBarOpacity),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Contactos',
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontFamily: AppTheme.fontName,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 22 + 6 - 6 * topBarOpacity,
                                    letterSpacing: 1.2,
                                    color: AppTheme.darkerText,
                                  ),
                                ),
                              ),
                            ),
                            ControlledWidgetBuilder<ContactosController>(
                                builder: (context, controller) {
                                  if(controller.hijoSelected==null){
                                    return Padding(
                                      padding: EdgeInsets.fromLTRB (00.0, 00.0, 00.0, 00.0),
                                    );
                                  }else{
                                    return  InkWell(
                                      focusColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                                      splashColor: AppTheme.nearlyDarkBlue.withOpacity(0.2),
                                      onTap: () {
                                        controller.onChagenHijo();
                                      },
                                      child:  CachedNetworkImage(
                                          placeholder: (context, url) => CircularProgressIndicator(),
                                          imageUrl: controller.hijoSelected == null ? '' : '${controller.hijoSelected.foto}',
                                          imageBuilder: (context, imageProvider) => Container(
                                              height: 45 + 6 - 6 * topBarOpacity,
                                              width: 45 + 6 - 6 * topBarOpacity,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(50)),
                                                  image: DecorationImage(
                                                    image: imageProvider,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  boxShadow: <BoxShadow>[
                                                    BoxShadow(color: AppTheme.grey.withOpacity(0.4), offset: const Offset(2.0, 2.0), blurRadius: 6),
                                                  ]
                                              )
                                          )
                                      ),);

                                  }})
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        )
      ],
    );
  }
 int countView = 8;
  Widget getMainTab() {
    return Container(
        margin: const EdgeInsets.only(left: 0, right: 0, top: 8, bottom: 0),
        padding: EdgeInsets.only(
          top:
          AppBar().preferredSize.height +
              MediaQuery.of(context).padding.top +
              0,
          bottom: 62 + MediaQuery.of(context).padding.bottom,
        ),
        child:
        AnimationView(
            animation: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                parent: widget.animationController,
                curve:
                Interval((1 / countView) * 3, 1.0, curve: Curves.fastOutSlowIn))),
            animationController: widget.animationController,
            child:  ControlledWidgetBuilder<ContactosController>(
                builder: (context, controller){
                  return  DefaultTabController(
                    length: 3,
                    child: SizedBox(
                      child: Column(
                        children: <Widget>[
                          TabBar(
                            labelColor: AppTheme.dark_grey,
                            tabs: [
                              Tab(text: "Compañeros",),
                              Tab(text: "Profesores"),
                              Tab(text: "Directivos"),
                            ],
                          ),
                          Expanded(
                            child: TabBarView(
                              children: [
                                CustomScrollView(
                                    slivers:[
                                      SliverList(
                                          delegate: SliverChildBuilderDelegate(
                                                  (BuildContext context, int index){
                                                    dynamic o = controller.alumnosList[index];
                                                    if(o is String){
                                                      return Container(
                                                        padding: const EdgeInsets.only(left: 16, right: 0, top: 8, bottom: 8),
                                                        child: Row(
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets.only(left: 0, right: 5, top: 0),
                                                              child: Text(o??'', style: TextStyle( color: AppTheme.lightText, fontSize: 14, fontWeight: FontWeight.w700),),
                                                            ),
                                                            Expanded(
                                                                child: Container(
                                                                  color: AppTheme.lightText,
                                                                  height: 1,
                                                                )
                                                            )
                                                          ],
                                                        ),
                                                      );
                                                    }else if(o is ContactoUi){
                                                      ContactoUi contactoUi = o;
                                                      return Container(
                                                        child: Column(
                                                          children: [
                                                            Container(
                                                              padding: const EdgeInsets.only(left: 24, right: 0, top: 8, bottom: 8),
                                                              child: Row(
                                                                children: [
                                                                  CachedNetworkImage(
                                                                      height: 60,
                                                                      width: 60,
                                                                      placeholder: (context, url) => CircularProgressIndicator(),
                                                                      imageUrl: contactoUi.foto??'',
                                                                      imageBuilder: (context, imageProvider) =>
                                                                          Container(

                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.all(Radius.circular(50)),
                                                                                image: DecorationImage(
                                                                                  image: imageProvider,
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              )
                                                                          )
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets.only(left: 16, right: 0, top: 0, bottom: 0),
                                                                    child: Text(contactoUi.nombre??"", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle( fontSize: 16, color: AppTheme.lightText, fontWeight: FontWeight.w500),),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              height: 60,
                                                              color: Color(0xFFF6F6F6),
                                                              padding: const EdgeInsets.only(left:  40, right: 28),
                                                              child: Row(
                                                                children: [
                                                                  Expanded(
                                                                      child: Material(
                                                                        color: Colors.transparent,
                                                                        child: InkWell(
                                                                          focusColor: Colors.transparent,
                                                                          highlightColor: Colors.transparent,
                                                                          hoverColor: Colors.transparent,
                                                                          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                                                                          splashColor: AppTheme.colorPrimary.withOpacity(0.2),
                                                                          onTap: () {

                                                                          },
                                                                          child: Container(
                                                                            child: Column(
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              children: [
                                                                                Icon(Icons.call, size: 24, color: Color(0xFF6FBD53),),
                                                                                Text("Llamar", style: TextStyle(color: AppTheme.lightText, fontSize: 10, fontWeight: FontWeight.w500),),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      )
                                                                  ),
                                                                  Expanded(
                                                                      child: Container(
                                                                        child: Material(
                                                                          color: Colors.transparent,
                                                                          child: InkWell(
                                                                            focusColor: Colors.transparent,
                                                                            highlightColor: Colors.transparent,
                                                                            hoverColor: Colors.transparent,
                                                                            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                                                                            splashColor: AppTheme.colorPrimary.withOpacity(0.2),
                                                                            onTap: () {

                                                                            },
                                                                            child: Column(
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              children: [
                                                                                Icon(Icons.call, size: 24, color: Color(0xFF6FBD53),),
                                                                                Text("Apoderado", style: TextStyle(color: AppTheme.lightText, fontSize: 10, fontWeight: FontWeight.w500, ),),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      )
                                                                  ),
                                                                  Expanded(
                                                                      child: Material(
                                                                        color: Colors.transparent,
                                                                        child: InkWell(
                                                                          focusColor: Colors.transparent,
                                                                          highlightColor: Colors.transparent,
                                                                          hoverColor: Colors.transparent,
                                                                          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                                                                          splashColor: AppTheme.colorPrimary.withOpacity(0.2),
                                                                          onTap: () {

                                                                          },
                                                                          child: Container(
                                                                            child: Column(
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              children: [
                                                                                Icon(Icons.insert_comment_outlined, size: 24, color: Color(0XFF52B1D3),),
                                                                                Text("Mensaje", style: TextStyle(color: AppTheme.lightText, fontSize: 10, fontWeight: FontWeight.w500),),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      )
                                                                  ),
                                                                  Expanded(
                                                                      child: Material(
                                                                        color: Colors.transparent,
                                                                        child: InkWell(
                                                                          focusColor: Colors.transparent,
                                                                          highlightColor: Colors.transparent,
                                                                          hoverColor: Colors.transparent,
                                                                          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                                                                          splashColor: AppTheme.colorPrimary.withOpacity(0.2),
                                                                          onTap: () {

                                                                          },
                                                                          child: Container(
                                                                            child: Column(
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              children: [
                                                                                Icon(Icons.supervised_user_circle_outlined, size: 24, color: Color(0xFF929292),),
                                                                                Text("Información", style: TextStyle(color: AppTheme.lightText, fontSize: 10, fontWeight: FontWeight.w500),),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      )
                                                                  )
                                                                ],
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      );
                                                    }else{
                                                      return Container();
                                                    }

                                              }, childCount: controller.alumnosList.length)
                                      ),
                                      SliverList(
                                        delegate: SliverChildListDelegate([
                                          Container(
                                            padding: const EdgeInsets.only(left: 16, right: 0, top: 8, bottom: 8),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 0, right: 5, top: 0),
                                                  child: Text("A", style: TextStyle( color: AppTheme.lightText, fontSize: 14, fontWeight: FontWeight.w700),),
                                                ),
                                                Expanded(
                                                    child: Container(
                                                      color: AppTheme.lightText,
                                                      height: 1,
                                                    )
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            child: Column(
                                              children: [
                                                Container(
                                                  padding: const EdgeInsets.only(left: 24, right: 0, top: 8, bottom: 8),
                                                  child: Row(
                                                    children: [
                                                      CachedNetworkImage(
                                                          height: 60,
                                                          width: 60,
                                                          placeholder: (context, url) => CircularProgressIndicator(),
                                                          imageUrl: "https://miro.medium.com/max/1200/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg",
                                                          imageBuilder: (context, imageProvider) =>
                                                              Container(

                                                                  decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.all(Radius.circular(50)),
                                                                    image: DecorationImage(
                                                                      image: imageProvider,
                                                                      fit: BoxFit.cover,
                                                                    ),
                                                                  )
                                                              )
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 16, right: 0, top: 0, bottom: 0),
                                                        child: Text("Acero Josue", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle( fontSize: 16, color: AppTheme.lightText, fontWeight: FontWeight.w500),),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  height: 60,
                                                  color: Color(0xFFF6F6F6),
                                                  padding: const EdgeInsets.only(left:  40, right: 28),
                                                  child: Row(
                                                    children: [
                                                      Expanded(
                                                          child: Material(
                                                            color: Colors.transparent,
                                                            child: InkWell(
                                                              focusColor: Colors.transparent,
                                                              highlightColor: Colors.transparent,
                                                              hoverColor: Colors.transparent,
                                                              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                                                              splashColor: AppTheme.colorPrimary.withOpacity(0.2),
                                                              onTap: () {

                                                              },
                                                              child: Container(
                                                                child: Column(
                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                  children: [
                                                                    Icon(Icons.call, size: 24, color: Color(0xFF6FBD53),),
                                                                    Text("Llamar", style: TextStyle(color: AppTheme.lightText, fontSize: 10, fontWeight: FontWeight.w500),),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          )
                                                      ),
                                                      Expanded(
                                                          child: Container(
                                                            child: Material(
                                                              color: Colors.transparent,
                                                              child: InkWell(
                                                                focusColor: Colors.transparent,
                                                                highlightColor: Colors.transparent,
                                                                hoverColor: Colors.transparent,
                                                                borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                                                                splashColor: AppTheme.colorPrimary.withOpacity(0.2),
                                                                onTap: () {

                                                                },
                                                                child: Column(
                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                  children: [
                                                                    Icon(Icons.call, size: 24, color: Color(0xFF6FBD53),),
                                                                    Text("Apoderado", style: TextStyle(color: AppTheme.lightText, fontSize: 10, fontWeight: FontWeight.w500, ),),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          )
                                                      ),
                                                      Expanded(
                                                          child: Material(
                                                            color: Colors.transparent,
                                                            child: InkWell(
                                                              focusColor: Colors.transparent,
                                                              highlightColor: Colors.transparent,
                                                              hoverColor: Colors.transparent,
                                                              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                                                              splashColor: AppTheme.colorPrimary.withOpacity(0.2),
                                                              onTap: () {

                                                              },
                                                              child: Container(
                                                                child: Column(
                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                  children: [
                                                                    Icon(Icons.insert_comment_outlined, size: 24, color: Color(0XFF52B1D3),),
                                                                    Text("Mensaje", style: TextStyle(color: AppTheme.lightText, fontSize: 10, fontWeight: FontWeight.w500),),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          )
                                                      ),
                                                      Expanded(
                                                          child: Material(
                                                            color: Colors.transparent,
                                                            child: InkWell(
                                                              focusColor: Colors.transparent,
                                                              highlightColor: Colors.transparent,
                                                              hoverColor: Colors.transparent,
                                                              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                                                              splashColor: AppTheme.colorPrimary.withOpacity(0.2),
                                                              onTap: () {

                                                              },
                                                              child: Container(
                                                                child: Column(
                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                  children: [
                                                                    Icon(Icons.supervised_user_circle_outlined, size: 24, color: Color(0xFF929292),),
                                                                    Text("Información", style: TextStyle(color: AppTheme.lightText, fontSize: 10, fontWeight: FontWeight.w500),),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          )
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            child: Column(
                                              children: [
                                                Container(
                                                  padding: const EdgeInsets.only(left: 24, right: 0, top: 8, bottom: 8),
                                                  child: Row(
                                                    children: [
                                                      CachedNetworkImage(
                                                          height: 60,
                                                          width: 60,
                                                          placeholder: (context, url) => CircularProgressIndicator(),
                                                          imageUrl: "https://miro.medium.com/max/1200/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg",
                                                          imageBuilder: (context, imageProvider) =>
                                                              Container(

                                                                  decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.all(Radius.circular(50)),
                                                                    image: DecorationImage(
                                                                      image: imageProvider,
                                                                      fit: BoxFit.cover,
                                                                    ),
                                                                  )
                                                              )
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 16, right: 0, top: 0, bottom: 0),
                                                        child: Text("Acero Josue", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle( fontSize: 16, color: AppTheme.lightText, fontWeight: FontWeight.w500),),
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            child: Column(
                                              children: [
                                                Container(
                                                  padding: const EdgeInsets.only(left: 24, right: 0, top: 8, bottom: 8),
                                                  child: Row(
                                                    children: [
                                                      CachedNetworkImage(
                                                          height: 60,
                                                          width: 60,
                                                          placeholder: (context, url) => CircularProgressIndicator(),
                                                          imageUrl: "https://miro.medium.com/max/1200/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg",
                                                          imageBuilder: (context, imageProvider) =>
                                                              Container(

                                                                  decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.all(Radius.circular(50)),
                                                                    image: DecorationImage(
                                                                      image: imageProvider,
                                                                      fit: BoxFit.cover,
                                                                    ),
                                                                  )
                                                              )
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 16, right: 0, top: 0, bottom: 0),
                                                        child: Text("Acero Josue", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle( fontSize: 16, color: AppTheme.lightText, fontWeight: FontWeight.w500),),
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ]),
                                      ),
                                    ]
                                ),
                                CustomScrollView(
                                    slivers:[
                                      SliverList(
                                        delegate: SliverChildListDelegate([
                                          Icon(Icons.directions_transit),
                                        ]),
                                      ),
                                    ]
                                ),
                                CustomScrollView(
                                    slivers:[
                                      SliverList(
                                        delegate: SliverChildListDelegate([
                                          Icon(Icons.directions_car),
                                        ]),
                                      ),
                                      SliverList(
                                        delegate: SliverChildListDelegate([
                                          Icon(Icons.directions_transit),
                                        ]),
                                      ),
                                      SliverList(
                                        delegate: SliverChildListDelegate([
                                          Icon(Icons.directions_bike),
                                        ]),
                                      ),
                                    ]
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                })
        )
    );
  }

}