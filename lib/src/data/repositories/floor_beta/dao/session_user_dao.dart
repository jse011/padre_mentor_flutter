import 'package:floor/floor.dart';
import 'package:padre_mentor/src/data/repositories/floor_beta/mapping/session_user.dart';

@dao
abstract class SessionUserDao {
  @Query('Select * from SessionUser limit 1')
  Future<SessionUser> getSessionUser();
  @insert
  Future<void> insertTodo(SessionUser sessionUser);
  @update
  Future<int> updatePersons(SessionUser sessionUser);

  @Query("delete from SessionUser")
  Future<void> deleteTodo();
}