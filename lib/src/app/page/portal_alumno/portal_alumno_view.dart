import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/app/page/portal_alumno/portal_alumno_controller.dart';
import 'package:padre_mentor/src/app/utils/app_theme.dart';
import 'package:padre_mentor/src/app/widgets/area_list_view.dart';
import 'package:padre_mentor/src/app/widgets/running_view.dart';
import 'package:padre_mentor/src/app/widgets/title_view.dart';
import 'package:padre_mentor/src/app/widgets/workout_view.dart';

class PortalAlumnoView extends View{
  final AnimationController animationController;

  PortalAlumnoView({this.animationController});
  //const PortalAlumnoView({Key key, this.animationController}) : super(key: key);

  @override
  _PortalAlumnoState createState() =>
      _PortalAlumnoState();
}

class _PortalAlumnoState extends ViewState<PortalAlumnoView, PortalAlumnoController> {



  Animation<double> topBarAnimation;

  List<Widget> listViews = <Widget>[];
  final ScrollController scrollController = ScrollController();
  double topBarOpacity = 0.0;

  _PortalAlumnoState() :  super(PortalAlumnoController()){

  }
  @override
  void initViewState(PortalAlumnoController controller) {
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

  }
  @override
  Widget get view => Container(
    color: AppTheme.background,
    child: Container(
      color: AppTheme.background,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: <Widget>[
            Column(
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
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Estudiante',
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
            )
            ,SizedBox(
              height: MediaQuery.of(context).padding.bottom,
            )
          ],
        ),
      ),
    ),
  );


  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 50));
    return true;
  }

}