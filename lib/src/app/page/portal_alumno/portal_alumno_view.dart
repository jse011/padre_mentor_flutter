import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/app/page/asistencia/asistencia_router.dart';
import 'package:padre_mentor/src/app/page/boleta_notas/boleta_notas_router.dart';
import 'package:padre_mentor/src/app/page/comportamiento/comportamiento_router.dart';
import 'package:padre_mentor/src/app/page/cursos/cursos_router.dart';
import 'package:padre_mentor/src/app/page/estado_cuenta/estado_cuenta_router.dart';
import 'package:padre_mentor/src/app/page/evaluacion/evaluacion_router.dart';
import 'package:padre_mentor/src/app/page/horarios/horarios_router.dart';
import 'package:padre_mentor/src/app/page/informacion_evento_agenda/informacion_evento_agenda_view.dart';
import 'package:padre_mentor/src/app/page/portal_alumno/portal_alumno_controller.dart';
import 'package:padre_mentor/src/app/page/prematricula/prematricula_router.dart';
import 'package:padre_mentor/src/app/page/tarea_evaluacion/tarea_evaluacion_router.dart';
import 'package:padre_mentor/src/app/utils/app_theme.dart';
import 'package:padre_mentor/src/app/widgets/animation_view.dart';
import 'package:padre_mentor/src/app/widgets/area_list_view.dart';
import 'package:padre_mentor/src/app/widgets/hijos_view.dart';
import 'package:padre_mentor/src/app/widgets/menu_alumno_list_view.dart';
import 'package:padre_mentor/src/app/widgets/menu_item_view.dart';
import 'package:padre_mentor/src/app/widgets/programa_educativo_view.dart';
import 'package:padre_mentor/src/app/widgets/running_view.dart';
import 'package:padre_mentor/src/app/widgets/title_view.dart';
import 'package:padre_mentor/src/app/widgets/workout_view.dart';
import 'package:padre_mentor/src/data/repositories/moor/data_usuario_configuracion_respository.dart';
import 'package:padre_mentor/src/device/repositories/check_conexion/device_conex_provider.dart';
import 'package:padre_mentor/src/device/repositories/http/device_http_datos_repository.dart';
import 'package:padre_mentor/src/domain/entities/tipo_evento_ui.dart';

class PortalAlumnoView extends View{
  final AnimationController animationController;
  final CarouselController buttonCarouselController = CarouselController();
  PortalAlumnoView({this.animationController});
  //const PortalAlumnoView({Key key, this.animationController}) : super(key: key);

  @override
  _PortalAlumnoState createState() =>
      _PortalAlumnoState(this.buttonCarouselController);

}

class _PortalAlumnoState extends ViewState<PortalAlumnoView, PortalAlumnoController> {

  Animation<double> topBarAnimation;

  List<Widget> listViews = <Widget>[];
  final ScrollController scrollController = ScrollController();
  CarouselController carouselController = CarouselController();
  double topBarOpacity = 0.0;

  int _currentIndex;

  _PortalAlumnoState(buttonCarouselController) :  super(PortalAlumnoController(DeviceCheckConexRepository(), DeviceHttpDatosRepositorio(), DataUsuarioAndRepository()));

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

