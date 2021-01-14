import 'package:moor_flutter/moor_flutter.dart';
import 'package:padre_mentor/src/data/repositories/moor/database/app_database.dart';
import 'package:padre_mentor/src/data/repositories/moor/model/persona.dart';
import 'package:padre_mentor/src/data/repositories/moor/model/programas_educativo.dart';
import 'package:padre_mentor/src/data/repositories/moor/tools/serializable_convert.dart';
import 'package:padre_mentor/src/domain/entities/hijos_ui.dart';
import 'package:padre_mentor/src/domain/entities/programa_educativo_ui.dart';
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
        hijos.add(HijosUi(usuarioId: usuarioData==null ? 0 : usuarioData.usuarioId, personaId: personaData.personaId, nombre: personaData == null ? '' : '${AppTools.capitalize(personaData.nombres)} ${AppTools.capitalize(personaData.apellidoPaterno)} ${AppTools.capitalize(personaData.apellidoMaterno)}', foto: personaData.foto==null?'':'${AppTools.capitalize(personaData.foto)}'));
      });
      UsuarioUi usuarioUi = UsuarioUi(id: personaData == null ? 0 : personaData.personaId ,
          nombre: personaData == null ? '' : '${AppTools.capitalize(personaData.nombres)} ${AppTools.capitalize(personaData.apellidoPaterno)} ${AppTools.capitalize(personaData.apellidoMaterno)}',
          foto: personaData.foto,
          hijos: hijos);

      /*
      * Obtner el Programa de los Alumnos
      *PRE_MATRICULA = 189, MATRICULA = 190;
      *ANIO_ACADEMICO_MATRICULA = 192, ANIO_ACADEMICO_ACTIVO = 193, ANIO_ACADEMICO_CERRADO = 194, ANIO_ACADEMICO_CREADO = 195, ANIO_ACADEMICO_ELIMINADO = 196;
      * */
      var queryPrograma=  await SQL.select(SQL.programasEducativo).join([
        innerJoin(SQL.planEstudio, SQL.planEstudio.programaEduId.equalsExp(SQL.programasEducativo.programaEduId)),
        innerJoin(SQL.planCursos, SQL.planCursos.planEstudiosId.equalsExp(SQL.planEstudio.planEstudiosId)),
        innerJoin(SQL.cargaCurso, SQL.cargaCurso.planCursoId.equalsExp(SQL.planCursos.planCursoId)),
        innerJoin(SQL.detalleContratoAcad, SQL.detalleContratoAcad.cargaCursoId.equalsExp(SQL.cargaCurso.cargaCursoId)),
        innerJoin(SQL.anioAcademicoAlumno, SQL.anioAcademicoAlumno.idAnioAcademico.equalsExp(SQL.detalleContratoAcad.anioAcademicoId)),
        innerJoin(SQL.contrato, SQL.contrato.idContrato.equalsExp(SQL.detalleContratoAcad.idContrato)),
        innerJoin(SQL.persona, SQL.contrato.personaId.equalsExp(SQL.persona.personaId)),
      ]);
      queryPrograma.where(SQL.contrato.personaId.equalsExp(SQL.anioAcademicoAlumno.personaId));
      queryPrograma.where(SQL.contrato.estadoId.equals(190));
      queryPrograma.where(SQL.anioAcademicoAlumno.estadoId.equals(193));
      queryPrograma.groupBy([SQL.programasEducativo.programaEduId, SQL.anioAcademicoAlumno.idAnioAcademico, SQL.anioAcademicoAlumno.personaId]);
      var rowPrograma = await queryPrograma.get();
      List<ProgramaEducativoUi> programaEducativoUiList = [];
      await Future.forEach(rowPrograma, (programa) async{
        ProgramasEducativoData programasEducativoData = programa.readTable(SQL.programasEducativo);
        PlanEstudioData planEstudioData = programa.readTable(SQL.planEstudio);
        AnioAcademicoAlumnoData academicoAlumnoData = programa.readTable(SQL.anioAcademicoAlumno);

        PersonaData personaData = programa.readTable(SQL.persona);

        UsuarioData usuarioData = await (SQL.select(SQL.usuario)..where((tbl) => tbl.personaId.equals(academicoAlumnoData.personaId))).getSingle();

        programaEducativoUiList.add(ProgramaEducativoUi(
          programaId: programasEducativoData.programaEduId,
          nombrePrograma: programasEducativoData.nombre,
          hijoId: personaData.personaId,
          nombreHijo: '${AppTools.capitalize(personaData.nombres)} ${AppTools.capitalize(personaData.apellidoPaterno)} ${AppTools.capitalize(personaData.apellidoMaterno)}',
          fotoHijo: personaData.foto==null?'':'${AppTools.capitalize(personaData.foto)}',
          anioAcademicoId: academicoAlumnoData.idAnioAcademico,
          nombreAnioAcademico: academicoAlumnoData.nombre,
          alumnoId: usuarioData==null ? 0 : usuarioData.usuarioId
        ));

      });

      usuarioUi.programaEducativoUiList = programaEducativoUiList;

      return usuarioUi;
    }catch(e){
      throw Exception(e);
    }
    //var resultRow = rows.single;
  }

  @override
  Future<void> saveDatosGlobales(Map<String, dynamic> datosInicioPadre) async{
   AppDataBase SQL = AppDataBase();
   try{
     await SQL.batch((batch) async {
       // functions in a batch don't have to be awaited - just
       // await the whole batch afterwards.
       if(datosInicioPadre.containsKey("usuariosrelacionados")){
         batch.insertAll(SQL.usuario, SerializableConvert.converListSerializeUsuario(datosInicioPadre["usuariosrelacionados"]), mode: InsertMode.insertOrReplace );
       }

       if(datosInicioPadre.containsKey("personas")){
         //personaSerelizable.addAll(datosInicioPadre["usuariosrelacionados"]);
         //database.personaDao.insertAllTodo(SerializableConvert.converListSerializePersona(datosInicioPadre["personas"]));
         batch.insertAll(SQL.persona, SerializableConvert.converListSerializePersona(datosInicioPadre["personas"]), mode: InsertMode.insertOrReplace);
       }

       if(datosInicioPadre.containsKey("relaciones")){
         //personaSerelizable.addAll(datosInicioPadre["usuariosrelacionados"]);
         batch.insertAll(SQL.relaciones, SerializableConvert.converListSerializeRelaciones(datosInicioPadre["relaciones"]), mode: InsertMode.insertOrReplace);
       }

       if(datosInicioPadre.containsKey("anioAcademicosAlumno")){
         batch.insertAll(SQL.anioAcademicoAlumno, SerializableConvert.converListSerializeAnioAcademicoAlumno(datosInicioPadre["anioAcademicosAlumno"]), mode: InsertMode.insertOrReplace);
       }

       if(datosInicioPadre.containsKey("cargaCursos")){
         batch.insertAll(SQL.cargaCurso, SerializableConvert.converListSerializeCargaCurso(datosInicioPadre["cargaCursos"]), mode: InsertMode.insertOrReplace);
       }

       if(datosInicioPadre.containsKey("contratos")){
         batch.insertAll(SQL.contrato, SerializableConvert.converListSerializeContrato(datosInicioPadre["contratos"]), mode: InsertMode.insertOrReplace);
       }

       if(datosInicioPadre.containsKey("detalleContratoAcad")){
         batch.insertAll(SQL.detalleContratoAcad, SerializableConvert.converListSerializeDetalleContratoAcad(datosInicioPadre["detalleContratoAcad"]), mode: InsertMode.insertOrReplace);
       }

       if(datosInicioPadre.containsKey("planCursos")){
         batch.insertAll(SQL.planCursos, SerializableConvert.converListSerializePlanCurso(datosInicioPadre["planCursos"]), mode: InsertMode.insertOrReplace);
       }

       if(datosInicioPadre.containsKey("planEstudios")){
         batch.insertAll(SQL.planEstudio, SerializableConvert.converListSerializePlanEstudio(datosInicioPadre["planEstudios"]), mode: InsertMode.insertOrReplace);
       }

       if(datosInicioPadre.containsKey("programasEducativos")){
         batch.insertAll(SQL.programasEducativo, SerializableConvert.converListSerializeProgramasEducativo(datosInicioPadre["programasEducativos"]), mode: InsertMode.insertOrReplace);
       }

       if(datosInicioPadre.containsKey("calendarioPeriodos")){
         batch.insertAll(SQL.calendarioPeriodo, SerializableConvert.converListSerializeCalendarioPeriodo(datosInicioPadre["calendarioPeriodos"]), mode: InsertMode.insertOrReplace);
       }

       if(datosInicioPadre.containsKey("calendarioAcademicos")){
         batch.insertAll(SQL.calendarioAcademico, SerializableConvert.converListSerializeCalendarioAcademico(datosInicioPadre["calendarioAcademicos"]), mode: InsertMode.insertOrReplace);
       }

       if(datosInicioPadre.containsKey("tipos")){
         batch.insertAll(SQL.tipos, SerializableConvert.converListSerializeTipos(datosInicioPadre["tipos"]), mode: InsertMode.insertOrReplace);
       }

       if(datosInicioPadre.containsKey("obtener_parametros_disenio")){
         batch.insertAll(SQL.parametrosDisenio, SerializableConvert.converListSerializeParametrosDisenio(datosInicioPadre["obtener_parametros_disenio"]), mode: InsertMode.insertOrReplace);
       }

       if(datosInicioPadre.containsKey("silaboEvento")){
         batch.insertAll(SQL.silaboEvento, SerializableConvert.converListSerializeSilaboEvento(datosInicioPadre["silaboEvento"]), mode: InsertMode.insertOrReplace);
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