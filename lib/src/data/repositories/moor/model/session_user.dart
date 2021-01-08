import 'package:moor_flutter/moor_flutter.dart';

class SessionUser extends Table{
  IntColumn get userId  => integer()();

  @override
  Set<Column> get primaryKey => {userId};
}