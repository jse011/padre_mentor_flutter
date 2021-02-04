import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:padre_mentor/src/app/page/tarea_evaluacion/tarea_evaluacion_controller.dart';
import 'package:padre_mentor/src/app/utils/app_theme.dart';
import 'package:padre_mentor/src/app/utils/hex_color.dart';
import 'package:padre_mentor/src/app/widgets/animation_view.dart';
import 'package:padre_mentor/src/data/repositories/moor/data_curso_repository.dart';
import 'package:padre_mentor/src/data/repositories/moor/data_usuario_configuracion_respository.dart';
import 'package:padre_mentor/src/device/repositories/http/device_http_datos_repository.dart';
import 'package:padre_mentor/src/domain/entities/curso_ui.dart';
import 'package:padre_mentor/src/domain/entities/evaluacion_rubro_ui.dart';
import 'package:padre_mentor/src/domain/entities/rubro_evaluacion_ui.dart';
import 'package:padre_mentor/src/domain/entities/tarea_eval_curso_ui.dart';
import 'package:padre_mentor/src/domain/entities/tipo_nota_enum_ui.dart';

class TareaEvaluacionView extends View{
  final int alumnoId;
  final int programaAcademicoId;
  final int anioAcademicoId;
  final String fotoAlumno;

  TareaEvaluacionView({this.alumnoId, this.programaAcademicoId, this.anioAcademicoId, this.fotoAlumno});

  @override
  _TareaEvaluacionViewState createState() => _TareaEvaluacionViewState(alumnoId, programaAcademicoId, anioAcademicoId, fotoAlumno);

}

