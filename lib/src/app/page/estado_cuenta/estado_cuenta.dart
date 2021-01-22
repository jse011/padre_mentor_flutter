import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:padre_mentor/src/app/utils/app_theme.dart';
import 'package:padre_mentor/src/app/widgets/animation_view.dart';
import 'package:webview_flutter/webview_flutter.dart';


class EstadoCuenta extends StatefulWidget{
  final String fotoAlumno;
  final int alumnoId;

  EstadoCuenta({this.fotoAlumno, this.alumnoId}):super();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _EstadoCuentaState(this.fotoAlumno, this.alumnoId);
  }


}

class _EstadoCuentaState extends State<EstadoCuenta> with TickerProviderStateMixin {
  final String fotoAlumno;
  final int alumnoId;
  WebViewController _webViewController;
  double _webViewHeight = 1;

  Animation<double> topBarAnimation;
  final ScrollController scrollController = ScrollController();
  double topBarOpacity = 0.0;
  AnimationController animationController;


  _EstadoCuentaState(this.fotoAlumno, this.alumnoId):super();

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
  Widget build(BuildContext context) => Container(
    color: AppTheme.colorPrimary,
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
                              icon: Icon(Icons.arrow_back, color:  topBarOpacity>0.5? AppTheme.nearlyBlack:AppTheme.white, size: 22 + 6 - 6 * topBarOpacity,),
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
                                  'Pago en línea',
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontFamily: AppTheme.fontName,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 22 + 6 - 6 * topBarOpacity,
                                    letterSpacing: 1.2,
                                    color: topBarOpacity>0.5? AppTheme.darkerText:AppTheme.white,
                                  ),
                                ),
                              ),
                            ),
                            CachedNetworkImage(
                                placeholder: (context, url) => CircularProgressIndicator(),
                                imageUrl: fotoAlumno,
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
              ),
            );
          },
        )
      ],
    );
  }

  int countView = 4;
  Widget getMainTab() {
    return Container(
        padding: EdgeInsets.only(
          top: AppBar().preferredSize.height +
              MediaQuery.of(context).padding.top +
              0,
        ),
        child: AnimationView(
          animation: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
              parent: animationController,
              curve:
              Interval((1 / countView) * 3, 1.0, curve: Curves.fastOutSlowIn))),
          animationController: animationController,
          child:  Stack(
            children: [
              SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  children: <Widget>[
                    /*Container(height: 100, color: Colors.green),*/
                    Container(
                      height: _webViewHeight,
                      child: WebView(
                        initialUrl: 'http://educar.icrmedu.com/CRMMovil/PortalAcadMovil.ashx' +'/?misaldo',
                        javascriptMode: JavascriptMode.unrestricted,
                        onPageFinished: (String url) => _onPageFinished(context, url),
                        onWebViewCreated: (controller) async {
                          _webViewController = controller;
                        },
                      ),
                    ),
                    /*Container(height: 100, color: Colors.yellow),*/
                  ],
                ),
              ),

              false?  Container(child: Center(
                child: CircularProgressIndicator(),
              )): Container(),
            ],
          ),
        )
    );
  }

  Future<void> _onPageFinished(BuildContext context, String url) async {
    double newHeight = double.parse(
      await _webViewController.evaluateJavascript("document.documentElement.scrollHeight;"),
    );
    setState(() {
      _webViewHeight = newHeight;
    });
  }
}

