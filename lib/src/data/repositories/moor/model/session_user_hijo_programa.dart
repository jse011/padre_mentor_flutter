import 'package:moor_flutter/moor_flutter.dart';

class SessionUserHijo extends Table{

  IntColumn get prograAcademicoId => integer()();
  IntColumn get hijoId => integer().nullable()();
  IntColumn get color => integer().nullable()();
  BoolColumn get selected => boolean().nullable()();
  @override
  Set<Column> get primaryKey => {prograAcademicoId};
}