import 'package:flutter/material.dart';
import 'package:padre_mentor/src/app/page/horarios/horarios_view.dart';

class HorariosRouter {
  static Route createRouteHorarios({@required programaAcademicoId, @required  alumnoId, @required anioAcademico, @required String fotoAlumno}) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => HorariosView(alumnoId: alumnoId, programaAcademicoId: programaAcademicoId, anioAcademicoId: anioAcademico, fotoAlumno: fotoAlumno),
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