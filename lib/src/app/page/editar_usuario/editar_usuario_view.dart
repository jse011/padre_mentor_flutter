import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/app/page/editar_usuario/editar_usuario_controller.dart';
import 'package:padre_mentor/src/app/utils/app_theme.dart';
import 'package:padre_mentor/src/app/widgets/animation_view.dart';

class EditarUsuarioView extends View{
  bool cabecera = false;

  EditarUsuarioView({this.cabecera = false});

  @override
  _EditarUsuarioViewState createState() => _EditarUsuarioViewState();

}

class _EditarUsuarioViewState extends ViewState<EditarUsuarioView, EditarUsuarioController> with TickerProviderStateMixin {
  Animation<double> topBarAnimation;
  final ScrollController scrollController = ScrollController();
  double topBarOpacity = 0.0;
  AnimationController animationController;
  TextEditingController nameController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController accountController = TextEditingController();

  _EditarUsuarioViewState() : super(EditarUsuarioController());

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
              getAppBarUI()
            ],
          ),
        ),
      );

  int countView = 4;
  @override
  Widget getMainTab(){
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
            child:  ControlledWidgetBuilder<EditarUsuarioController>(
                builder: (context, controller) {
                  return CustomScrollView(
                      controller: scrollController,
                      slivers: <Widget>[
                        SliverList(
                            delegate: SliverChildListDelegate([
                                Center(
                                  child:  Container(
                                    margin: const EdgeInsets.only(top: 48),
                                    height: 120,
                                    width: 120,
                                    padding: const EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppTheme.white,
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(color: AppTheme.grey.withOpacity(0.6), offset: const Offset(2.0, 4.0), blurRadius: 8),
                                      ],
                                    ),
                                    child: Container(
                                        child:  CachedNetworkImage(
                                          placeholder: (context, url) => CircularProgressIndicator(),
                                          imageUrl:'https://safe365.com/blog/content/images/2020/01/Captura-de-Pantalla-2020-01-24-a-la-s--10.02.36.png',
                                          errorWidget: (context, url, error) =>  Icon(Icons.error_outline_rounded, size: 80,),
                                          imageBuilder: (context, imageProvider) => Container(
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(100)),
                                                  image: DecorationImage(
                                                    image: imageProvider,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  boxShadow: <BoxShadow>[
                                                    BoxShadow(color: AppTheme.grey.withOpacity(0.4), offset: const Offset(2.0, 2.0), blurRadius: 6),
                                                  ]
                                              )
                                          ),
                                        )),
                                  ),
                                ),
                              // Textform Field
                              Padding(
                                padding: const EdgeInsets.only(left: 24, right: 24, top: 32),
                                child:  TextFormField(
                                  enabled: false,
                                  maxLength: 50,
                                  autofocus: false,
                                  textAlign: TextAlign.start,
                                  autovalidate: true,
                                  style: Theme.of(context).textTheme.caption.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                  initialValue: "Jose Arias Orezano",
                                  //controller: accountController,
                                  keyboardType: TextInputType.text,
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    labelText: "Nombres",
                                    labelStyle: TextStyle(
                                        color:  AppTheme.colorPrimary,
                                    ),
                                    helperText: "Desabiliado",
                                    contentPadding: EdgeInsets.all(15.0),
                                    prefixIcon: Icon(
                                      Icons.account_circle,
                                      color: AppTheme.colorPrimary,
                                    ),
                                    suffixIcon: Icon(
                                      Icons.account_box,
                                      color: AppTheme.colorPrimary,
                                    ),
                                    errorStyle: Theme.of(context).textTheme.caption.copyWith(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    disabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    hintText: "Ingrese su nombre",
                                    hintStyle: Theme.of(context).textTheme.caption.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    focusColor: AppTheme.colorAccent,
                                  ),
                                  onChanged: (str) {
                                    // To do
                                  },
                                  onSaved: (str) {
                                    //  To do
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
                                child:  TextFormField(
                                  enabled: false,
                                  maxLength: 50,
                                  autofocus: false,
                                  textAlign: TextAlign.start,
                                  autovalidate: true,
                                  style: Theme.of(context).textTheme.caption.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                  initialValue: "24/03/1995",
                                  //controller: accountController,
                                  keyboardType: TextInputType.text,
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    labelText: "Fecha de nacimiento",
                                    labelStyle: TextStyle(
                                      color:  AppTheme.colorPrimary,
                                    ),
                                    helperText: "Desabiliado",
                                    contentPadding: EdgeInsets.all(15.0),
                                    prefixIcon: Icon(
                                      Icons.account_circle,
                                      color: AppTheme.colorPrimary,
                                    ),
                                    suffixIcon: Icon(
                                      Icons.today_outlined,
                                      color: AppTheme.colorPrimary,
                                    ),
                                    errorStyle: Theme.of(context).textTheme.caption.copyWith(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    disabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    hintText: "Ingrese su nombre",
                                    hintStyle: Theme.of(context).textTheme.caption.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    focusColor: AppTheme.colorAccent,
                                  ),
                                  onChanged: (str) {
                                    // To do
                                  },
                                  onSaved: (str) {
                                    //  To do
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
                                child:  TextFormField(
                                  enabled: true,
                                  maxLength: 50,
                                  autofocus: false,
                                  textAlign: TextAlign.start,
                                  autovalidate: true,
                                  style: Theme.of(context).textTheme.caption.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                  initialValue: "+51 986 994 366",
                                  //controller: accountController,
                                  keyboardType: TextInputType.text,
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    labelText: "Número de telefono",
                                    labelStyle: TextStyle(
                                      color:  AppTheme.colorPrimary,
                                    ),
                                    helperText: "Actualice su telefono",
                                    contentPadding: EdgeInsets.all(15.0),
                                    prefixIcon: Icon(
                                      Icons.account_circle,
                                      color: AppTheme.colorPrimary,
                                    ),
                                    suffixIcon: Icon(
                                      Icons.call_end_outlined,
                                      color: AppTheme.colorPrimary,
                                    ),
                                    errorStyle: Theme.of(context).textTheme.caption.copyWith(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    disabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    hintText: "Ingrese su nombre",
                                    hintStyle: Theme.of(context).textTheme.caption.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    focusColor: AppTheme.colorAccent,
                                  ),
                                  onChanged: (str) {
                                    // To do
                                  },
                                  onSaved: (str) {
                                    //  To do
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
                                child:  TextFormField(
                                  enabled: true,
                                  maxLength: 50,
                                  autofocus: false,
                                  textAlign: TextAlign.start,
                                  autovalidate: true,
                                  style: Theme.of(context).textTheme.caption.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                  initialValue: "jsefao011@gmail.com",
                                  //controller: accountController,
                                  keyboardType: TextInputType.text,
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    labelText: "Email",
                                    labelStyle: TextStyle(
                                      color:  AppTheme.colorPrimary,
                                    ),
                                    helperText: "Actualice su correo",
                                    contentPadding: EdgeInsets.all(15.0),
                                    prefixIcon: Icon(
                                      Icons.account_circle,
                                      color: AppTheme.colorPrimary,
                                    ),
                                    suffixIcon: Icon(
                                      Icons.email_outlined,
                                      color: AppTheme.colorPrimary,
                                    ),
                                    errorStyle: Theme.of(context).textTheme.caption.copyWith(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    disabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    hintText: "Ingrese su nombre",
                                    hintStyle: Theme.of(context).textTheme.caption.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    focusColor: AppTheme.colorAccent,
                                  ),
                                  onChanged: (str) {
                                    // To do
                                  },
                                  onSaved: (str) {
                                    //  To do
                                  },
                                ),
                              ),
                            ])
                        ),
                        SliverList(
                            delegate: SliverChildListDelegate([
                              Container(
                                margin: const EdgeInsets.only(top: 32),
                                padding: const EdgeInsets.only(top: 8, left: 24, bottom: 8),
                                color: AppTheme.grey.withOpacity(0.1),
                                child: Text("CUENTA VINCULADA", style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                )),
                              ),
                              Center(
                                child:  Container(
                                  margin: const EdgeInsets.only(top: 48),
                                  height: 120,
                                  width: 120,
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppTheme.white,
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(color: AppTheme.grey.withOpacity(0.6), offset: const Offset(2.0, 4.0), blurRadius: 8),
                                    ],
                                  ),
                                  child: Container(
                                      child:  CachedNetworkImage(
                                        placeholder: (context, url) => CircularProgressIndicator(),
                                        imageUrl:'https://safe365.com/blog/content/images/2020/01/Captura-de-Pantalla-2020-01-24-a-la-s--10.02.36.png',
                                        errorWidget: (context, url, error) =>  Icon(Icons.error_outline_rounded, size: 80,),
                                        imageBuilder: (context, imageProvider) => Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(Radius.circular(100)),
                                                image: DecorationImage(
                                                  image: imageProvider,
                                                  fit: BoxFit.cover,
                                                ),
                                                boxShadow: <BoxShadow>[
                                                  BoxShadow(color: AppTheme.grey.withOpacity(0.4), offset: const Offset(2.0, 2.0), blurRadius: 6),
                                                ]
                                            )
                                        ),
                                      )),
                                ),
                              ),
                              // Textform Field
                              Padding(
                                padding: const EdgeInsets.only(left: 24, right: 24, top: 32),
                                child:  TextFormField(
                                  enabled: false,
                                  maxLength: 50,
                                  autofocus: false,
                                  textAlign: TextAlign.start,
                                  autovalidate: true,
                                  style: Theme.of(context).textTheme.caption.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                  initialValue: "Jose Arias Orezano",
                                  //controller: accountController,
                                  keyboardType: TextInputType.text,
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    labelText: "Nombres",
                                    labelStyle: TextStyle(
                                      color:  AppTheme.colorPrimary,
                                    ),
                                    helperText: "Desabiliado",
                                    contentPadding: EdgeInsets.all(15.0),
                                    prefixIcon: Icon(
                                      Icons.account_circle,
                                      color: AppTheme.colorPrimary,
                                    ),
                                    suffixIcon: Icon(
                                      Icons.account_box,
                                      color: AppTheme.colorPrimary,
                                    ),
                                    errorStyle: Theme.of(context).textTheme.caption.copyWith(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    disabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    hintText: "Ingrese su nombre",
                                    hintStyle: Theme.of(context).textTheme.caption.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    focusColor: AppTheme.colorAccent,
                                  ),
                                  onChanged: (str) {
                                    // To do
                                  },
                                  onSaved: (str) {
                                    //  To do
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
                                child:  TextFormField(
                                  enabled: false,
                                  maxLength: 50,
                                  autofocus: false,
                                  textAlign: TextAlign.start,
                                  autovalidate: true,
                                  style: Theme.of(context).textTheme.caption.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                  initialValue: "24/03/1995",
                                  //controller: accountController,
                                  keyboardType: TextInputType.text,
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    labelText: "Fecha de nacimiento",
                                    labelStyle: TextStyle(
                                      color:  AppTheme.colorPrimary,
                                    ),
                                    helperText: "Desabiliado",
                                    contentPadding: EdgeInsets.all(15.0),
                                    prefixIcon: Icon(
                                      Icons.account_circle,
                                      color: AppTheme.colorPrimary,
                                    ),
                                    suffixIcon: Icon(
                                      Icons.today_outlined,
                                      color: AppTheme.colorPrimary,
                                    ),
                                    errorStyle: Theme.of(context).textTheme.caption.copyWith(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    disabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    hintText: "Ingrese su nombre",
                                    hintStyle: Theme.of(context).textTheme.caption.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    focusColor: AppTheme.colorAccent,
                                  ),
                                  onChanged: (str) {
                                    // To do
                                  },
                                  onSaved: (str) {
                                    //  To do
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
                                child:  TextFormField(
                                  enabled: true,
                                  maxLength: 50,
                                  autofocus: false,
                                  textAlign: TextAlign.start,
                                  autovalidate: true,
                                  style: Theme.of(context).textTheme.caption.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                  initialValue: "+51 986 994 366",
                                  //controller: accountController,
                                  keyboardType: TextInputType.text,
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    labelText: "Número de telefono",
                                    labelStyle: TextStyle(
                                      color:  AppTheme.colorPrimary,
                                    ),
                                    helperText: "Actualice su telefono",
                                    contentPadding: EdgeInsets.all(15.0),
                                    prefixIcon: Icon(
                                      Icons.account_circle,
                                      color: AppTheme.colorPrimary,
                                    ),
                                    suffixIcon: Icon(
                                      Icons.call_end_outlined,
                                      color: AppTheme.colorPrimary,
                                    ),
                                    errorStyle: Theme.of(context).textTheme.caption.copyWith(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    disabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    hintText: "Ingrese su nombre",
                                    hintStyle: Theme.of(context).textTheme.caption.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    focusColor: AppTheme.colorAccent,
                                  ),
                                  onChanged: (str) {
                                    // To do
                                  },
                                  onSaved: (str) {
                                    //  To do
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
                                child:  TextFormField(
                                  enabled: true,
                                  maxLength: 50,
                                  autofocus: false,
                                  textAlign: TextAlign.start,
                                  autovalidate: true,
                                  style: Theme.of(context).textTheme.caption.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                  initialValue: "jsefao011@gmail.com",
                                  //controller: accountController,
                                  keyboardType: TextInputType.text,
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    labelText: "Email",
                                    labelStyle: TextStyle(
                                      color:  AppTheme.colorPrimary,
                                    ),
                                    helperText: "Actualice su correo",
                                    contentPadding: EdgeInsets.all(15.0),
                                    prefixIcon: Icon(
                                      Icons.account_circle,
                                      color: AppTheme.colorPrimary,
                                    ),
                                    suffixIcon: Icon(
                                      Icons.email_outlined,
                                      color: AppTheme.colorPrimary,
                                    ),
                                    errorStyle: Theme.of(context).textTheme.caption.copyWith(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    disabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    hintText: "Ingrese su nombre",
                                    hintStyle: Theme.of(context).textTheme.caption.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    focusColor: AppTheme.colorAccent,
                                  ),
                                  onChanged: (str) {
                                    // To do
                                  },
                                  onSaved: (str) {
                                    //  To do
                                  },
                                ),
                              ),
                            ])
                        ),
                        SliverList(
                            delegate: SliverChildListDelegate([
                              Container(
                                margin: const EdgeInsets.only(top: 32),
                                padding: const EdgeInsets.only(top: 8, left: 24, bottom: 8),
                                color: AppTheme.grey.withOpacity(0.1),
                                child: Text("CUENTA VINCULADA", style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                )),
                              ),
                              Center(
                                child:  Container(
                                  margin: const EdgeInsets.only(top: 48),
                                  height: 120,
                                  width: 120,
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppTheme.white,
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(color: AppTheme.grey.withOpacity(0.6), offset: const Offset(2.0, 4.0), blurRadius: 8),
                                    ],
                                  ),
                                  child: Container(
                                      child:  CachedNetworkImage(
                                        placeholder: (context, url) => CircularProgressIndicator(),
                                        imageUrl:'https://safe365.com/blog/content/images/2020/01/Captura-de-Pantalla-2020-01-24-a-la-s--10.02.36.png',
                                        errorWidget: (context, url, error) =>  Icon(Icons.error_outline_rounded, size: 80,),
                                        imageBuilder: (context, imageProvider) => Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(Radius.circular(100)),
                                                image: DecorationImage(
                                                  image: imageProvider,
                                                  fit: BoxFit.cover,
                                                ),
                                                boxShadow: <BoxShadow>[
                                                  BoxShadow(color: AppTheme.grey.withOpacity(0.4), offset: const Offset(2.0, 2.0), blurRadius: 6),
                                                ]
                                            )
                                        ),
                                      )),
                                ),
                              ),
                              // Textform Field
                              Padding(
                                padding: const EdgeInsets.only(left: 24, right: 24, top: 32),
                                child:  TextFormField(
                                  enabled: false,
                                  maxLength: 50,
                                  autofocus: false,
                                  textAlign: TextAlign.start,
                                  autovalidate: true,
                                  style: Theme.of(context).textTheme.caption.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                  initialValue: "Jose Arias Orezano",
                                  //controller: accountController,
                                  keyboardType: TextInputType.text,
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    labelText: "Nombres",
                                    labelStyle: TextStyle(
                                      color:  AppTheme.colorPrimary,
                                    ),
                                    helperText: "Desabiliado",
                                    contentPadding: EdgeInsets.all(15.0),
                                    prefixIcon: Icon(
                                      Icons.account_circle,
                                      color: AppTheme.colorPrimary,
                                    ),
                                    suffixIcon: Icon(
                                      Icons.account_box,
                                      color: AppTheme.colorPrimary,
                                    ),
                                    errorStyle: Theme.of(context).textTheme.caption.copyWith(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    disabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    hintText: "Ingrese su nombre",
                                    hintStyle: Theme.of(context).textTheme.caption.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    focusColor: AppTheme.colorAccent,
                                  ),
                                  onChanged: (str) {
                                    // To do
                                  },
                                  onSaved: (str) {
                                    //  To do
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
                                child:  TextFormField(
                                  enabled: false,
                                  maxLength: 50,
                                  autofocus: false,
                                  textAlign: TextAlign.start,
                                  autovalidate: true,
                                  style: Theme.of(context).textTheme.caption.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                  initialValue: "24/03/1995",
                                  //controller: accountController,
                                  keyboardType: TextInputType.text,
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    labelText: "Fecha de nacimiento",
                                    labelStyle: TextStyle(
                                      color:  AppTheme.colorPrimary,
                                    ),
                                    helperText: "Desabiliado",
                                    contentPadding: EdgeInsets.all(15.0),
                                    prefixIcon: Icon(
                                      Icons.account_circle,
                                      color: AppTheme.colorPrimary,
                                    ),
                                    suffixIcon: Icon(
                                      Icons.today_outlined,
                                      color: AppTheme.colorPrimary,
                                    ),
                                    errorStyle: Theme.of(context).textTheme.caption.copyWith(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    disabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    hintText: "Ingrese su nombre",
                                    hintStyle: Theme.of(context).textTheme.caption.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    focusColor: AppTheme.colorAccent,
                                  ),
                                  onChanged: (str) {
                                    // To do
                                  },
                                  onSaved: (str) {
                                    //  To do
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
                                child:  TextFormField(
                                  enabled: true,
                                  maxLength: 50,
                                  autofocus: false,
                                  textAlign: TextAlign.start,
                                  autovalidate: true,
                                  style: Theme.of(context).textTheme.caption.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                  initialValue: "+51 986 994 366",
                                  //controller: accountController,
                                  keyboardType: TextInputType.text,
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    labelText: "Número de telefono",
                                    labelStyle: TextStyle(
                                      color:  AppTheme.colorPrimary,
                                    ),
                                    helperText: "Actualice su telefono",
                                    contentPadding: EdgeInsets.all(15.0),
                                    prefixIcon: Icon(
                                      Icons.account_circle,
                                      color: AppTheme.colorPrimary,
                                    ),
                                    suffixIcon: Icon(
                                      Icons.call_end_outlined,
                                      color: AppTheme.colorPrimary,
                                    ),
                                    errorStyle: Theme.of(context).textTheme.caption.copyWith(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    disabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    hintText: "Ingrese su nombre",
                                    hintStyle: Theme.of(context).textTheme.caption.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    focusColor: AppTheme.colorAccent,
                                  ),
                                  onChanged: (str) {
                                    // To do
                                  },
                                  onSaved: (str) {
                                    //  To do
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
                                child:  TextFormField(
                                  enabled: true,
                                  maxLength: 50,
                                  autofocus: false,
                                  textAlign: TextAlign.start,
                                  autovalidate: true,
                                  style: Theme.of(context).textTheme.caption.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                  initialValue: "jsefao011@gmail.com",
                                  //controller: accountController,
                                  keyboardType: TextInputType.text,
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    labelText: "Email",
                                    labelStyle: TextStyle(
                                      color:  AppTheme.colorPrimary,
                                    ),
                                    helperText: "Actualice su correo",
                                    contentPadding: EdgeInsets.all(15.0),
                                    prefixIcon: Icon(
                                      Icons.account_circle,
                                      color: AppTheme.colorPrimary,
                                    ),
                                    suffixIcon: Icon(
                                      Icons.email_outlined,
                                      color: AppTheme.colorPrimary,
                                    ),
                                    errorStyle: Theme.of(context).textTheme.caption.copyWith(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    disabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    hintText: "Ingrese su nombre",
                                    hintStyle: Theme.of(context).textTheme.caption.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      borderSide: BorderSide(
                                        color: AppTheme.colorPrimary,
                                      ),
                                    ),
                                    focusColor: AppTheme.colorAccent,
                                  ),
                                  onChanged: (str) {
                                    // To do
                                  },
                                  onSaved: (str) {
                                    //  To do
                                  },
                                ),
                              ),

                            ])
                        )
                      ]
                  );
                })
        )
    );
  }


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
                            widget.cabecera?
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
                            ):
                            Container(
                              width:  35 + 6 - 6 * topBarOpacity,
                            ),
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Editar mi perfil',
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
                            ControlledWidgetBuilder<EditarUsuarioController>(
                              builder: (context, controller) {
                                if(false){
                                  return Padding(
                                    padding: EdgeInsets.fromLTRB (00.0, 00.0, 00.0, 00.0),
                                  );
                                }else{
                                  return CachedNetworkImage(
                                      placeholder: (context, url) => CircularProgressIndicator(),
                                      imageUrl: "https://assets.materialup.com/uploads/02e220fc-be67-4f79-ad45-6a8719be00d5/preview.jpg",
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

}