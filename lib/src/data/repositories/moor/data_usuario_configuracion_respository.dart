import 'package:moor_flutter/moor_flutter.dart';
import 'package:padre_mentor/src/data/repositories/moor/database/app_database.dart';
import 'package:padre_mentor/src/data/repositories/moor/model/persona.dart';
import 'package:padre_mentor/src/data/repositories/moor/model/programas_educativo.dart';
import 'package:padre_mentor/src/data/repositories/moor/model/silabo_evento.dart';
import 'package:padre_mentor/src/data/repositories/moor/tools/serializable_convert.dart';
import 'package:padre_mentor/src/domain/entities/evento_ui.dart';
import 'package:padre_mentor/src/domain/entities/hijos_ui.dart';
import 'package:padre_mentor/src/domain/entities/programa_educativo_ui.dart';
import 'package:padre_mentor/src/domain/entities/tipo_evento_ui.dart';
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
        hijos.add(HijosUi(usuarioId: usuarioData==null ? 0 : usuarioData.usuarioId, personaId: personaData.personaId, nombre: personaData == null ? '' : '${AppTools.capitalize(personaData.nombres)} ${AppTools.capitalize(personaData.apellidoPaterno)} ${AppTools.capitalize(personaData.apellidoMaterno)}', foto: personaData.foto==null?'':'${AppTools.capitalize(personaData.foto)}',documento: personaData.numDoc));
      });
      UsuarioUi usuarioUi = UsuarioUi(id: personaData == null ? 0 : personaData.personaId ,
          nombre: personaData == null ? '' : '${AppTools.capitalize(personaData.nombres)} ${AppTools.capitalize(personaData.apellidoPaterno)} ${AppTools.capitalize(personaData.apellidoMaterno)}',
          foto: personaData.foto==null?'':'${AppTools.capitalize(personaData.foto)}',
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

        usuarioUi.programaEducativoUiList = programaEducativoUiList;

        SessionUserData sessionUserData = await (SQL.selectSingle(SQL.sessionUser)).getSingle();
        int hijoIdSelected = sessionUserData != null?sessionUserData.hijoIdSelect : 0;
        if(hijoIdSelected!=null && hijoIdSelected > 0){
          usuarioUi.hijoSelected = usuarioUi.hijos.firstWhere((element) => element.personaId == hijoIdSelected, orElse: () => usuarioUi.hijos.first);
          var rowSessionUsuarioPrograma = SQL.selectSingle(SQL.sessionUserHijo)..where((tbl) => tbl.hijoId.equals(hijoIdSelected));
          rowSessionUsuarioPrograma.where((tbl) => tbl.selected.equals(true));
          SessionUserHijoData sessionUserHijoData = await rowSessionUsuarioPrograma.getSingle();
          int programaIdSelected = sessionUserHijoData != null?sessionUserHijoData.prograAcademicoId : 0;
          usuarioUi.programaEducativoUiSelected = usuarioUi.programaEducativoUiList.firstWhere((element) => element.programaId == programaIdSelected, orElse: () => //usuarioUi.programaEducativoUiList.first);
              usuarioUi.programaEducativoUiList.firstWhere((element) => element.hijoId==hijoIdSelected, orElse: () => usuarioUi.programaEducativoUiList.first));
        }

      });



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

       if(datosInicioPadre.containsKey("bEWebConfigs")){
         batch.deleteWhere(SQL.webConfigs, (row) => const Constant(true));
         batch.insertAll(SQL.webConfigs, SerializableConvert.converListSerializeWebConfigs(datosInicioPadre["bEWebConfigs"]), mode: InsertMode.insertOrReplace);
       }

     });
   }catch(e){
     throw Exception(e);
   }
  }

  @override
  Future<HijosUi> getHijo(int alumnoId) async {
    print("getHijo" );
    AppDataBase SQL = AppDataBase();
    try{

      PersonaData personaData = await (SQL.selectSingle(SQL.persona)..where((tbl) => tbl.personaId.equals(alumnoId))).getSingle();
      UsuarioData usuarioData = await (SQL.select(SQL.usuario)..where((tbl) => tbl.personaId.equals(alumnoId))).getSingle();
      return HijosUi(usuarioId: usuarioData==null ? 0 : usuarioData.usuarioId, personaId: personaData.personaId, nombre: personaData == null ? '' : '${AppTools.capitalize(personaData.nombres)} ${AppTools.capitalize(personaData.apellidoPaterno)} ${AppTools.capitalize(personaData.apellidoMaterno)}', foto: personaData.foto==null?'':'${AppTools.capitalize(personaData.foto)}', documento: personaData.numDoc);

    }catch(e){
      throw Exception(e);
    }
  }

  @override
  Future<void> saveEventoAgenda(Map<String, dynamic> eventoAgenda, int usuarioId, int tipoEventoId, List<int> hijoIdList) async{
    AppDataBase SQL = AppDataBase();
    try{
      print("saveEventoAgenda tipoEventoId : "+tipoEventoId.toString());
      await SQL.transaction(() async {

        List<CalendarioData> calendarioDataList = [];
        var queryCalendario = SQL.select(SQL.calendario).join([
          innerJoin(SQL.evento,SQL.calendario.calendarioId.equalsExp(SQL.evento.calendarioId))
        ]);

        queryCalendario.where(SQL.evento.usuarioReceptorId.equals(usuarioId));
        if(tipoEventoId > 0){
          queryCalendario.where(SQL.evento.tipoEventoId.equals(tipoEventoId));
        }

        //queryCalendario.groupBy([SQL.calendario.calendarioId]);
        var rows = await queryCalendario.get();
        print("saveEventoAgenda cantidad : "+rows.length.toString());
        for (var row in rows) {
          CalendarioData calendarioData = row.readTable(SQL.calendario);
          EventoData eventoData = row.readTable(SQL.evento);
          if(hijoIdList != null && hijoIdList.isNotEmpty && eventoData.eventoHijoId > 0){
            int id = hijoIdList.firstWhere((hijoId) => hijoId == eventoData.eventoHijoId, orElse:()=> -1);
            if(id!=-1)continue;
          }
          await (SQL.delete(SQL.evento).delete(eventoData));
          if(calendarioDataList.firstWhere((element) => element.calendarioId == calendarioData.calendarioId, orElse: () => null) == null){
            calendarioDataList.add(calendarioData);
          }
        }

        for(CalendarioData calendarioData in calendarioDataList){
          List<EventoData> eventoDataList = await (SQL.select(SQL.evento)..where((tbl) => tbl.calendarioId.equals(calendarioData.calendarioId))).get();
          if(eventoDataList==null||eventoDataList.isEmpty){
            await (SQL.delete(SQL.calendario).delete(calendarioData));
          }
        }
        var query = SQL.select(SQL.tipos)..where((tbl) => tbl.concepto.equals("TipoEvento"));
        query.where((tbl) => tbl.objeto.equals("T_CE_MOV_EVENTOS"));
        /*EVENTO=526, ACTIVIDAD=528, CITA=530, TAREA=529, NOTICIA=527, AGENDA = 620;
        * */
        List<Tipo> tipos =  await query.get();
        for(Tipo tipo in tipos){
          await (SQL.delete(SQL.tipos).delete(tipo));
        }

      });


      await SQL.batch((batch) async {

        //
        print("saveEventoAgenda tipoEventoId : "+tipoEventoId.toString());

        if(eventoAgenda.containsKey("calendarios")){
          //personaSerelizable.addAll(datosInicioPadre["usuariosrelacionados"]);
          //database.personaDao.insertAllTodo(SerializableConvert.converListSerializePersona(datosInicioPadre["personas"]));
          batch.insertAll(SQL.calendario, SerializableConvert.converListSerializeCalendario(eventoAgenda["calendarios"]), mode: InsertMode.insertOrReplace);
        }

        if(eventoAgenda.containsKey("eventos")){
          batch.insertAll(SQL.evento, SerializableConvert.converListSerializeEvento(eventoAgenda["eventos"]), mode: InsertMode.insertOrReplace );
        }

        if(eventoAgenda.containsKey("tipos")){
          //personaSerelizable.addAll(datosInicioPadre["usuariosrelacionados"]);
          batch.insertAll(SQL.tipos, SerializableConvert.converListSerializeTipos(eventoAgenda["tipos"]), mode: InsertMode.insertOrReplace);
        }

      });
    }catch(e){
      throw Exception(e);
    }
  }

  @override
  Future<List<TipoEventoUi>> getTiposEvento()async {

      AppDataBase SQL = AppDataBase();
      try{

        List<TipoEventoUi> tipoEventoUiList = [];
        var query = SQL.select(SQL.tipos)..where((tbl) => tbl.concepto.equals("TipoEvento"));
        query.where((tbl) => tbl.objeto.equals("T_CE_MOV_EVENTOS"));
        /*EVENTO=526, ACTIVIDAD=528, CITA=530, TAREA=529, NOTICIA=527, AGENDA = 620;
        * */
        List<Tipo> tipos =  await query.get();
        for(Tipo item in tipos){
          TipoEventoUi tipoEventoUi = TipoEventoUi();
          tipoEventoUi.id = item.tipoId;
          tipoEventoUi.nombre = item.nombre;
          switch(item.tipoId){
            case 526:
              tipoEventoUi.tipo = EventoIconoEnumUI.EVENTO;
              break;
            case 528:
              tipoEventoUi.tipo = EventoIconoEnumUI.ACTIVIDAD;
              break;
            case 530:
              tipoEventoUi.tipo = EventoIconoEnumUI.CITA;
              break;
            case 529:
              tipoEventoUi.tipo = EventoIconoEnumUI.TAREA;
              break;
            case 527:
              tipoEventoUi.tipo = EventoIconoEnumUI.NOTICIA;
              break;
            case 620:
              tipoEventoUi.tipo = EventoIconoEnumUI.AGENDA;
              break;
            default:
              tipoEventoUi.tipo = EventoIconoEnumUI.DEFAULT;
              break;
          }

          tipoEventoUiList.add(tipoEventoUi);
        }

        TipoEventoUi tipoEventoUi = TipoEventoUi();
        tipoEventoUi.id = 0;
        tipoEventoUi.nombre = "Todos";
        tipoEventoUi.tipo = EventoIconoEnumUI.TODOS;
        tipoEventoUiList.add(tipoEventoUi);

        return tipoEventoUiList;
      }catch(e){
        throw Exception(e);
      }
  }

  @override
  Future<List<EventoUi>> getEventosAgenda(int padreId, int tipoEventoId, List<int> hijos) async{

    AppDataBase SQL = AppDataBase();
    try{

      List<EventoUi> eventoUiList = [];
      var query = SQL.select(SQL.evento).join([
        innerJoin(SQL.calendario, SQL.evento.calendarioId.equalsExp(SQL.calendario.calendarioId)),
      ]);
      query.where(SQL.evento.usuarioReceptorId.equals(padreId));
      print("getEventosAgenda tipoEventoId : "+tipoEventoId.toString());
      if(tipoEventoId>0){
        query.where(SQL.evento.tipoEventoId.equals(tipoEventoId));
      }
      //else{
        //query.where(SQL.evento.tipoEventoId.equals(529));
      //}

      var rows = await query.get();
      for(var item in  rows){
        EventoData eventoData = item.readTable(SQL.evento);
        CalendarioData calendarioData = item.readTable(SQL.calendario);
        if(hijos != null && hijos.isNotEmpty && eventoData.eventoHijoId > 0){
            int id = hijos.firstWhere((hijoId) => hijoId == eventoData.eventoHijoId, orElse:()=> -1);
            if(id!=-1)continue;
        }
        EventoUi eventoUi = new EventoUi();
        eventoUi.id = eventoData.eventoId;
        eventoUi.nombreEntidad = eventoData.nombreEntidad;
        eventoUi.fotoEntidad = eventoData.fotoEntidad;
        eventoUi.cantLike =  eventoData.likeCount;
        eventoUi.titulo = eventoData.titulo;
        eventoUi.descripcion = eventoData.descripcion;
        eventoUi.fecha =  eventoData.fechaEvento!=null?AppTools.convertDateTimePtBR(eventoData.fechaEvento, eventoData.horaEvento):null;
        eventoUi.foto = eventoData.pathImagen;
        eventoUi.tipoEventoUi = TipoEventoUi();
        eventoUi.tipoEventoUi.id = eventoData.tipoEventoId;
        eventoUi.tipoEventoUi.nombre = eventoData.tipoEventoNombre;
        eventoUi.rolEmisor = calendarioData.cargo;
        eventoUi.nombreEmisor = calendarioData.nUsuario;

        switch(eventoUi.tipoEventoUi.id){
          case 526:
            eventoUi.tipoEventoUi.tipo = EventoIconoEnumUI.EVENTO;
            break;
          case 528:
            eventoUi.tipoEventoUi.tipo = EventoIconoEnumUI.ACTIVIDAD;
            break;
          case 530:
            eventoUi.tipoEventoUi.tipo = EventoIconoEnumUI.CITA;
            break;
          case 529:
            eventoUi.tipoEventoUi.tipo = EventoIconoEnumUI.TAREA;
            break;
          case 527:
            eventoUi.tipoEventoUi.tipo = EventoIconoEnumUI.NOTICIA;
            break;
          case 620:
            eventoUi.tipoEventoUi.tipo = EventoIconoEnumUI.AGENDA;
            break;
          default:
            eventoUi.tipoEventoUi.tipo = EventoIconoEnumUI.DEFAULT;
            break;
        }
        eventoUiList.add(eventoUi);
      }


      return eventoUiList;
    }catch(e){
      throw Exception(e);
    }
  }

  @override
  Future<void> updateSessionHijoSelected(int hijoSelectedId) async{
    AppDataBase SQL = AppDataBase();
    try{
      SessionUserData sessionUserData = await(SQL.selectSingle(SQL.sessionUser).getSingle());
      if(sessionUserData!=null){
        await SQL.update(SQL.sessionUser).replace(sessionUserData.copyWith(hijoIdSelect: hijoSelectedId));
      }else{
        await SQL.into(SQL.sessionUser).insert(SessionUserData(userId: 2));
      }


    }catch(e){
      throw Exception(e);
    }
  }

  @override
  Future<void> updateSessionProgramaEduSelected(int programaEduSelectedId, int hijoSelectedId) async {
    print("updateSessionProgramaEduSelected");
    AppDataBase SQL = AppDataBase();
    try{
      List<SessionUserHijoData> sessionUserDataList = await(SQL.select(SQL.sessionUserHijo)..where((tbl) => tbl.hijoId.equals(hijoSelectedId))).get();
      await SQL.transaction(() async {
        SessionUserHijoData sessionUserHijoData = null;
        for (var entity in sessionUserDataList) {
          await (SQL.update(SQL.sessionUserHijo)..where((e) => e.hijoId.equals(entity.hijoId)))
              .write(entity.copyWith(selected: false));
          if(programaEduSelectedId == entity.prograAcademicoId){
            sessionUserHijoData = entity;
          }
        }

        if(sessionUserHijoData == null){
          sessionUserHijoData = SessionUserHijoData(prograAcademicoId: programaEduSelectedId, hijoId: hijoSelectedId, selected: true);
        }
        await SQL.into(SQL.sessionUserHijo).insert(sessionUserHijoData, mode: InsertMode.insertOrReplace);
      });
    }catch(e){
      throw Exception(e);
    }
  }

  @override
  Future<List<EventoUi>> getTopEventosAgenda(int padreId, int tipoEventoId, List<int> hijos) async {

    AppDataBase SQL = AppDataBase();
    try{

      List<EventoUi> eventoUiList = [];
      var query = SQL.select(SQL.evento).join([
        innerJoin(SQL.calendario, SQL.evento.calendarioId.equalsExp(SQL.calendario.calendarioId)),
      ]);
      query.where(SQL.evento.usuarioReceptorId.equals(padreId));
      if(tipoEventoId>0){
        query.where(SQL.evento.tipoEventoId.equals(tipoEventoId));
      }

      var rows = await query.get();
      for(var item in  rows){
        EventoData eventoData = item.readTable(SQL.evento);
        CalendarioData calendarioData = item.readTable(SQL.calendario);
        if(hijos != null && hijos.isNotEmpty && eventoData.eventoHijoId > 0){
          int id = hijos.firstWhere((element) => hijos == eventoData.eventoHijoId, orElse:()=> -1);
          if(id!=-1)continue;
        }
        EventoUi eventoUi = new EventoUi();
        eventoUi.id = eventoData.eventoId;
        eventoUi.nombreEntidad = eventoData.nombreEntidad;
        eventoUi.fotoEntidad = eventoData.fotoEntidad;
        eventoUi.cantLike =  eventoData.likeCount;
        eventoUi.titulo = eventoData.titulo;
        eventoUi.descripcion = eventoData.descripcion;
        eventoUi.fecha =  eventoData.fechaEvento!=null?AppTools.convertDateTimePtBR(eventoData.fechaEvento, eventoData.horaEvento):null;
        eventoUi.foto = eventoData.pathImagen;
        eventoUi.tipoEventoUi = TipoEventoUi();
        eventoUi.tipoEventoUi.id = eventoData.tipoEventoId;
        eventoUi.tipoEventoUi.nombre = eventoData.tipoEventoNombre;
        eventoUi.rolEmisor = calendarioData.cargo;
        eventoUi.nombreEmisor = calendarioData.nUsuario;

        switch(eventoUi.tipoEventoUi.id){
          case 526:
            eventoUi.tipoEventoUi.tipo = EventoIconoEnumUI.EVENTO;
            break;
          case 528:
            eventoUi.tipoEventoUi.tipo = EventoIconoEnumUI.ACTIVIDAD;
            break;
          case 530:
            eventoUi.tipoEventoUi.tipo = EventoIconoEnumUI.CITA;
            break;
          case 529:
            eventoUi.tipoEventoUi.tipo = EventoIconoEnumUI.TAREA;
            break;
          case 527:
            eventoUi.tipoEventoUi.tipo = EventoIconoEnumUI.NOTICIA;
            break;
          case 620:
            eventoUi.tipoEventoUi.tipo = EventoIconoEnumUI.AGENDA;
            break;
          default:
            eventoUi.tipoEventoUi.tipo = EventoIconoEnumUI.DEFAULT;
            break;
        }
        eventoUiList.add(eventoUi);
      }

      eventoUiList.sort((a, b) => a.getFecha().compareTo(b.getFecha()));
      int count = 0;
      int max = 10;
      List<EventoUi> limitList = [];
      for(EventoUi eventoUi in eventoUiList){
        count++;
        if(count == max)break;
        limitList.add(eventoUi);
      }
      return eventoUiList;
    }catch(e){
      throw Exception(e);
    }
  }



}