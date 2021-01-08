import 'package:moor_flutter/moor_flutter.dart';
import 'package:padre_mentor/src/data/repositories/moor/model/persona.dart';
import 'package:padre_mentor/src/data/repositories/moor/model/relaciones.dart';
import 'package:padre_mentor/src/data/repositories/moor/model/session_user.dart';
import 'package:padre_mentor/src/data/repositories/moor/model/usuario.dart';

part 'app_database.g.dart';

@UseMoor(tables: [Persona, Usuario, SessionUser, Relaciones])
class AppDataBase extends _$AppDataBase{
  AppDataBase() : super(FlutterQueryExecutor.inDatabaseFolder(
      path: "db.sqlite", logStatements: true));

  @override
  int get schemaVersion => 1;

}
/*
* Moor integrates with Dart’s build system, so you can generate all the code needed with flutter packages pub run build_runner build.
* If you want to continuously rebuild the generated code where you change your code, run flutter packages pub run build_runner watch instead.
* After running either command once, the moor generator will have created a class for your database and data classes for your entities.
* To use it, change the MyDatabase class as follows:
* */
