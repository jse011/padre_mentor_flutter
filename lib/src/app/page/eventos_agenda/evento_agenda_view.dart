import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:padre_mentor/src/app/page/eventos_agenda/evento_agenda_controller.dart';
import 'package:padre_mentor/src/app/utils/app_theme.dart';
import 'package:padre_mentor/src/app/widgets/animation_view.dart';
import 'package:padre_mentor/src/app/widgets/menu_item_view.dart';
import 'package:shimmer/shimmer.dart';

class EventoAgendaView extends View{
  final AnimationController animationController;

  EventoAgendaView({this.animationController});

  @override
  _EventoAgendaViewState createState() => _EventoAgendaViewState();

}

class _EventoAgendaViewState extends ViewState<EventoAgendaView, EventoAgendaController> with TickerProviderStateMixin{

  _EventoAgendaViewState() : super(EventoAgendaController());

  Animation<double> topBarAnimation;

  final ScrollController scrollController = ScrollController();
  double topBarOpacity = 0.0;
  List<String> _list = ['a','b','v','s','a','a','b',];

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

    Future.delayed(const Duration(milliseconds: 500), () {
// Here you can write your code
      setState(() {
        widget.animationController.forward();
      });

    });

    super.initState();
  }

  @override
  Widget get view => Container(
    color: AppTheme.background,
    child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: <Widget>[
          getMainTab(),
          getAppBarUI(),

        ],
      ),
    ),
  );

  Widget chip(String label, Color color) {
    return Container(
      //margin: const EdgeInsets.only(top: 0, left: 8, right: 8, bottom: 0),
      height: 65,
      width: 80,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(8.0),
            bottomLeft: Radius.circular(8.0),
            bottomRight: Radius.circular(8.0),
            topRight: Radius.circular(8.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: AppTheme.grey.withOpacity(0.4),
              offset: const Offset(1.1, 1.1),
              blurRadius: 10.0),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          focusColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          splashColor: AppTheme.nearlyDarkBlue.withOpacity(0.2),
          onTap: () {

          },
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              Image.asset("assets/fitness_app/area1.png", width: 60,),
              Positioned(
                  bottom: 6,
                  width: 80,
                  child: Text(label, textAlign: TextAlign.center , style: TextStyle(color: AppTheme.white, fontSize: 12))
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget chipEspacio() {
    return Container(
      //margin: const EdgeInsets.only(top: 0, left: 8, right: 8, bottom: 0),
      height: 65,
      width: 80,
      color: Colors.transparent,
    );
  }



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
                                'Eventos',
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
                          CachedNetworkImage(
                              placeholder: (context, url) => CircularProgressIndicator(),
                              imageUrl: "https://i.blogs.es/594843/chrome/450_1000.jpg",
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
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        )
      ],
    );
  }
  int countView = 7;
  Widget getMainTab() {
    return Scaffold(
      body: Container(
        color: AppTheme.background,
        child: NestedScrollView(
          controller: scrollController,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                toolbarHeight: 65,
                expandedHeight: 200.0 + MediaQuery.of(context).padding.top,
                backgroundColor: AppTheme.white,
                shadowColor: AppTheme.grey
                    .withOpacity(0.4),
                automaticallyImplyLeading: false,
                floating: false,
                pinned: true,
                shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(80), bottomRight: Radius.circular(0))),
                flexibleSpace: FlexibleSpaceBar(
                  background: AnimationView(
                    animation: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                        parent: widget.animationController,
                        curve:
                        Interval((1 / countView) * 3, 1.0, curve: Curves.fastOutSlowIn))),
                    animationController: widget.animationController,
                    child:  Container(
                      padding: EdgeInsets.only(top: 70 + MediaQuery.of(context).padding.top, right: 0, left: 0),
                      child: Wrap(
                        spacing: 10.0,
                        runSpacing: 6.0,
                        direction: Axis.horizontal,
                        alignment: WrapAlignment.center,
                        children: <Widget>[
                          chip('Evento', Color(0xFFc40233)),
                          chip('Noticia', Color(0xFF007f5c)),
                          chip('Actividades', Color(0xFF5f65d3)),
                          chip('Tareas', Color(0xFF19ca21)),
                          chip('Cita', Color(0xFF60230b)),
                          chip('Agenda Escolar', Color(0xFFc40233)),
                          chip('Todos', Color(0xFF007f5c)),
                          //chipEspacio()
                        ],
                      ),
                    ),
                  ),
                ),
              )

            ];
          },
          body: CustomScrollView(
            slivers: <Widget>[
          SliverList(
          delegate: SliverChildListDelegate(
              [
                Card(
                  //color: AppTheme.colorAccent,
                  margin: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // if you need this
                    side: BorderSide(
                      color: Colors.grey.withOpacity(0.2),
                      width: 1,
                    ),
                  ),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 0),
                                  child: CachedNetworkImage(
                                      placeholder: (context, url) => CircularProgressIndicator(),
                                      imageUrl: "https://i.blogs.es/594843/chrome/450_1000.jpg",
                                      imageBuilder: (context, imageProvider) => Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(50)),
                                              image: DecorationImage(
                                                image: imageProvider,
                                                fit: BoxFit.cover,
                                              ),
                                          )
                                      )
                                  ),
                              ),
                              Expanded(
                                flex: 6,
                                  child: Container(
                                    margin: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Colegio  CATA PRI-SEC", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle( fontSize: 16, color: AppTheme.darkText),),
                                        Text("Hace una hora", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle( fontSize: 12, color: AppTheme.lightText))
                                      ],
                                    ),
                                  )
                              ),
                              Icon(Icons.arrow_right, color: AppTheme.grey,),
                              Expanded(
                                flex: 5,
                                  child: Container(
                                    margin: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Cordinador Académico", maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle( fontSize: 16, color: AppTheme.darkText),),
                                        Text("Zarate Julio", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle( fontSize: 12, color: AppTheme.lightText))
                                      ],
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 8, left: 16, right: 0, bottom: 0),
                          child: Text("Evento dinámico para estudiantes", style: TextStyle( fontSize: 16, color: AppTheme.darkText, fontFamily: AppTheme.fontName, )),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 0, left: 16, right: 0, bottom: 0),
                          child: Text("Desfile intitucional por grados academicos, comenzara la convocatoria el dia Jueves 29 de Marzo.", style: TextStyle( fontSize: 16, color: AppTheme.darkText, fontFamily: AppTheme.fontName, fontWeight: FontWeight.w300,)),
                        ),
                        /*
                        * CENTER = none
                        * CENTER_CROP = Cover
                        * CENTER_INSIDE = scaleDown
                        * FIT_CENTER = contain (alignment.center)
                        * FIT_END = contain (alignment.bottomright)
                        * FIT_START = contain (alignment.topleft)
                        * FIT_XY = Fill
                        *
                        * */
                        Container(
                          margin: const EdgeInsets.only(top: 8, left: 0, right: 0, bottom: 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,  // add this
                            children: [
                              ClipRRect(
                                /*borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8.0),
                                        topRight: Radius.circular(8.0),
                                      ),*/
                                child: FancyShimmerImage(
                                  boxFit: BoxFit.cover,
                                  imageUrl: 'https://www.lomasnuevo.net/wp-contentupl/2018/04/flutter.jpg',
                                  errorWidget: Image.network('https://hardzone.es/app/uploads-hardzone.es/2020/08/Error-Error-0x80070422-1.jpg'),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 8, left: 16, right: 0, bottom: 0),
                          child: Row(
                            children: [
                                  Container(
                                    width:18,
                                    height:18,
                                    margin: const EdgeInsets.only(top: 0, left: 0, right: 8, bottom: 0),
                                    child: Image.asset("assets/fitness_app/evento_like.png"),
                                  ),
                                  Text("Me gusta", style: TextStyle( fontSize: 12, color: AppTheme.darkText),),
                            ],
                          ),
                        ),
                        Container(
                          margin:  const EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 0),
                          child: Divider(
                            height: 1,
                            color: AppTheme.colorShimmer,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Material(
                              color: Colors.transparent,
                              child: InkWell(
                                  focusColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                                  splashColor: AppTheme.nearlyDarkBlue.withOpacity(0.2),
                                  onTap: () {

                                  },
                                  child:
                                  Container(
                                    padding: const EdgeInsets.only(top: 0, left: 16, right: 16, bottom: 0),
                                    height: 48,
                                    child: Row(
                                      children: [
                                        Container(
                                          width:20,
                                          height:20,
                                          margin: const EdgeInsets.only(top: 0, left: 8, right: 8, bottom: 0),
                                          child: Image.asset("assets/fitness_app/evento_like2.png"),
                                        ),
                                        Text("Me gusta", style: TextStyle( fontSize: 14, color: AppTheme.lightText),),
                                      ],
                                    ),
                                  )
                              ),
                            ),
                            Expanded(child: Container()),
                            Material(
                              color: Colors.transparent,
                              child: InkWell(
                                  focusColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                                  splashColor: AppTheme.nearlyDarkBlue.withOpacity(0.2),
                                  onTap: () {

                                  },
                                  child:
                                  Container(
                                    padding: const EdgeInsets.only(top: 0, left: 16, right: 16, bottom: 0),
                                    height: 48,
                                    child: Row(
                                      children: [
                                        Container(
                                          width:20,
                                          height:20,
                                          margin: const EdgeInsets.only(top: 0, left: 8, right: 8, bottom: 0),
                                          child: Image.asset("assets/fitness_app/evento_shared.png"),
                                        ),
                                        Text("Me gusta", style: TextStyle( fontSize: 14, color: AppTheme.lightText),),
                                      ],
                                    ),
                                  )
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  //color: AppTheme.colorAccent,
                  margin: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // if you need this
                    side: BorderSide(
                      color: Colors.grey.withOpacity(0.2),
                      width: 1,
                    ),
                  ),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 0),
                                child: CachedNetworkImage(
                                    placeholder: (context, url) => CircularProgressIndicator(),
                                    imageUrl: "https://i.blogs.es/594843/chrome/450_1000.jpg",
                                    imageBuilder: (context, imageProvider) => Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(50)),
                                          image: DecorationImage(
                                            image: imageProvider,
                                            fit: BoxFit.cover,
                                          ),
                                        )
                                    )
                                ),
                              ),
                              Expanded(
                                  flex: 6,
                                  child: Container(
                                    margin: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Colegio  CATA PRI-SEC", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle( fontSize: 16, color: AppTheme.darkText),),
                                        Text("Hace una hora", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle( fontSize: 12, color: AppTheme.lightText))
                                      ],
                                    ),
                                  )
                              ),
                              Icon(Icons.arrow_right, color: AppTheme.grey,),
                              Expanded(
                                  flex: 5,
                                  child: Container(
                                    margin: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Cordinador Académico", maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle( fontSize: 16, color: AppTheme.darkText),),
                                        Text("Zarate Julio", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle( fontSize: 12, color: AppTheme.lightText))
                                      ],
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 8, left: 16, right: 0, bottom: 0),
                          child: Text("Evento dinámico para estudiantes", style: TextStyle( fontSize: 16, color: AppTheme.darkText, fontFamily: AppTheme.fontName, )),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 0, left: 16, right: 0, bottom: 0),
                          child: Text("Desfile intitucional por grados academicos, comenzara la convocatoria el dia Jueves 29 de Marzo.", style: TextStyle( fontSize: 16, color: AppTheme.darkText, fontFamily: AppTheme.fontName, fontWeight: FontWeight.w300,)),
                        ),
                        /*
                        * CENTER = none
                        * CENTER_CROP = Cover
                        * CENTER_INSIDE = scaleDown
                        * FIT_CENTER = contain (alignment.center)
                        * FIT_END = contain (alignment.bottomright)
                        * FIT_START = contain (alignment.topleft)
                        * FIT_XY = Fill
                        *
                        * */
                        Container(
                          margin: const EdgeInsets.only(top: 8, left: 0, right: 0, bottom: 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,  // add this
                            children: [
                              ClipRRect(
                                /*borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8.0),
                                        topRight: Radius.circular(8.0),
                                      ),*/
                                child: FancyShimmerImage(
                                  boxFit: BoxFit.cover,
                                  imageUrl: 'https://www.lomasnuevo.net/wp-contentupl/2018/04/flutter.jpg',
                                  errorWidget: Image.network('https://hardzone.es/app/uploads-hardzone.es/2020/08/Error-Error-0x80070422-1.jpg'),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 8, left: 16, right: 0, bottom: 0),
                          child: Row(
                            children: [
                              Container(
                                width:18,
                                height:18,
                                margin: const EdgeInsets.only(top: 0, left: 0, right: 8, bottom: 0),
                                child: Image.asset("assets/fitness_app/evento_like.png"),
                              ),
                              Text("Me gusta", style: TextStyle( fontSize: 12, color: AppTheme.darkText),),
                            ],
                          ),
                        ),
                        Container(
                          margin:  const EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 0),
                          child: Divider(
                            height: 1,
                            color: AppTheme.colorShimmer,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Material(
                              color: Colors.transparent,
                              child: InkWell(
                                  focusColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                                  splashColor: AppTheme.nearlyDarkBlue.withOpacity(0.2),
                                  onTap: () {

                                  },
                                  child:
                                  Container(
                                    padding: const EdgeInsets.only(top: 0, left: 16, right: 16, bottom: 0),
                                    height: 48,
                                    child: Row(
                                      children: [
                                        Container(
                                          width:20,
                                          height:20,
                                          margin: const EdgeInsets.only(top: 0, left: 8, right: 8, bottom: 0),
                                          child: Image.asset("assets/fitness_app/evento_like2.png"),
                                        ),
                                        Text("Me gusta", style: TextStyle( fontSize: 14, color: AppTheme.lightText),),
                                      ],
                                    ),
                                  )
                              ),
                            ),
                            Expanded(child: Container()),
                            Material(
                              color: Colors.transparent,
                              child: InkWell(
                                  focusColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                                  splashColor: AppTheme.nearlyDarkBlue.withOpacity(0.2),
                                  onTap: () {

                                  },
                                  child:
                                  Container(
                                    padding: const EdgeInsets.only(top: 0, left: 16, right: 16, bottom: 0),
                                    height: 48,
                                    child: Row(
                                      children: [
                                        Container(
                                          width:20,
                                          height:20,
                                          margin: const EdgeInsets.only(top: 0, left: 8, right: 8, bottom: 0),
                                          child: Image.asset("assets/fitness_app/evento_shared.png"),
                                        ),
                                        Text("Me gusta", style: TextStyle( fontSize: 14, color: AppTheme.lightText),),
                                      ],
                                    ),
                                  )
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  //color: AppTheme.colorAccent,
                  margin: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // if you need this
                    side: BorderSide(
                      color: Colors.grey.withOpacity(0.2),
                      width: 1,
                    ),
                  ),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 0),
                                child: CachedNetworkImage(
                                    placeholder: (context, url) => CircularProgressIndicator(),
                                    imageUrl: "https://i.blogs.es/594843/chrome/450_1000.jpg",
                                    imageBuilder: (context, imageProvider) => Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(50)),
                                          image: DecorationImage(
                                            image: imageProvider,
                                            fit: BoxFit.cover,
                                          ),
                                        )
                                    )
                                ),
                              ),
                              Expanded(
                                  flex: 6,
                                  child: Container(
                                    margin: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Colegio  CATA PRI-SEC", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle( fontSize: 16, color: AppTheme.darkText),),
                                        Text("Hace una hora", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle( fontSize: 12, color: AppTheme.lightText))
                                      ],
                                    ),
                                  )
                              ),
                              Icon(Icons.arrow_right, color: AppTheme.grey,),
                              Expanded(
                                  flex: 5,
                                  child: Container(
                                    margin: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Cordinador Académico", maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle( fontSize: 16, color: AppTheme.darkText),),
                                        Text("Zarate Julio", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle( fontSize: 12, color: AppTheme.lightText))
                                      ],
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 8, left: 16, right: 0, bottom: 0),
                          child: Text("Evento dinámico para estudiantes", style: TextStyle( fontSize: 16, color: AppTheme.darkText, fontFamily: AppTheme.fontName, )),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 0, left: 16, right: 0, bottom: 0),
                          child: Text("Desfile intitucional por grados academicos, comenzara la convocatoria el dia Jueves 29 de Marzo.", style: TextStyle( fontSize: 16, color: AppTheme.darkText, fontFamily: AppTheme.fontName, fontWeight: FontWeight.w300,)),
                        ),
                        /*
                        * CENTER = none
                        * CENTER_CROP = Cover
                        * CENTER_INSIDE = scaleDown
                        * FIT_CENTER = contain (alignment.center)
                        * FIT_END = contain (alignment.bottomright)
                        * FIT_START = contain (alignment.topleft)
                        * FIT_XY = Fill
                        *
                        * */
                        Container(
                          margin: const EdgeInsets.only(top: 8, left: 0, right: 0, bottom: 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,  // add this
                            children: [
                              ClipRRect(
                                /*borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8.0),
                                        topRight: Radius.circular(8.0),
                                      ),*/
                                child: FancyShimmerImage(
                                  boxFit: BoxFit.cover,
                                  imageUrl: 'https://www.lomasnuevo.net/wp-contentupl/2018/04/flutter.jpg',
                                  errorWidget: Image.network('https://hardzone.es/app/uploads-hardzone.es/2020/08/Error-Error-0x80070422-1.jpg'),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 8, left: 16, right: 0, bottom: 0),
                          child: Row(
                            children: [
                              Container(
                                width:18,
                                height:18,
                                margin: const EdgeInsets.only(top: 0, left: 0, right: 8, bottom: 0),
                                child: Image.asset("assets/fitness_app/evento_like.png"),
                              ),
                              Text("Me gusta", style: TextStyle( fontSize: 12, color: AppTheme.darkText),),
                            ],
                          ),
                        ),
                        Container(
                          margin:  const EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 0),
                          child: Divider(
                            height: 1,
                            color: AppTheme.colorShimmer,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Material(
                              color: Colors.transparent,
                              child: InkWell(
                                  focusColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                                  splashColor: AppTheme.nearlyDarkBlue.withOpacity(0.2),
                                  onTap: () {

                                  },
                                  child:
                                  Container(
                                    padding: const EdgeInsets.only(top: 0, left: 16, right: 16, bottom: 0),
                                    height: 48,
                                    child: Row(
                                      children: [
                                        Container(
                                          width:20,
                                          height:20,
                                          margin: const EdgeInsets.only(top: 0, left: 8, right: 8, bottom: 0),
                                          child: Image.asset("assets/fitness_app/evento_like2.png"),
                                        ),
                                        Text("Me gusta", style: TextStyle( fontSize: 14, color: AppTheme.lightText),),
                                      ],
                                    ),
                                  )
                              ),
                            ),
                            Expanded(child: Container()),
                            Material(
                              color: Colors.transparent,
                              child: InkWell(
                                  focusColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                                  splashColor: AppTheme.nearlyDarkBlue.withOpacity(0.2),
                                  onTap: () {

                                  },
                                  child:
                                  Container(
                                    padding: const EdgeInsets.only(top: 0, left: 16, right: 16, bottom: 0),
                                    height: 48,
                                    child: Row(
                                      children: [
                                        Container(
                                          width:20,
                                          height:20,
                                          margin: const EdgeInsets.only(top: 0, left: 8, right: 8, bottom: 0),
                                          child: Image.asset("assets/fitness_app/evento_shared.png"),
                                        ),
                                        Text("Me gusta", style: TextStyle( fontSize: 14, color: AppTheme.lightText),),
                                      ],
                                    ),
                                  )
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  //color: AppTheme.colorAccent,
                  margin: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // if you need this
                    side: BorderSide(
                      color: Colors.grey.withOpacity(0.2),
                      width: 1,
                    ),
                  ),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 0),
                                child: CachedNetworkImage(
                                    placeholder: (context, url) => CircularProgressIndicator(),
                                    imageUrl: "https://i.blogs.es/594843/chrome/450_1000.jpg",
                                    imageBuilder: (context, imageProvider) => Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(50)),
                                          image: DecorationImage(
                                            image: imageProvider,
                                            fit: BoxFit.cover,
                                          ),
                                        )
                                    )
                                ),
                              ),
                              Expanded(
                                  flex: 6,
                                  child: Container(
                                    margin: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Colegio  CATA PRI-SEC", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle( fontSize: 16, color: AppTheme.darkText),),
                                        Text("Hace una hora", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle( fontSize: 12, color: AppTheme.lightText))
                                      ],
                                    ),
                                  )
                              ),
                              Icon(Icons.arrow_right, color: AppTheme.grey,),
                              Expanded(
                                  flex: 5,
                                  child: Container(
                                    margin: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Cordinador Académico", maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle( fontSize: 16, color: AppTheme.darkText),),
                                        Text("Zarate Julio", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle( fontSize: 12, color: AppTheme.lightText))
                                      ],
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 8, left: 16, right: 0, bottom: 0),
                          child: Text("Evento dinámico para estudiantes", style: TextStyle( fontSize: 16, color: AppTheme.darkText, fontFamily: AppTheme.fontName, )),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 0, left: 16, right: 0, bottom: 0),
                          child: Text("Desfile intitucional por grados academicos, comenzara la convocatoria el dia Jueves 29 de Marzo.", style: TextStyle( fontSize: 16, color: AppTheme.darkText, fontFamily: AppTheme.fontName, fontWeight: FontWeight.w300,)),
                        ),
                        /*
                        * CENTER = none
                        * CENTER_CROP = Cover
                        * CENTER_INSIDE = scaleDown
                        * FIT_CENTER = contain (alignment.center)
                        * FIT_END = contain (alignment.bottomright)
                        * FIT_START = contain (alignment.topleft)
                        * FIT_XY = Fill
                        *
                        * */
                        Container(
                          margin: const EdgeInsets.only(top: 8, left: 0, right: 0, bottom: 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,  // add this
                            children: [
                              ClipRRect(
                                /*borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8.0),
                                        topRight: Radius.circular(8.0),
                                      ),*/
                                child: FancyShimmerImage(
                                  boxFit: BoxFit.cover,
                                  imageUrl: 'https://www.lomasnuevo.net/wp-contentupl/2018/04/flutter.jpg',
                                  errorWidget: Image.network('https://hardzone.es/app/uploads-hardzone.es/2020/08/Error-Error-0x80070422-1.jpg'),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 8, left: 16, right: 0, bottom: 0),
                          child: Row(
                            children: [
                              Container(
                                width:18,
                                height:18,
                                margin: const EdgeInsets.only(top: 0, left: 0, right: 8, bottom: 0),
                                child: Image.asset("assets/fitness_app/evento_like.png"),
                              ),
                              Text("Me gusta", style: TextStyle( fontSize: 12, color: AppTheme.darkText),),
                            ],
                          ),
                        ),
                        Container(
                          margin:  const EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 0),
                          child: Divider(
                            height: 1,
                            color: AppTheme.colorShimmer,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Material(
                              color: Colors.transparent,
                              child: InkWell(
                                  focusColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                                  splashColor: AppTheme.nearlyDarkBlue.withOpacity(0.2),
                                  onTap: () {

                                  },
                                  child:
                                  Container(
                                    padding: const EdgeInsets.only(top: 0, left: 16, right: 16, bottom: 0),
                                    height: 48,
                                    child: Row(
                                      children: [
                                        Container(
                                          width:20,
                                          height:20,
                                          margin: const EdgeInsets.only(top: 0, left: 8, right: 8, bottom: 0),
                                          child: Image.asset("assets/fitness_app/evento_like2.png"),
                                        ),
                                        Text("Me gusta", style: TextStyle( fontSize: 14, color: AppTheme.lightText),),
                                      ],
                                    ),
                                  )
                              ),
                            ),
                            Expanded(child: Container()),
                            Material(
                              color: Colors.transparent,
                              child: InkWell(
                                  focusColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                                  splashColor: AppTheme.nearlyDarkBlue.withOpacity(0.2),
                                  onTap: () {

                                  },
                                  child:
                                  Container(
                                    padding: const EdgeInsets.only(top: 0, left: 16, right: 16, bottom: 0),
                                    height: 48,
                                    child: Row(
                                      children: [
                                        Container(
                                          width:20,
                                          height:20,
                                          margin: const EdgeInsets.only(top: 0, left: 8, right: 8, bottom: 0),
                                          child: Image.asset("assets/fitness_app/evento_shared.png"),
                                        ),
                                        Text("Me gusta", style: TextStyle( fontSize: 14, color: AppTheme.lightText),),
                                      ],
                                    ),
                                  )
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  //color: AppTheme.colorAccent,
                  margin: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // if you need this
                    side: BorderSide(
                      color: Colors.grey.withOpacity(0.2),
                      width: 1,
                    ),
                  ),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 0),
                                child: CachedNetworkImage(
                                    placeholder: (context, url) => CircularProgressIndicator(),
                                    imageUrl: "https://i.blogs.es/594843/chrome/450_1000.jpg",
                                    imageBuilder: (context, imageProvider) => Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(50)),
                                          image: DecorationImage(
                                            image: imageProvider,
                                            fit: BoxFit.cover,
                                          ),
                                        )
                                    )
                                ),
                              ),
                              Expanded(
                                  flex: 6,
                                  child: Container(
                                    margin: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Colegio  CATA PRI-SEC", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle( fontSize: 16, color: AppTheme.darkText),),
                                        Text("Hace una hora", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle( fontSize: 12, color: AppTheme.lightText))
                                      ],
                                    ),
                                  )
                              ),
                              Icon(Icons.arrow_right, color: AppTheme.grey,),
                              Expanded(
                                  flex: 5,
                                  child: Container(
                                    margin: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Cordinador Académico", maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle( fontSize: 16, color: AppTheme.darkText),),
                                        Text("Zarate Julio", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle( fontSize: 12, color: AppTheme.lightText))
                                      ],
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 8, left: 16, right: 0, bottom: 0),
                          child: Text("Evento dinámico para estudiantes", style: TextStyle( fontSize: 16, color: AppTheme.darkText, fontFamily: AppTheme.fontName, )),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 0, left: 16, right: 0, bottom: 0),
                          child: Text("Desfile intitucional por grados academicos, comenzara la convocatoria el dia Jueves 29 de Marzo.", style: TextStyle( fontSize: 16, color: AppTheme.darkText, fontFamily: AppTheme.fontName, fontWeight: FontWeight.w300,)),
                        ),
                        /*
                        * CENTER = none
                        * CENTER_CROP = Cover
                        * CENTER_INSIDE = scaleDown
                        * FIT_CENTER = contain (alignment.center)
                        * FIT_END = contain (alignment.bottomright)
                        * FIT_START = contain (alignment.topleft)
                        * FIT_XY = Fill
                        *
                        * */
                        Container(
                          margin: const EdgeInsets.only(top: 8, left: 0, right: 0, bottom: 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,  // add this
                            children: [
                              ClipRRect(
                                /*borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8.0),
                                        topRight: Radius.circular(8.0),
                                      ),*/
                                child: FancyShimmerImage(
                                  boxFit: BoxFit.cover,
                                  imageUrl: 'https://www.lomasnuevo.net/wp-contentupl/2018/04/flutter.jpg',
                                  errorWidget: Image.network('https://hardzone.es/app/uploads-hardzone.es/2020/08/Error-Error-0x80070422-1.jpg'),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 8, left: 16, right: 0, bottom: 0),
                          child: Row(
                            children: [
                              Container(
                                width:18,
                                height:18,
                                margin: const EdgeInsets.only(top: 0, left: 0, right: 8, bottom: 0),
                                child: Image.asset("assets/fitness_app/evento_like.png"),
                              ),
                              Text("Me gusta", style: TextStyle( fontSize: 12, color: AppTheme.darkText),),
                            ],
                          ),
                        ),
                        Container(
                          margin:  const EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 0),
                          child: Divider(
                            height: 1,
                            color: AppTheme.colorShimmer,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Material(
                              color: Colors.transparent,
                              child: InkWell(
                                  focusColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                                  splashColor: AppTheme.nearlyDarkBlue.withOpacity(0.2),
                                  onTap: () {

                                  },
                                  child:
                                  Container(
                                    padding: const EdgeInsets.only(top: 0, left: 16, right: 16, bottom: 0),
                                    height: 48,
                                    child: Row(
                                      children: [
                                        Container(
                                          width:20,
                                          height:20,
                                          margin: const EdgeInsets.only(top: 0, left: 8, right: 8, bottom: 0),
                                          child: Image.asset("assets/fitness_app/evento_like2.png"),
                                        ),
                                        Text("Me gusta", style: TextStyle( fontSize: 14, color: AppTheme.lightText),),
                                      ],
                                    ),
                                  )
                              ),
                            ),
                            Expanded(child: Container()),
                            Material(
                              color: Colors.transparent,
                              child: InkWell(
                                  focusColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                                  splashColor: AppTheme.nearlyDarkBlue.withOpacity(0.2),
                                  onTap: () {

                                  },
                                  child:
                                  Container(
                                    padding: const EdgeInsets.only(top: 0, left: 16, right: 16, bottom: 0),
                                    height: 48,
                                    child: Row(
                                      children: [
                                        Container(
                                          width:20,
                                          height:20,
                                          margin: const EdgeInsets.only(top: 0, left: 8, right: 8, bottom: 0),
                                          child: Image.asset("assets/fitness_app/evento_shared.png"),
                                        ),
                                        Text("Me gusta", style: TextStyle( fontSize: 14, color: AppTheme.lightText),),
                                      ],
                                    ),
                                  )
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100,
                )
              ])
          )
            ],
          ),
        ),
      ),
    );
  }

}