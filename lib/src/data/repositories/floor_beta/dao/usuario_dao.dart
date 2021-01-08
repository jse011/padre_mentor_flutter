import 'package:floor/floor.dart';
import 'package:padre_mentor/src/data/repositories/floor_beta/mapping/usuario.dart';

@dao
abstract class UsuarioDao{
  @Query('SELECT * FROM Usuario')
  Future<List<Usuario>> findAllTodo();

  @Query('Select * from Usuario order by usuarioId desc limit 1')
  Future<Usuario> getMaxTodo();

  @Query('SELECT * FROM Usuario order by usuarioId desc')
  Stream<List<Usuario>> fetchStreamData();

  @insert
  Future<void> insertTodo(Usuario usuario);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<List<int>> insertAllTodo(List<Usuario> usuario);

  @Query("delete from Usuario where usuarioId = :id")
  Future<void> deleteTodo(int id);

  @delete
  Future<int> deleteAll(List<Usuario> list);
}