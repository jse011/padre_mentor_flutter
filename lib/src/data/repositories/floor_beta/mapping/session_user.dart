import 'package:floor/floor.dart';

@entity
class SessionUser{
  @PrimaryKey(autoGenerate: false)
  final int userId;

  SessionUser(this.userId);
}