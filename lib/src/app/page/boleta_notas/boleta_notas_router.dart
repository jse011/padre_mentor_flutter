import 'package:flutter/material.dart';
import 'package:padre_mentor/src/app/page/boleta_notas/boleta_notas_view.dart';

class BoletaNotasRouter{

  static Route createRouteBoletaNotas() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => BoletasNotasView(),
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