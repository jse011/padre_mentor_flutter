import 'package:cached_network_image/cached_network_image.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/app/page/eventos_agenda/evento_agenda_controller.dart';
import 'package:padre_mentor/src/app/utils/app_theme.dart';
import 'package:padre_mentor/src/domain/entities/evento_ui.dart';
import 'package:padre_mentor/src/domain/entities/tipo_evento_ui.dart';
import 'package:pinch_zoom_image_updated/pinch_zoom_image_updated.dart';

class InformacionEventoAgendaView extends StatefulWidget {
  final EventoUi eventoUi;

  InformacionEventoAgendaView(this.eventoUi);

  @override
  _InformacionEventoAgendaViewState createState() => _InformacionEventoAgendaViewState();

  static Route createRouteAgenda(EventoUi eventoUi) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => InformacionEventoAgendaView(eventoUi),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}

class _InformacionEventoAgendaViewState extends State<InformacionEventoAgendaView> {
  bool widgetImage = false;
  @override
  Widget build(BuildContext context) {
    //Widget widgetImage = Container();


    return Container(
        color: Colors.black.withOpacity(0.7),
        child: Scaffold(
            backgroundColor: Colors.transparent,
          body: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.light,
            child: Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  PinchZoomImage(
                    image: CachedNetworkImage(
                      imageUrl: widget.eventoUi.foto??'',
                      fit: BoxFit.cover,
                    ),
                    //zoomedBackgroundColor: AppTheme.grey.withOpacity(0.7),
                    hideStatusBarWhileZooming: true,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Colors.black.withOpacity(0.4),
                          width: double.infinity,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 0, left: 24, right: 8, bottom: 0),
                                child: CachedNetworkImage(
                                    placeholder: (context, url) => CircularProgressIndicator(),
                                    imageUrl: widget.eventoUi.fotoEntidad??'',
                                    imageBuilder: (context, imageProvider) => Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
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
                                    margin: const EdgeInsets.only(top: 0, left: 8, right: 16, bottom: 0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        //Text(widget.eventoUi.nombreEntidad??'', maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle( fontSize: 16, color: AppTheme.darkText),),
                                        Text(widget.eventoUi.nombreEmisor??'', maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle( fontSize: 16, color: AppTheme.white),),
                                        Text(widget.eventoUi.rolEmisor??'', maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle( fontSize: 12, color: AppTheme.white),),
                                        Text(widget.eventoUi.nombreFecha??'', maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle( fontSize: 12, color: AppTheme.white))
                                      ],
                                    ),
                                  )
                              ),
                              //Icon(Icons.arrow_right, color: AppTheme.grey,),
                              /*Expanded(
                                                  flex: 5,
                                                  child: Container(
                                                    margin: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 0),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text(widget.eventoUi.rolEmisor??'', maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle( fontSize: 16, color: AppTheme.darkText),),
                                                        Text(widget.eventoUi.nombreEmisor??'', maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle( fontSize: 12, color: AppTheme.lightText))
                                                      ],
                                                    ),
                                                  )
                                              ),*/
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.black.withOpacity(0.4),
                          width: double.infinity,
                          padding: const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 0),
                          child: Text(widget.eventoUi.titulo??'', style: TextStyle( fontSize: 18, color: AppTheme.white, fontFamily: AppTheme.fontName, )),
                        ),
                        Container(
                          color: Colors.black.withOpacity(0.4),
                          width: double.infinity,
                          padding: const EdgeInsets.only(top: 0, left: 16, right: 16, bottom: 0),
                          child: Text(widget.eventoUi.descripcion??'', style: TextStyle( fontSize: 18, color: AppTheme.white, fontFamily: AppTheme.fontName, fontWeight: FontWeight.w300,)),
                        ),
                        Expanded(
                            child: Container()
                        ),
                        Container(
                          color: Colors.black.withOpacity(0.4),
                          padding: const EdgeInsets.only(top: 8, left: 16, right: 0, bottom: 0),
                          child: Row(
                            children: [
                              Container(
                                width:18,
                                height:18,
                                margin: const EdgeInsets.only(top: 0, left: 0, right: 8, bottom: 0),
                                child: Image.asset("assets/fitness_app/evento_like.png"),
                              ),
                                  (){
                                String megusta = "me gusta";
                                if(widget.eventoUi.cantLike!=null && widget.eventoUi.cantLike!=0){
                                  megusta =  widget.eventoUi.cantLike.toString() + " me gusta";
                                }else if(widget.eventoUi.cantLike!=null && widget.eventoUi.cantLike>1000){
                                  megusta += "1k me gusta" ;
                                }
                                return Text(megusta, style: TextStyle( fontSize: 12, color: AppTheme.white),);
                              }(),
                              Expanded(
                                child: Container(),
                              ),
                              Text(widget.eventoUi.nombreEntidad??'', maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle( fontSize: 12, color: AppTheme.white, fontStyle: FontStyle.italic),),
                              Padding(padding: const EdgeInsets.only(right: 16))
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.black.withOpacity(0.4),
                          padding:  const EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 0),
                          child: Divider(
                            height: 1,
                            color: AppTheme.colorShimmer,
                          ),
                        ),
                        Container(
                          color: Colors.black.withOpacity(0.4),
                          child:  Row(
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
                                            child: Image.asset("assets/fitness_app/evento_like2.png", color: AppTheme.white),
                                          ),
                                          Text("Me gusta", style: TextStyle( fontSize: 14, color: AppTheme.white),),
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
                                            child: Image.asset("assets/fitness_app/evento_shared.png", color: AppTheme.white,),
                                          ),
                                          Text("Me gusta", style: TextStyle( fontSize: 14, color: AppTheme.white),),
                                        ],
                                      ),
                                    )
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 32,
                    left: 16,
                    child: InkWell(
                      child: Container(
                        width: 50,
                        height: 50,
                        child: Icon(Icons.arrow_back, color: AppTheme.white,),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppTheme.black.withOpacity(0.4)),
                      ),
                      onTap: (){
                        Navigator.of(context).pop();
                      },
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

