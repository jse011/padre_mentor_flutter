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

  _ContactosViewState() : super(ContactosController());

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
                                if(false){
                                  return Padding(
                                    padding: EdgeInsets.fromLTRB (00.0, 00.0, 00.0, 00.0),
                                  );
                                }else{
                                  return CachedNetworkImage(
                                      placeholder: (context, url) => CircularProgressIndicator(),
                                      imageUrl:'https://i.blogs.es/594843/chrome/450_1000.jpg',
                                      imageBuilder: (context, imageProvider) => Container(
                                          height: 50,
                                          width: 50,
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
                                  );
                                }
                              },
                            )
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
          child: DefaultTabController(
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
                        Icon(Icons.directions_car),
                        Icon(Icons.directions_transit),
                        Icon(Icons.directions_bike),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
    );
  }

}