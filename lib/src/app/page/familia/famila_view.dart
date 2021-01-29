import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/app/page/familia/famila_controller.dart';
import 'package:padre_mentor/src/app/utils/app_theme.dart';
import 'package:padre_mentor/src/app/widgets/animation_view.dart';
import 'package:padre_mentor/src/app/widgets/custom_expansion_tile.dart';

class FamiliaView extends View{

  final AnimationController animationController;
  ValueNotifier<Key> _expanded = ValueNotifier(null);
  FamiliaView({this.animationController});

  @override
  _FamiliaViewState createState() => _FamiliaViewState();

}

class _FamiliaViewState extends ViewState<FamiliaView, FamiliaController>{
  Animation<double> topBarAnimation;

  List<Widget> listViews = <Widget>[];
  final ScrollController scrollController = ScrollController();
  double topBarOpacity = 0.0;

  _FamiliaViewState() : super(FamiliaController());


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
          getMainListViewUI(),
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
                                  'Mi perfil',
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
                            ControlledWidgetBuilder<FamiliaController>(
                              builder: (context, controller) {
                                if(controller.hijoSelected==null){
                                  return Padding(
                                    padding: EdgeInsets.fromLTRB (00.0, 00.0, 00.0, 00.0),
                                  );
                                }else{
                                  return CachedNetworkImage(
                                      placeholder: (context, url) => CircularProgressIndicator(),
                                      imageUrl:controller.hijoSelected == null ? '' : '${controller.hijoSelected.foto}',
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

  int countView = 11;
  Widget getMainListViewUI() {
    return Container(
        padding: EdgeInsets.only(
          top: AppBar().preferredSize.height +
              MediaQuery
                  .of(context)
                  .padding
                  .top +
              0,
          bottom: 62 + MediaQuery
              .of(context)
              .padding
              .bottom,
        ),
        child: ControlledWidgetBuilder<FamiliaController>(
            builder: (context, controller) {
              return CustomScrollView(
                controller: scrollController,
                slivers: <Widget>[
                  SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 48, top: 16),
                                child: CachedNetworkImage(
                                    placeholder: (context, url) => CircularProgressIndicator(),
                                    imageUrl:controller.hijoSelected == null ? '' : '${controller.hijoSelected.foto}',
                                    imageBuilder: (context, imageProvider) => Container(
                                        height: 80,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(8)),
                                          image: DecorationImage(
                                            image: imageProvider,
                                            fit: BoxFit.cover,
                                          ),
                                          boxShadow: <BoxShadow>[
                                            BoxShadow(color: AppTheme.grey.withOpacity(0.2), offset: const Offset(1.0, 1.0), blurRadius: 1),
                                          ]
                                        )
                                    )
                                ),
                              ),
                             Expanded(
                                 child:  Container(
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Container(
                                         padding: const EdgeInsets.only(top: 24, left: 8, right: 24),
                                         child: Text("Pablo Iso Matias Venabente ", maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18),),
                                       ),
                                       Padding(
                                         padding: const EdgeInsets.only(top: 8, left: 8),
                                         child: Text("EDITAR DATOS USUARIO", style: TextStyle(fontSize: 10),),
                                       ),
                                     ],
                                   ),
                                 )
                             )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 48, top: 8, right: 24),
                            child: Divider(),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(left: 48, top: 8, right: 24),
                              child: Text("INFORMACIÓN BÁSICA", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.colorAccent)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 48, top: 8, right: 24),
                            child: Text("EDAD", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.lightText.withOpacity(0.7))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 48, top: 8, right: 24),
                            child: Text("47 años (19 de noviembre 1970)", style: TextStyle(fontSize: 16)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 48, top: 16, right: 24),
                            child: Divider(),
                          ),
                         Container(
                             padding: const EdgeInsets.only(left: 48,  right: 24),
                           child:  Row(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Expanded(
                                    flex: 4,
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Padding(
                                         padding: const EdgeInsets.only( top: 8),
                                         child: Text("TELEFONO", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.lightText.withOpacity(0.7))),
                                       ),
                                       Padding(
                                         padding: const EdgeInsets.only( top: 8),
                                         child: Text("986994366", style: TextStyle(fontSize: 16)),
                                       ),
                                     ],
                                   )
                               ),
                               Expanded(
                                   flex: 6,
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Padding(
                                         padding: const EdgeInsets.only(top: 8),
                                         child: Text("CORREO", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.lightText.withOpacity(0.7))),
                                       ),
                                       Padding(
                                         padding: const EdgeInsets.only( top: 8),
                                         child: Text("Jsefao011@Gmail.com", style: TextStyle(fontSize: 16)),
                                       ),
                                     ],
                                   )
                               )
                             ],
                           ),
                         ),
                          Padding(
                            padding: const EdgeInsets.only(left: 48, top: 16, right: 24),
                            child: Divider(),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 48, top: 8, right: 24),
                            child: Text("MI FAMILIA", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.colorAccent)),
                          ),
                        ],
                      )
                  ),
                  SliverList(
                      delegate: SliverChildListDelegate(
                          [
                            Container(
                              padding: const EdgeInsets.only(left: 36, top: 8, right: 24),
                              child: Theme(
                                data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                                child: CustomExpansionTile(
                                  expandedItem: widget._expanded,
                                  key: Key("1"),
                                  title: Container(
                                    margin: const EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
                                    padding: const EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Jose Francisco Arias Orexano", maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle( fontSize: 14, color: AppTheme.darkerText, fontWeight: FontWeight.w500),),
                                        Text("Hijo", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle( fontSize: 14, color: AppTheme.lightText.withOpacity(0.9), fontWeight: FontWeight.w500),),
                                      ],
                                    )


                                  ),
                                  /*trailing: Container(
                                  height: 10,
                                  width: 10,
                                ),*/
                                  leading: CachedNetworkImage(
                                      height: 50,
                                      width: 50,
                                      placeholder: (context, url) => CircularProgressIndicator(),
                                      imageUrl: 'https://lh3.googleusercontent.com/proxy/jb3iEWldSzCvd0ZbjdZukO_gibiTJKZyb25IEwpusK4zQRa8ilZ1c1Ys4jqLcyEUx3D3Cyc4dfJGfauzZQbSWthoqCN-8XFWBmA6hKf7csXcfCozP93EKAKOViXX_jzSgff9-jqHJFrxGDadqWSMFQRuI2s5R2JgpVA',
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 14, top: 8, right: 0),
                                      child: Text("INFORMACIÓN BÁSICA", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.colorAccent)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 14, top: 8, right: 24),
                                      child: Text("EDAD", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.lightText.withOpacity(0.7))),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 14, top: 8, right: 24),
                                      child: Text("47 años (19 de noviembre 1970)", style: TextStyle(fontSize: 16)),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(left: 14,  right: 24),
                                      child:  Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                              flex: 4,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only( top: 8),
                                                    child: Text("TELEFONO", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.lightText.withOpacity(0.7))),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only( top: 8),
                                                    child: Text("986994366", style: TextStyle(fontSize: 16)),
                                                  ),
                                                ],
                                              )
                                          ),
                                          Expanded(
                                              flex: 6,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 8),
                                                    child: Text("CORREO", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.lightText.withOpacity(0.7))),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only( top: 8),
                                                    child: Text("Jsefao011@Gmail.com", style: TextStyle(fontSize: 16)),
                                                  ),
                                                ],
                                              )
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 48, top: 16, right: 24),
                                      child: Divider(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 36, top: 8, right: 24),
                              child: Theme(
                                data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                                child: CustomExpansionTile(
                                  expandedItem: widget._expanded,
                                  key: Key("2"),
                                  title: Container(
                                      margin: const EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
                                      padding: const EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Jose Francisco Arias Orexano", maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle( fontSize: 14, color: AppTheme.darkerText, fontWeight: FontWeight.w500),),
                                          Text("Hijo", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle( fontSize: 14, color: AppTheme.lightText.withOpacity(0.9), fontWeight: FontWeight.w500),),
                                        ],
                                      )


                                  ),
                                  /*trailing: Container(
                                  height: 10,
                                  width: 10,
                                ),*/
                                  leading: CachedNetworkImage(
                                      height: 50,
                                      width: 50,
                                      placeholder: (context, url) => CircularProgressIndicator(),
                                      imageUrl: 'https://lh3.googleusercontent.com/proxy/jb3iEWldSzCvd0ZbjdZukO_gibiTJKZyb25IEwpusK4zQRa8ilZ1c1Ys4jqLcyEUx3D3Cyc4dfJGfauzZQbSWthoqCN-8XFWBmA6hKf7csXcfCozP93EKAKOViXX_jzSgff9-jqHJFrxGDadqWSMFQRuI2s5R2JgpVA',
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 14, top: 8, right: 0),
                                      child: Text("INFORMACIÓN BÁSICA", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.colorAccent)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 14, top: 8, right: 24),
                                      child: Text("EDAD", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.lightText.withOpacity(0.7))),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 14, top: 8, right: 24),
                                      child: Text("47 años (19 de noviembre 1970)", style: TextStyle(fontSize: 16)),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(left: 14,  right: 24),
                                      child:  Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                              flex: 4,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only( top: 8),
                                                    child: Text("TELEFONO", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.lightText.withOpacity(0.7))),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only( top: 8),
                                                    child: Text("986994366", style: TextStyle(fontSize: 16)),
                                                  ),
                                                ],
                                              )
                                          ),
                                          Expanded(
                                              flex: 6,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 8),
                                                    child: Text("CORREO", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.lightText.withOpacity(0.7))),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only( top: 8),
                                                    child: Text("Jsefao011@Gmail.com", style: TextStyle(fontSize: 16)),
                                                  ),
                                                ],
                                              )
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 48, top: 16, right: 24),
                                      child: Divider(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 36, top: 8, right: 24),
                              child: Theme(
                                data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                                child: CustomExpansionTile(
                                  expandedItem: widget._expanded,
                                  key: Key("3"),
                                  title: Container(
                                      margin: const EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
                                      padding: const EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Jose Francisco Arias Orexano", maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle( fontSize: 14, color: AppTheme.darkerText, fontWeight: FontWeight.w500),),
                                          Text("Padre", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle( fontSize: 14, color: AppTheme.lightText.withOpacity(0.9), fontWeight: FontWeight.w500),),
                                        ],
                                      )


                                  ),
                                  /*trailing: Container(
                                  height: 10,
                                  width: 10,
                                ),*/
                                  leading: CachedNetworkImage(
                                      height: 50,
                                      width: 50,
                                      placeholder: (context, url) => CircularProgressIndicator(),
                                      imageUrl: 'https://lh3.googleusercontent.com/proxy/jb3iEWldSzCvd0ZbjdZukO_gibiTJKZyb25IEwpusK4zQRa8ilZ1c1Ys4jqLcyEUx3D3Cyc4dfJGfauzZQbSWthoqCN-8XFWBmA6hKf7csXcfCozP93EKAKOViXX_jzSgff9-jqHJFrxGDadqWSMFQRuI2s5R2JgpVA',
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 14, top: 8, right: 0),
                                      child: Text("INFORMACIÓN BÁSICA", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.colorAccent)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 14, top: 8, right: 24),
                                      child: Text("EDAD", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.lightText.withOpacity(0.7))),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 14, top: 8, right: 24),
                                      child: Text("47 años (19 de noviembre 1970)", style: TextStyle(fontSize: 16)),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(left: 14,  right: 24),
                                      child:  Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                              flex: 4,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only( top: 8),
                                                    child: Text("TELEFONO", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.lightText.withOpacity(0.7))),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only( top: 8),
                                                    child: Text("986994366", style: TextStyle(fontSize: 16)),
                                                  ),
                                                ],
                                              )
                                          ),
                                          Expanded(
                                              flex: 6,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 8),
                                                    child: Text("CORREO", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.lightText.withOpacity(0.7))),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only( top: 8),
                                                    child: Text("Jsefao011@Gmail.com", style: TextStyle(fontSize: 16)),
                                                  ),
                                                ],
                                              )
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 48, top: 16, right: 24),
                                      child: Divider(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ])),
                ],
              );
            })
    );
  }
}