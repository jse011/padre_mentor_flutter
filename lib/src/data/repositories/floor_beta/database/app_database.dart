import 'dart:async';

import 'package:floor/floor.dart';
import 'package:padre_mentor/src/data/repositories/floor_beta/dao/persona_dao.dart';
import 'package:padre_mentor/src/data/repositories/floor_beta/dao/session_user_dao.dart';
import 'package:padre_mentor/src/data/repositories/floor_beta/dao/usuario_dao.dart';
import 'package:padre_mentor/src/data/repositories/floor_beta/mapping/persona.dart';
import 'package:padre_mentor/src/data/repositories/floor_beta/mapping/session_user.dart';
import 'package:padre_mentor/src/data/repositories/floor_beta/mapping/usuario.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'app_database.g.dart';

@Database(version: AppDatabase.VERSION ,entities: [Usuario,SessionUser,Persona])
abstract class AppDatabase extends FloorDatabase {
  static const NAME = 'app_database.db';
  static const VERSION = 1;
  UsuarioDao get usuarioDao;
  SessionUserDao get sessionUserDao;
  PersonaDao personaDao;

  static Future<AppDatabase> getBD() {
    final migration1to2 = Migration(1, 2, (database) async {
      //await database.execute('ALTER TABLE person ADD COLUMN nickname TEXT');
      // await database.execute('CREATE TABLE IF NOT EXISTS `Persona` (`personaId` INTEGER, `nombres` TEXT, `apellidoPaterno` TEXT, `apellidoMaterno` TEXT, `celular` TEXT, `telefono` TEXT, `foto` TEXT, `fechaNac` TEXT, `genero` TEXT, `estadoCivil` TEXT, `numDoc` TEXT, `ocupacion` TEXT, `estadoId` INTEGER, `correo` TEXT, `direccion` TEXT, `path` TEXT, PRIMARY KEY (`personaId`))');
      //await database.setVersion(7);

    });

    return $FloorAppDatabase.databaseBuilder(AppDatabase.NAME)
        .addMigrations([migration1to2])
        .build();
  }
}
/*
* Ejecute el generador con flutter packages pub run build_runner build.
* Para ejecutarlo automáticamente, siempre que cambie un archivo,
* use flutter packages pub run build_runner watch.
* */
