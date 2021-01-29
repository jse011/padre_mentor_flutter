import 'package:flutter/material.dart';
import 'package:padre_mentor/src/app/page/editar_usuario/editar_usuario_view.dart';

class EditarUsuarioRouter{

  static Route createRouteEditarUsuario() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => EditarUsuarioView(cabecera: true,),
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