class _TareaEvaluacionViewState extends ViewState<TareaEvaluacionView, TareaEvaluacionController> with TickerProviderStateMixin{
  _TareaEvaluacionViewState(alumnoId, programaAcademicoId, anioAcademicoId, fotoAlumno) : super(TareaEvaluacionController(alumnoId, programaAcademicoId, anioAcademicoId, fotoAlumno, DataUsuarioAndRepository(),DataCursoRepository(), DeviceHttpDatosRepositorio()));
  Animation<double> topBarAnimation;
  final ScrollController scrollController = ScrollController();
  double topBarOpacity = 0.0;
  AnimationController animationController;

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
  Widget get view => Container(
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
                                  'Tarea',
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
                            ControlledWidgetBuilder<TareaEvaluacionController>(
                              builder: (context, controller) {
                                if(false){
                                  return Padding(
                                    padding: EdgeInsets.fromLTRB (00.0, 00.0, 00.0, 00.0),
                                  );
                                }else{
                                  return CachedNetworkImage(
                                      placeholder: (context, url) => CircularProgressIndicator(),
                                      imageUrl: controller.fotoAlumno,
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

  int countView = 4;
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
                child: AnimationView(
                  animation: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                      parent: animationController,
                      curve:
                      Interval((1 / countView) * 3, 1.0, curve: Curves.fastOutSlowIn))),
                  animationController: animationController,
                  child:  ControlledWidgetBuilder<TareaEvaluacionController>(
                      builder: (context, controller) {
                        if(controller.msgConexion!=null&&controller.msgConexion.isNotEmpty){
                          Fluttertoast.showToast(
                            msg: controller.msgConexion,
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                          );
                          controller.successMsg();
                        }
                        return Stack(
                          children: [
                            CustomScrollView(
                              controller: scrollController,
                              slivers: <Widget>[
                                SliverList(
                                    delegate: SliverChildListDelegate([
                                      Card(
                                        color: AppTheme.colorAccent ,
                                        margin: const EdgeInsets.only(top: 24, left: 16, right: 0, bottom: 0),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10), // if you need this
                                          side: BorderSide(
                                            color: Colors.grey.withOpacity(0.2),
                                            width: 1,
                                          ),
                                        ),
                                        child: Container(
                                          margin: const EdgeInsets.only(top: 2, left: 8, right: 2, bottom: 2),
                                          height: 60,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: new BorderRadius.only(
                                              topLeft: const Radius.circular(10.0),
                                              topRight: const Radius.circular(10.0),
                                              bottomLeft:const Radius.circular(10.0),
                                              bottomRight: const Radius.circular(10.0),
                                            ),
                                          ),
                                          child:  Row(
                                            /* switch (o.evalEstado){
                                                                            case TareaEvalEstadoEnumUi.SINFECHA:
                                                                              return  AppTheme.grey;
                                                                            case TareaEvalEstadoEnumUi.HA_ENTREGAR:
                                                                              return AppTheme.black;
                                                                            case TareaEvalEstadoEnumUi.HA_ENTREGAR_RETRAZO:
                                                                              return AppTheme.deepOrangeAccent4;
                                                                            case TareaEvalEstadoEnumUi.ENTREGADO:
                                                                              //return AppTheme.greenAccent3;
                                                                              return AppTheme.blueAccent4;
                                                                          }*/
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin: const EdgeInsets.only(left: 0, right: 16),
                                                width: 70,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text(controller.cantSinCalificar.toString(), maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(color: AppTheme.deepOrangeAccent4, fontFamily: AppTheme.fontName, fontWeight: FontWeight.w700, fontSize: 18)),
                                                    Text('Sin calificar', maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(color: AppTheme.greyDarken1, fontFamily: AppTheme.fontName, fontWeight: FontWeight.w400, fontSize: 10)),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(left: 0, right: 16),
                                                width: 70,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text(controller.cantCalificado.toString(), maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(color: AppTheme.blueAccent4, fontFamily: AppTheme.fontName, fontWeight: FontWeight.w700, fontSize: 18)),
                                                    Text('Calificado', maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(color: AppTheme.greyDarken1, fontFamily: AppTheme.fontName, fontWeight: FontWeight.w400, fontSize: 10)),
                                                  ],
                                                ),
                                              ),

                                              Container(
                                                margin: const EdgeInsets.only(left: 0, right: 16),
                                                width: 60,

                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text((controller.cantCalificado+controller.cantSinCalificar).toString(), maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(color: AppTheme.black, fontFamily: AppTheme.fontName, fontWeight: FontWeight.w700, fontSize: 18)),
                                                    Text('Total', maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(color: AppTheme.greyDarken1, fontFamily: AppTheme.fontName, fontWeight: FontWeight.w400, fontSize: 10)),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ])
                                ),
                                SliverList(
                                  delegate: SliverChildBuilderDelegate(
                                        (BuildContext context, int index){
                                          dynamic o = controller.rubroEvaluacionList[index];
                                          if(o is CursoUi){
                                            return Card(
                                              color: o.colorCurso == null ? AppTheme.colorAccent : HexColor(o.colorCurso),
                                              margin: const EdgeInsets.only(top: 24, left: 16, right: 0, bottom: 8),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10), // if you need this
                                                side: BorderSide(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  width: 1,
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
                                                    Expanded(child: Container(margin: const EdgeInsets.only(left: 20, right: 8, top: 12, bottom: 12), child: Text(o.nombre??'', style: TextStyle(fontFamily: AppTheme.fontName, fontWeight: FontWeight.w500, fontSize: 20)))),
                                                  ],
                                                ),
                                              ),
                                            );
                                          }else if(o is TareaEvaluacionCursoUi){
                                            return  Container(
                                              height: 100,
                                              child: Row(
                                                children: [
                                                  Container(
                                                    margin: const EdgeInsets.only(left: 24),
                                                    child: Column(
                                                      children: [
                                                        Expanded(
                                                            child: Center(
                                                              child:
                                                              Container(
                                                                margin: const EdgeInsets.only(bottom: 4),
                                                                color: o.cursoUi.colorCurso2 == null || o.cursoUi.colorCurso2.isEmpty ?  Colors.black :  HexColor(o.cursoUi.colorCurso2),
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
                                                              border: Border.all(color:   HexColor("#757575") , width: 2)
                                                          ),
                                                          child: Center(
                                                            child: Container(
                                                              width: 9,
                                                              height: 9,
                                                              decoration: BoxDecoration(
                                                                shape: BoxShape.circle,
                                                                color:   HexColor("#757575"),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                            child: Center(
                                                              child:
                                                              Container(
                                                                margin: const EdgeInsets.only(top: 4),
                                                                color:o.cursoUi.colorCurso2 == null || o.cursoUi.colorCurso2.isEmpty ?  Colors.black :  HexColor(o.cursoUi.colorCurso2),
                                                                width: 3,
                                                              ),
                                                            )
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                      child:  Card(
                                                        color: AppTheme.colorCard,
                                                        margin: const EdgeInsets.only(top: 8, left: 8, right: 0, bottom: 8),
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(10), // if you need this
                                                          side: BorderSide(
                                                            color: Colors.grey.withOpacity(0.2),
                                                            width: 1,
                                                          ),
                                                        ),
                                                        child: Container(
                                                          child: Row(
                                                            children: [
                                                              Expanded(
                                                                  child: Container(
                                                                      margin: const EdgeInsets.only(left: 20, right: 8, top: 16, bottom: 12),
                                                                      child: Column(
                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(o.tituloTarea??'', maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle(fontFamily: AppTheme.fontName, fontWeight: FontWeight.w400, fontSize: 12)),
                                                                          SizedBox(height: 4),
                                                                          Text(o.nombreDocente??'', maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontFamily: AppTheme.fontName, fontWeight: FontWeight.w300, fontSize: 10)),
                                                                        ],
                                                                      )
                                                                  )
                                                              ),
                                                              Container(
                                                                margin: const EdgeInsets.only(left: 0, right: 8),
                                                                width: 48,
                                                                child: Column(
                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                  children: [
                                                                    Text(o.finDiaSemana??'', maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.black54, fontFamily: AppTheme.fontName, fontWeight: FontWeight.w500, fontSize: 10)),
                                                                    Text(o.finDia??'--', maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(
                                                                        color:((){
                                                                          switch (o.evalEstado){
                                                                            case TareaEvalEstadoEnumUi.SINFECHA:
                                                                              return  AppTheme.grey;
                                                                            case TareaEvalEstadoEnumUi.HA_ENTREGAR:
                                                                              return AppTheme.black;
                                                                            case TareaEvalEstadoEnumUi.HA_ENTREGAR_RETRAZO:
                                                                              return AppTheme.deepOrangeAccent4;
                                                                            case TareaEvalEstadoEnumUi.ENTREGADO:
                                                                              //return AppTheme.greenAccent3;
                                                                              return AppTheme.blueAccent4;
                                                                          }
                                                                        }()),
                                                                        fontFamily: AppTheme.fontName, fontWeight: FontWeight.w700, fontSize: 12)),
                                                                    Text(o.finMes??'', maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.black54, fontFamily: AppTheme.fontName, fontWeight: FontWeight.w500, fontSize: 10)),
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                margin: const EdgeInsets.only(left: 0, right: 0),
                                                                width: 46,
                                                                child: Column(
                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                  children: [
                                                                    Text(o.incioDiaSemana??'-', maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.black54, fontFamily: AppTheme.fontName, fontWeight: FontWeight.w500, fontSize: 10)),
                                                                    Text(o.incioDia??'-', maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(color: AppTheme.black, fontFamily: AppTheme.fontName, fontWeight: FontWeight.w700, fontSize: 12)),
                                                                    Text(o.incioMes??'-', maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.black54, fontFamily: AppTheme.fontName, fontWeight: FontWeight.w500, fontSize: 10)),
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                margin: const EdgeInsets.only(right: 8),
                                                                width: 50.0,
                                                                child: (() {

                                                                  if(o.rubroEvaluacionId!=null&&o.rubroEvaluacionId.length>0){
                                                                    switch(o.tipoNotaEnum){
                                                                      case TipoNotaEnumUi.VALOR_NUMERICO:
                                                                        return Center(
                                                                          child: Text(o.nota, style: TextStyle(fontFamily: AppTheme.fontName, fontWeight: FontWeight.w700, fontSize: 20)),
                                                                        );
                                                                      case TipoNotaEnumUi.SELECTOR_NUMERICO:
                                                                        return Center(
                                                                          child: Text(o.nota, style: TextStyle(fontFamily: AppTheme.fontName, fontWeight: FontWeight.w700, fontSize: 20)),
                                                                        );
                                                                      case TipoNotaEnumUi.SELECTOR_VALORES:
                                                                        return Center(
                                                                          child: Text(o.tituloNota, style: TextStyle(fontFamily: AppTheme.fontName, fontWeight: FontWeight.w700, fontSize: 20)),
                                                                        );
                                                                      case TipoNotaEnumUi.SELECTOR_ICONOS:
                                                                        return Column(
                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                                          children: [
                                                                            o.iconoNota != null && o.iconoNota.length > 0 ? CachedNetworkImage(
                                                                                height: 30.0,
                                                                                width: 30.0,
                                                                                placeholder: (context, url) => CircularProgressIndicator(),
                                                                                imageUrl: o.iconoNota,
                                                                                imageBuilder: (context, imageProvider) => Container(
                                                                                    decoration: BoxDecoration(
                                                                                      borderRadius: BorderRadius.all(Radius.circular(30)),
                                                                                      image: DecorationImage(
                                                                                        image: imageProvider,
                                                                                        fit: BoxFit.cover,
                                                                                      ),
                                                                                    )
                                                                                )
                                                                            ) : Container(),
                                                                            SizedBox(height: 4),
                                                                            Text(o.descNota, textAlign: TextAlign.center, style: TextStyle(fontFamily: AppTheme.fontName, fontWeight: FontWeight.w500, fontSize: 9))
                                                                          ],
                                                                        );
                                                                      case TipoNotaEnumUi.VALOR_ASISTENCIA:
                                                                        return Center(
                                                                          child: Text(o.nota, style: TextStyle(fontFamily: AppTheme.fontName, fontWeight: FontWeight.w700, fontSize: 20)),
                                                                        );
                                                                    }
                                                                  }


                                                                }()),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      )
                                                  )
                                                ],
                                              ),
                                            );
                                          }else{
                                            return Container();
                                          }

                                    },
                                    childCount: controller.rubroEvaluacionList.length,
                                  ),

                                ),
                              ],
                            ),
                            controller.isLoading ?  Container(child: Center(
                              child: CircularProgressIndicator(),
                            )): Container(),
                          ],
                        );
                      }),
                )
            )),
        Container(
            width: 32,
            padding: EdgeInsets.only(
              top: AppBar().preferredSize.height +
                  MediaQuery.of(context).padding.top +
                  0,
            ),
            child:
            AnimationView(
              animation: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                  parent: animationController,
                  curve:
                  Interval((1 / countView) * 3, 1.0, curve: Curves.fastOutSlowIn))),
              animationController: animationController,
              child: ControlledWidgetBuilder<TareaEvaluacionController>(
                  builder: (context, controller) {
                    return ListView.builder(
                        shrinkWrap: true,
                        itemCount: controller.calendarioPeriodoList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Center(
                              child:Container(
                                margin: const EdgeInsets.only(top: 0, left: 8, right: 0, bottom: 0),
                                decoration: BoxDecoration(
                                  color: AppTheme.colorAccent,
                                  borderRadius: new BorderRadius.only(
                                    topLeft: const Radius.circular(10.0),
                                    bottomLeft:const Radius.circular(10.0),
                                  ),
                                ),
                                child: Container(
                                  height: 110,
                                  margin: const EdgeInsets.only(top: 1, left: 1, right: 1, bottom: 1),
                                  decoration: BoxDecoration(
                                    color:controller.calendarioPeriodoList[index].selected ? AppTheme.white: AppTheme.colorAccent,
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
                                        controller.onSelectedCalendarioPeriodo(controller.calendarioPeriodoList[index]);
                                      },
                                      child: Center(
                                        child: RotatedBox(quarterTurns: 1,
                                            child: Text(controller.calendarioPeriodoList[index].nombre?.toUpperCase(), style: TextStyle(color: controller.calendarioPeriodoList[index].selected ? AppTheme.colorAccent: AppTheme.white, fontFamily: AppTheme.fontName, fontWeight: FontWeight.w600, fontSize: 9), )
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                          );
                        }
                    );
                  }),
            )
        )
      ],
    );
  }
}