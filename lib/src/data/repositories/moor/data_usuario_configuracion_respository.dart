import 'package:moor_flutter/moor_flutter.dart';
import 'package:padre_mentor/src/data/repositories/moor/database/app_database.dart';
import 'package:padre_mentor/src/data/repositories/moor/model/persona.dart';
import 'package:padre_mentor/src/data/repositories/moor/tools/serializable_convert.dart';
import 'package:padre_mentor/src/domain/entities/hijos_ui.dart';
import 'package:padre_mentor/src/domain/entities/usuario_ui.dart';
import 'package:padre_mentor/src/domain/repositories/usuario_configuarion_repository.dart';
import 'package:padre_mentor/src/domain/tools/app_tools.dart';

class DataUsuarioAndRepository extends UsuarioAndConfiguracionRepository{

  static const TAG = 'DataUsuarioAndRepository';
  // sigleton
  static final DataUsuarioAndRepository _instance = DataUsuarioAndRepository._internal();
  DataUsuarioAndRepository._internal() {
  }

  factory DataUsuarioAndRepository() => _instance;

  @override
  Future<UsuarioUi> getSessionUsuario() async{
    print("getSessionUsuario" );
    AppDataBase SQL = AppDataBase();
    try{
      var query =  await SQL.select(SQL.persona).join([
        innerJoin(SQL.usuario, SQL.usuario.personaId.equalsExp(SQL.persona.personaId))
      ]);
      query.where(SQL.usuario.usuarioId.equals(2));
      var resultRow = await query.getSingle();
      PersonaData personaData = resultRow.readTable(SQL.persona);

      var queryRelaciones =  await SQL.select(SQL.persona).join([
        innerJoin(SQL.relaciones, SQL.relaciones.personaPrincipalId.equalsExp(SQL.persona.personaId))
      ]);
      queryRelaciones.where(SQL.relaciones.personaVinculadaId.equals(personaData.personaId));
      var rowRelaciones = await queryRelaciones.get();
      List<HijosUi> hijos = [];
      await Future.forEach(rowRelaciones, (hijo) async{
        PersonaData personaData = hijo.readTable(SQL.persona);
        UsuarioData usuarioData = await (SQL.select(SQL.usuario)..where((tbl) => tbl.personaId.equals(personaData.personaId))).getSingle();
        hijos.add(HijosUi(usuarioId: usuarioData.usuarioId, personaId: personaData.personaId, nombre: personaData == null ? '' : '${AppTools.capitalize(personaData.nombres)} ${AppTools.capitalize(personaData.apellidoPaterno)} ${AppTools.capitalize(personaData.apellidoMaterno)}', foto: personaData.foto==null?'':'${AppTools.capitalize(personaData.foto)}'));
      });
      UsuarioUi usuarioUi = UsuarioUi(id: personaData == null ? 0 : personaData.personaId ,
          nombre: personaData == null ? '' : '${AppTools.capitalize(personaData.nombres)} ${AppTools.capitalize(personaData.apellidoPaterno)} ${AppTools.capitalize(personaData.apellidoMaterno)}',
          foto: personaData.foto,
          hijos: hijos);



      return usuarioUi;
    }catch(e){
      throw Exception(e);
    }
    //var resultRow = rows.single;
  }

  @override
  void saveDatosGlobales(Map<String, dynamic> datosInicioPadre) async{
   AppDataBase SQL = AppDataBase();
   try{
     await SQL.batch((batch) async {
       // functions in a batch don't have to be awaited - just
       // await the whole batch afterwards.
       if(datosInicioPadre.containsKey("usuariosrelacionados")){
         batch.insertAll(SQL.usuario, SerializableConvert.converListSerializeUsuario(datosInicioPadre["usuariosrelacionados"]), mode: InsertMode.replace );
       }

       if(datosInicioPadre.containsKey("personas")){
         //personaSerelizable.addAll(datosInicioPadre["usuariosrelacionados"]);
         //database.personaDao.insertAllTodo(SerializableConvert.converListSerializePersona(datosInicioPadre["personas"]));
         batch.insertAll(SQL.persona, SerializableConvert.converListSerializePersona(datosInicioPadre["personas"]), mode: InsertMode.replace);
       }

       if(datosInicioPadre.containsKey("relaciones")){
         //personaSerelizable.addAll(datosInicioPadre["usuariosrelacionados"]);
         batch.insertAll(SQL.relaciones, SerializableConvert.converListSerializeRelaciones(datosInicioPadre["relaciones"]), mode: InsertMode.replace);
       }
     });
   }catch(e){
     throw Exception(e);
   }
  }

  /// Watches all entries in the given [category]. If the category is null, all
  /// entries will be shown instead.
  /*Stream<List<EntryWithCategory>> watchEntriesInCategory(Category category) {
    final query = select(todos).join(
        [leftOuterJoin(categories, categories.id.equalsExp(todos.category))]);

    if (category != null) {
      query.where(categories.id.equals(category.id));
    } else {
      query.where(isNull(categories.id));
    }

    return query.watch().map((rows) {
      // read both the entry and the associated category for each row
      return rows.map((row) {
        return EntryWithCategory(
          row.readTable(todos),
          row.readTable(categories),
        );
      }).toList();
    });
  }*/


}