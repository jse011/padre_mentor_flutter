import 'package:floor/floor.dart';
import 'package:padre_mentor/src/data/repositories/floor_beta/mapping/persona.dart';
import 'package:padre_mentor/src/data/repositories/floor_beta/mapping/relaciones.dart';

@dao
abstract class PersonaDao{
  @Query('SELECT * FROM Persona')
  Future<List<Persona>> findAllTodo();

  @Query('Select * from Persona order by personaId desc limit 1')
  Future<Persona> getMaxTodo();

  @Query('SELECT * FROM Persona order by personaId desc')
  Stream<List<Persona>> fetchStreamData();

  @insert
  Future<void> insertTodo(Persona usuario);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<List<int>> insertAllTodo(List<Persona> personas);

  @Query("delete from Persona where personaId = :id")
  Future<void> deleteTodo(int id);

  @delete
  Future<int> deleteAll(List<Persona> list);

  @Query('Select * from Persona inner join Usuario on Usuario.personaId = Persona.personaId where Usuario.usuarioId = :usarioId')
  Future<Persona> getUsuario(int usarioId);
}