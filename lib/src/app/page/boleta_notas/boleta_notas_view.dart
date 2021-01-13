import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/app/page/boleta_notas/boleta_nota_controller.dart';
import 'package:padre_mentor/src/app/utils/app_theme.dart';
import 'package:padre_mentor/src/app/utils/hex_color.dart';
import 'package:padre_mentor/src/app/widgets/animation_view.dart';
import 'package:padre_mentor/src/app/widgets/menu_item_view.dart';
import 'package:padre_mentor/src/app/widgets/title_view.dart';
import 'package:padre_mentor/src/app/widgets/workout_view.dart';

class BoletasNotasView extends View {

  @override
  _BoletasNotasViewState createState() => _BoletasNotasViewState();
}


class _BoletasNotasViewState extends ViewState<BoletasNotasView, BoletaNotaController> with TickerProviderStateMixin{
  Animation<double> topBarAnimation;
  final ScrollController scrollController = ScrollController();
  double topBarOpacity = 0.0;
  AnimationController animationController;

  _BoletasNotasViewState() : super(BoletaNotaController());

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 600), vsync: this);

    topBarAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: animationController,
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
    animationController.reset();

    Future.delayed(const Duration(milliseconds: 500), () {
// Here you can write your code
      setState(() {
        animationController.forward();
      });}

    );

    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
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
          animation: animationController,
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
                            left: 8,
                            right: 16,
                            top: 16 - 8.0 * topBarOpacity,
                            bottom: 12 - 8.0 * topBarOpacity),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.arrow_back, color: AppTheme.nearlyBlack, size: 22 + 6 - 6 * topBarOpacity,),
                              onPressed: () {
                                animationController.reverse().then<dynamic>((data) {
                                  if (!mounted) {
                                    return;
                                  }
                                  Navigator.of(context).pop();
                                });
                              },
                            ),
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Boleta de notas',
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
                            ControlledWidgetBuilder<BoletaNotaController>(
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
  List<String> litems = ["1","2","Third","4"];
  Widget getMainTab() {
    return Row(
      children: [
        Expanded(
            child: Container(
                padding: EdgeInsets.only(
                  top: AppBar().preferredSize.height +
                      MediaQuery.of(context).padding.top +
                      0,
                ),
                child: ControlledWidgetBuilder<BoletaNotaController>(
                    builder: (context, controller) {
                      return  CustomScrollView(
                        controller: scrollController,
                        slivers: <Widget>[
                          SliverList(
                              delegate: SliverChildListDelegate(
                                [
                                  Container(
                                    margin: const EdgeInsets.only(top: 24, left: 16, right: 0, bottom: 0),
                                    decoration: BoxDecoration(
                                      color: Colors.amber,
                                      borderRadius: new BorderRadius.only(
                                        topLeft: const Radius.circular(10.0),
                                        topRight: const Radius.circular(10.0),
                                        bottomLeft:const Radius.circular(10.0),
                                        bottomRight: const Radius.circular(10.0),
                                      ),
                                    ),
                                    child: Container(
                                      margin: const EdgeInsets.only(top: 2, left: 8, right: 2, bottom: 2),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: new BorderRadius.only(
                                          topLeft: const Radius.circular(10.0),
                                          topRight: const Radius.circular(10.0),
                                          bottomLeft:const Radius.circular(10.0),
                                          bottomRight: const Radius.circular(10.0),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(child: Container(margin: const EdgeInsets.only(left: 20, right: 8, top: 12, bottom: 12), child: Text("MATEMÁTICA", style: TextStyle(fontFamily: AppTheme.fontName, fontWeight: FontWeight.w400, fontSize: 18)))),
                                          Container(
                                            margin: const EdgeInsets.only(right: 16),
                                            height: 40.0,
                                            width: 40.0,
                                            decoration: BoxDecoration(
                                                color: HexColor("#3a4fc6"),
                                                borderRadius: new BorderRadius.only(
                                                  topLeft: const Radius.circular(10.0),
                                                  topRight: const Radius.circular(10.0),
                                                  bottomLeft:const Radius.circular(10.0),
                                                  bottomRight: const Radius.circular(10.0),
                                                )
                                            ),
                                            child: Center(
                                              child: Text("00", style: TextStyle( color: AppTheme.white, fontFamily: AppTheme.fontName, fontWeight: FontWeight.w400, fontSize: 18)),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 85,
                                    child: Row(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(left: 24),
                                          width: 50,
                                          child: Column(
                                            children: [
                                              Expanded(
                                                  child: Center(
                                                    child:
                                                    Container(
                                                      margin: const EdgeInsets.only(bottom: 4),
                                                      color: Colors.red,
                                                      width: 3,
                                                    ),
                                                  )
                                              ),
                                              Container(
                                                width: 20,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.white,
                                                  border: Border.all(color: Colors.grey, width: 2)
                                                ),
                                                child: Center(
                                                  child: Container(
                                                    width: 10,
                                                    height: 10,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                  child: Center(
                                                    child:
                                                    Container(
                                                      margin: const EdgeInsets.only(top: 4),
                                                      color: Colors.red,
                                                      width: 3,
                                                    ),
                                                  )
                                              )
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                            child:  Container(
                                              decoration: BoxDecoration(
                                                color: Colors.amber,
                                                borderRadius: new BorderRadius.only(
                                                  topLeft: const Radius.circular(10.0),
                                                  topRight: const Radius.circular(10.0),
                                                  bottomLeft:const Radius.circular(10.0),
                                                  bottomRight: const Radius.circular(10.0),
                                                ),
                                              ),
                                              child: Container(
                                                margin: const EdgeInsets.only(top: 2, left: 8, right: 2, bottom: 2),
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: new BorderRadius.only(
                                                    topLeft: const Radius.circular(10.0),
                                                    topRight: const Radius.circular(10.0),
                                                    bottomLeft:const Radius.circular(10.0),
                                                    bottomRight: const Radius.circular(10.0),
                                                  ),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Expanded(child: Container(margin: const EdgeInsets.only(left: 20, right: 8, top: 12, bottom: 12), child: Text("Evaluacion de matematica Evaluacion de matematica", style: TextStyle(fontFamily: AppTheme.fontName, fontWeight: FontWeight.w400, fontSize: 18)))),
                                                    Container(
                                                      margin: const EdgeInsets.only(right: 16),
                                                      height: 40.0,
                                                      width: 40.0,
                                                      decoration: BoxDecoration(
                                                          color: HexColor("#3a4fc6"),
                                                          borderRadius: new BorderRadius.only(
                                                            topLeft: const Radius.circular(10.0),
                                                            topRight: const Radius.circular(10.0),
                                                            bottomLeft:const Radius.circular(10.0),
                                                            bottomRight: const Radius.circular(10.0),
                                                          )
                                                      ),
                                                      child: Center(
                                                        child: Text("00", style: TextStyle( color: AppTheme.white, fontFamily: AppTheme.fontName, fontWeight: FontWeight.w400, fontSize: 18)),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            )
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                          ),
                        ],
                      );
                    })
            )),
        Container(
          width: 40,
          padding: EdgeInsets.only(
            top: AppBar().preferredSize.height +
                MediaQuery.of(context).padding.top +
                0,
          ),
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: litems.length,
              itemBuilder: (BuildContext context, int index) {
                return Center(
                    child:Container(
                      margin: const EdgeInsets.only(top: 0, left: 8, right: 0, bottom: 2),
                      decoration: BoxDecoration(
                        color: AppTheme.colorAccent,
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(10.0),
                          bottomLeft:const Radius.circular(10.0),
                        ),
                      ),
                      child: Container(
                        height: 120,
                        margin: const EdgeInsets.only(top: 1, left: 1, right: 1, bottom: 1),
                        decoration: BoxDecoration(
                          color: AppTheme.colorAccent,
                          borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(10.0),
                            bottomLeft:const Radius.circular(10.0),
                          ),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            focusColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            borderRadius: const BorderRadius.all(Radius.circular(9.0)),
                            splashColor: AppTheme.nearlyDarkBlue.withOpacity(0.8),
                            onTap: () {

                            },
                            child: Center(
                              child: RotatedBox(quarterTurns: 1,
                                  child: Text("BIMESTRE I", style: TextStyle(color: Colors.white, fontFamily: AppTheme.fontName, fontWeight: FontWeight.w600, fontSize: 12), )
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                );
              }
          ),
        )
      ],
    );
  }


}