import 'package:moor_flutter/moor_flutter.dart';
import 'package:padre_mentor/src/data/repositories/moor/model/anio_academico_alumno.dart';
import 'package:padre_mentor/src/data/repositories/moor/model/carga_cursos.dart';
import 'package:padre_mentor/src/data/repositories/moor/model/contrato.dart';
import 'package:padre_mentor/src/data/repositories/moor/model/detalle_contrato_acad.dart';
import 'package:padre_mentor/src/data/repositories/moor/model/persona.dart';
import 'package:padre_mentor/src/data/repositories/moor/model/plan_estudios.dart';
import 'package:padre_mentor/src/data/repositories/moor/model/programas_educativo.dart';
import 'package:padre_mentor/src/data/repositories/moor/model/relaciones.dart';
import 'package:padre_mentor/src/data/repositories/moor/model/session_user.dart';
import 'package:padre_mentor/src/data/repositories/moor/model/usuario.dart';

part 'app_database.g.dart';

@UseMoor(tables: [Persona, Usuario, SessionUser, Relaciones, AnioAcademicoAlumno, ProgramasEducativo, PlanEstudio, CargaCurso, DetalleContratoAcad, Contrato, ])
class AppDataBase extends _$AppDataBase{

  @override
  int get schemaVersion => 1;

  static final AppDataBase _singleton = AppDataBase._internal();

  factory AppDataBase() {
    return _singleton;
  }

  AppDataBase._internal(): super(FlutterQueryExecutor.inDatabaseFolder(
      path: "db.sqlite", logStatements: true));

}
/*
* Moor integrates with Dart’s build system, so you can generate all the code needed with flutter packages pub run build_runner build.
* If you want to continuously rebuild the generated code where you change your code, run flutter packages pub run build_runner watch instead.
* After running either command once, the moor generator will have created a class for your database and data classes for your entities.
* To use it, change the MyDatabase class as follows:
* */