    Future.delayed(const Duration(milliseconds: 700), () {
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
                            ControlledWidgetBuilder<PortalAlumnoController>(
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

  List<int> list = [1,2,3,4,5];
  int countView = 11;
  Widget getMainListViewUI() {
    return Container(
        padding: EdgeInsets.only(
          top: AppBar().preferredSize.height +
              MediaQuery.of(context).padding.top +
              0,
          bottom: 62 + MediaQuery.of(context).padding.bottom,
        ),
      child: ControlledWidgetBuilder<PortalAlumnoController>(
          builder: (context, controller) {
            int pagePosition = 0;
            if(controller.programaEducativoList!=null&&controller.programaEducativoSelected!=null){
              pagePosition = controller.programaEducativoList.indexWhere((element) => controller.programaEducativoSelected.programaId == element.programaId);


            }else{
              pagePosition = 0;
            }


            return  CustomScrollView(
              controller: scrollController,
              slivers: <Widget>[
                SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        Container(
                          height: 220.0,
                          child: CarouselSlider(
                            options: CarouselOptions(
                              height: 220.0,
                              autoPlay: true,
                              autoPlayInterval: Duration(seconds: 10),
                              autoPlayAnimationDuration: Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              pauseAutoPlayOnTouch: true,
                              //initialPage: pagePosition,
                              aspectRatio: 2.0,
                              viewportFraction: 1,
                              onPageChanged: (index, reason) {
                                //_currentIndex = index;
                                //controller.onSelectedProgramaSelected(controller.programaEducativoList[index]);
                              },
                            ),
                            items:controller.eventoUiList.map((item){

                              Color color;
                              switch(item.tipoEventoUi.tipo){
                                case EventoIconoEnumUI.DEFAULT:
                                  color = Color(0xFF00BCD4);
                                  break;
                                case EventoIconoEnumUI.EVENTO:
                                  color = Color(0xFF4CAF50);
                                  break;
                                case EventoIconoEnumUI.NOTICIA:
                                  color = Color(0xFF03A9F4);
                                  break;
                                case EventoIconoEnumUI.ACTIVIDAD:
                                  color = Color(0xFFFF9800);
                                  break;
                                case EventoIconoEnumUI.TAREA:
                                  color = Color(0xFFE91E63);
                                  break;
                                case EventoIconoEnumUI.CITA:
                                  color = Color(0xFF00BCD4);
                                  break;
                                case EventoIconoEnumUI.AGENDA:
                                  color = Color(0xFFAD3FF8);
                                  break;
                                case EventoIconoEnumUI.TODOS:
                                  color = Color(0xFF00BCD4);
                                  break;
                              }

                              String foto;
                              if (item.tipoEventoUi.tipo == EventoIconoEnumUI.NOTICIA ||
                                  item.tipoEventoUi.tipo == EventoIconoEnumUI.EVENTO || (item.tipoEventoUi.tipo == EventoIconoEnumUI.AGENDA && item.foto!=null&&item.foto.isNotEmpty)){
                                foto = item.foto;
                              }else{
                                foto = null;
                              }

                              return InkWell(
                                onTap: (){
                                  if(item!=null)Navigator.of(context).push(InformacionEventoAgendaView.createRouteAgenda(item));
                                },
                                child: WorkoutView(
                                  animation: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                                      parent: widget.animationController,
                                      curve:
                                      Interval((1 / countView) * 2, 1.0, curve: Curves.fastOutSlowIn))),
                                  animationController: widget.animationController,
                                  titulo1: item.nombreEmisor,
                                  titulo2: item.titulo,
                                  subTitulo: item.rolEmisor,
                                  foto: foto,
                                  colors1: Colors.black,
                                  colors2: color,
                                ),
                              );


                            }).toList(),
                          ),
                        ),
                        AnimationView(
                          animation: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                              parent: widget.animationController,
                              curve:
                              Interval((1 / countView) * 3, 1.0, curve: Curves.fastOutSlowIn))),
                          animationController: widget.animationController,
                          child: TitleView(
                            titleTxt: 'Programa Educativo',
                            subTxt: "Cambiar",
                            onClick: (){
                              if(carouselController!=null)carouselController.nextPage();
                            },
                          ),
                        ),

                        AnimationView(
                          animation: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                              parent: widget.animationController,
                              curve:
                              Interval((1 / countView) * 3, 1.0, curve: Curves.fastOutSlowIn))),
                          animationController: widget.animationController,
                          child:  Container(
                              height: 100.0,
                              child: CarouselSlider(
                                carouselController: carouselController,
                                options: CarouselOptions(
                                  height: 100.0,
                                  autoPlay: false,
                                  autoPlayInterval: Duration(seconds: 3),
                                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                                  autoPlayCurve: Curves.fastOutSlowIn,
                                  pauseAutoPlayOnTouch: true,
                                  initialPage: pagePosition,
                                  aspectRatio: 2.0,
                                  onPageChanged: (index, reason) {
                                    _currentIndex = index;
                                    controller.onSelectedProgramaSelected(controller.programaEducativoList[index]);
                                  },
                                ),
                                items:controller.programaEducativoList.map((item) => ProgramaEducativoView(titulo: item.nombrePrograma, subTitulo: "Año "+item.nombreAnioAcademico+"\n"+item.nombreHijo, foto: item.fotoHijo,)).toList(),
                              ),
                          ),

                        )

                      ],
                    )
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  sliver: SliverGrid(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 16.0,
                        crossAxisSpacing: 16.0,
                        childAspectRatio: 1.0,
                      ),
                      delegate: SliverChildListDelegate(
                          [
                            MenuItemView(
                              animation: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                                  parent: widget.animationController,
                                  curve:
                                  Interval((1 / countView) * 3, 1.0, curve: Curves.fastOutSlowIn))),
                              animationController: widget.animationController,
                              titulo: "Tareas",
                              imagepath: "assets/fitness_app/icono_tarea.svg",
                              onTap: () {
                                var programaEducativo = controller.programaEducativoSelected;
                                if(programaEducativo!=null){
                                  Navigator.of(context).push(TareaEvaluacionRouter.createRouteEvaluacion(programaAcademicoId: programaEducativo.programaId, alumnoId: programaEducativo.hijoId, anioAcademico: programaEducativo.anioAcademicoId, fotoAlumno: programaEducativo.fotoHijo));
                                }
                              },
                            ),
                            MenuItemView(
                              animation: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                                  parent: widget.animationController,
                                  curve:
                                  Interval((1 / countView) * 3, 1.0, curve: Curves.fastOutSlowIn))),
                              animationController: widget.animationController,
                              titulo: "Evaluación",
                              imagepath: "assets/fitness_app/icono_evaluacion.svg",
                              onTap: () {
                                var programaEducativo = controller.programaEducativoSelected;
                                if(programaEducativo!=null){
                                  Navigator.of(context).push(EvaluacionRouter.createRouteEvaluacion(programaAcademicoId: programaEducativo.programaId, alumnoId: programaEducativo.hijoId, anioAcademico: programaEducativo.anioAcademicoId, fotoAlumno: programaEducativo.fotoHijo));
                                }
                              },
                            ),
                            MenuItemView(
                              animation: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                                  parent: widget.animationController,
                                  curve:
                                  Interval((1 / countView) * 3, 1.0, curve: Curves.fastOutSlowIn))),
                              animationController: widget.animationController,
                              titulo: "Asistencia",
                              imagepath: "assets/fitness_app/icono_asistencia.svg",
                              onTap: () {
                                var programaEducativo = controller.programaEducativoSelected;
                                if(programaEducativo!=null){
                                  Navigator.of(context).push(AsistenciaRouter.createRouteAsistencia(programaAcademicoId: programaEducativo.programaId, alumnoId: programaEducativo.hijoId, anioAcademico: programaEducativo.anioAcademicoId, fotoAlumno: programaEducativo.fotoHijo));
                                }
                              },
                            ),
                            MenuItemView(
                              animation: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                                  parent: widget.animationController,
                                  curve:
                                  Interval((1 / countView) * 3, 1.0, curve: Curves.fastOutSlowIn))),
                              animationController: widget.animationController,
                              titulo: "Comportamiento",
                              imagepath: "assets/fitness_app/icono_comportamiento.svg",
                              onTap: () {
                                var programaEducativo = controller.programaEducativoSelected;
                                if(programaEducativo!=null){
                                  Navigator.of(context).push(ComportamientoRouter.createRouteComportamiento(programaAcademicoId: programaEducativo.programaId, alumnoId: programaEducativo.hijoId, anioAcademico: programaEducativo.anioAcademicoId, fotoAlumno: programaEducativo.fotoHijo));
                                }
                              },
                            ),
                            MenuItemView(
                              animation: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                                  parent: widget.animationController,
                                  curve:
                                  Interval((1 / countView) * 3, 1.0, curve: Curves.fastOutSlowIn))),
                              animationController: widget.animationController,
                              titulo: "Horario",
                              imagepath: "assets/fitness_app/icono_horario.svg",
                              onTap: () {
                                var programaEducativo = controller.programaEducativoSelected;
                                if(programaEducativo!=null){
                                  Navigator.of(context).push(HorariosRouter.createRouteHorarios(programaAcademicoId: programaEducativo.programaId, alumnoId: programaEducativo.hijoId, anioAcademico: programaEducativo.anioAcademicoId, fotoAlumno: programaEducativo.fotoHijo));
                                }
                              },
                            ),
                            MenuItemView(
                              animation: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                                  parent: widget.animationController,
                                  curve:
                                  Interval((1 / countView) * 3, 1.0, curve: Curves.fastOutSlowIn))),
                              animationController: widget.animationController,
                              titulo: "Cursos",
                              imagepath: "assets/fitness_app/icono_curso.svg",
                              onTap: () {
                                var programaEducativo = controller.programaEducativoSelected;
                                if(programaEducativo!=null){
                                  Navigator.of(context).push(CursosRouter.createRouteCursosRouter(programaAcademicoId: programaEducativo.programaId, alumnoId: programaEducativo.hijoId, anioAcademico: programaEducativo.anioAcademicoId, fotoAlumno: programaEducativo.fotoHijo));
                                }
                              },
                            ),
                            MenuItemView(
                              animation: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                                  parent: widget.animationController,
                                  curve:
                                  Interval((1 / countView) * 3, 1.0, curve: Curves.fastOutSlowIn))),
                              animationController: widget.animationController,
                              titulo: "Boleta de Nota",
                              imagepath: "assets/fitness_app/icono_boleta.svg",
                              onTap: () {
                                var programaEducativo = controller.programaEducativoSelected;
                                if(programaEducativo!=null){
                                  Navigator.of(context).push(BoletaNotasRouter.createRouteBoletaNotas(programaAcademicoId: programaEducativo.programaId, alumnoId: programaEducativo.hijoId, anioAcademico: programaEducativo.anioAcademicoId, fotoAlumno: programaEducativo.fotoHijo));
                                }
                              },
                            ),
                            MenuItemView(
                              animation: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                                  parent: widget.animationController,
                                  curve:
                                  Interval((1 / countView) * 3, 1.0, curve: Curves.fastOutSlowIn))),
                              animationController: widget.animationController,
                              titulo: "Pago en línea",
                              imagepath: "assets/fitness_app/icono_pago.svg",
                              onTap: () {
                                var programaEducativo = controller.programaEducativoSelected;
                                if(programaEducativo!=null){
                                  Navigator.of(context).push(EstadoCuentaRouter.createRouteEstadoCuenta(alumnoId: programaEducativo.hijoId, fotoAlumno: programaEducativo.fotoHijo));
                                }
                              },
                            ),
                            if(controller.showPrematricula??false)
                              MenuItemView(
                                animation: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                                    parent: widget.animationController,
                                    curve:
                                    Interval((1 / countView) * 3, 1.0, curve: Curves.fastOutSlowIn))),
                                animationController: widget.animationController,
                                titulo: controller.tituloPrematricula??"",
                                imagepath: "assets/fitness_app/icono_prematricula.svg",
                                onTap: () {
                                  var programaEducativo = controller.programaEducativoSelected;
                                  if(programaEducativo!=null){
                                    Navigator.of(context).push(PrematriculaRouter.createRoutePrematricula(alumnoId: programaEducativo.hijoId, fotoAlumno: programaEducativo.fotoHijo));
                                  }
                                },
                              )
                          ]
                      )
                  ),
                ),
                //https://www.flaticon.es/packs/online-learning-192?k=1611187904419
                SliverList(
                    delegate: SliverChildListDelegate(
                      [
                       Container(
                         height: 100,
                       )

                      ],
                    )
                ),
              ],
            );
          })
      );
    /*ListView.builder(
      controller: scrollController,
      padding: EdgeInsets.only(
        top: AppBar().preferredSize.height +
            MediaQuery.of(context).padding.top +
            24,
        bottom: 62 + MediaQuery.of(context).padding.bottom,
      ),
      itemCount: listViews.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) {
        widget.animationController.forward();
        return listViews[index];
      },
    );*/
  }
}

class BodyWidget extends StatelessWidget {
  final Color color;

  BodyWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: color,
      alignment: Alignment.center,

    );
  }
}

