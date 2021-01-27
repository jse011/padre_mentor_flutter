import 'package:moor_flutter/moor_flutter.dart';

class SessionUser extends Table{
  IntColumn get userId  => integer()();
  IntColumn get hijoIdSelect => integer().nullable()();
  @override
  Set<Column> get primaryKey => {userId};
}