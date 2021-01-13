import 'package:moor_flutter/moor_flutter.dart';
import 'package:padre_mentor/src/data/helpers/serelizable/rest_api_response.dart';
import 'package:padre_mentor/src/data/repositories/moor/database/app_database.dart';
import 'package:padre_mentor/src/data/repositories/moor/model/plan_estudios.dart';


class SerializableConvert{

  static UsuarioData converSerializeUsuario(Map<String,dynamic> model){
    UsuarioSerial usuarioSerial = UsuarioSerial.fromJson(model);
    return UsuarioData(usuarioId: usuarioSerial.usuarioId, personaId: usuarioSerial.personaId, usuario: usuarioSerial.usuario, password: usuarioSerial.password, estado: usuarioSerial.estado, habilitarAcceso: usuarioSerial.habilitarAcceso);
  }

  static List<UsuarioData> converListSerializeUsuario(dynamic model){
    List<UsuarioData> usuarios = [];
    Iterable l = model;
    for(var item in l){
      usuarios.add(converSerializeUsuario(item));
    }
    return usuarios;
  }

  static PersonaData converSerializePersona(Map<String,dynamic> model){
    PersonaSerial personaSerial = PersonaSerial.fromJson(model);
    return PersonaData(
        personaId: personaSerial.personaId,
        nombres: personaSerial.nombres,
        apellidoPaterno: personaSerial.apellidoPaterno,
        apellidoMaterno: personaSerial.apellidoMaterno,
        celular: personaSerial.celular,
        telefono: personaSerial.telefono,
        foto: personaSerial.foto,
        fechaNac: personaSerial.fechaNac,
        genero: personaSerial.genero,
        estadoCivil: personaSerial.estadoCivil,
        numDoc: personaSerial.numDoc,
        ocupacion: personaSerial.ocupacion,
        estadoId: personaSerial.estadoId,
        correo: personaSerial.correo,
        direccion: personaSerial.direccion,
        path: personaSerial.path);
    //insert.personaId = Values(1);
  }

  static List<PersonaData> converListSerializePersona(dynamic model){
    List<PersonaData> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializePersona(item));
    }
    return items;
  }

  static Relacione converSerializeRelaciones(Map<String,dynamic> model){
    RelacionesSerial personaSerial = RelacionesSerial.fromJson(model);

    return Relacione(idRelacion: personaSerial.idRelacion, personaPrincipalId: personaSerial.personaPrincipalId, personaVinculadaId: personaSerial.personaVinculadaId,
      tipoId: personaSerial.tipoId, activo: personaSerial.activo);
  }

  static List<Relacione> converListSerializeRelaciones(dynamic model){
    List<Relacione> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeRelaciones(item));
    }
    return items;
  }

  static AnioAcademicoAlumnoData converSerializeAnioAcademicoAlumno(Map<String,dynamic> model){
    AnioAcademicoAlumnoSerial academicoAlumnoSerial = AnioAcademicoAlumnoSerial.fromJson(model);

    return AnioAcademicoAlumnoData(idAnioAcademico: academicoAlumnoSerial.idAnioAcademico,
    nombre: academicoAlumnoSerial.nombre,
    fechaInicio: academicoAlumnoSerial.fechaFin,
    fechaFin: academicoAlumnoSerial.fechaFin,
    denominacion: academicoAlumnoSerial.denominacion,
    georeferenciaId: academicoAlumnoSerial.georeferenciaId,
    organigramaId: academicoAlumnoSerial.organigramaId,
    estadoId: academicoAlumnoSerial.estadoId,
    tipoId: academicoAlumnoSerial.tipoId,
    personaId: academicoAlumnoSerial.personaId,
    /*toogle: academicoAlumnoSerial.toogle*/);
  }

  static List<AnioAcademicoAlumnoData> converListSerializeAnioAcademicoAlumno(dynamic model){
    List<AnioAcademicoAlumnoData> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeAnioAcademicoAlumno(item));
    }
    return items;
  }

  static CargaCursoData converSerializeCargaCurso(Map<String,dynamic> model){
    CargaCursosSerial serial = CargaCursosSerial.fromJson(model);

    return CargaCursoData(cargaCursoId: serial.cargaCursoId,
    planCursoId: serial.planCursoId,
    empleadoId: serial.empleadoId,
    cargaAcademicaId: serial.cargaAcademicaId,
    complejo: serial.complejo,
    evaluable: serial.evaluable,
    idempleado: serial.idempleado,
    idTipoHora: serial.idTipoHora,
    descripcion: serial.descripcion,
    fechaInicio: DateTime.fromMillisecondsSinceEpoch(serial.fechaInicio),
    fechafin: DateTime.fromMillisecondsSinceEpoch(serial.fechafin),
    modo: serial.modo,
    estado: serial.estado,
    anioAcademicoId: serial.anioAcademicoId,
    aulaId: serial.aulaId,
    grupoId: serial.grupoId,
    idPlanEstudio: serial.idPlanEstudio,
    idPlanEstudioVersion: serial.idPlanEstudioVersion,
    CapacidadVacanteP: serial.CapacidadVacanteP,
    CapacidadVacanteD: serial.CapacidadVacanteD);
  }

  static List<CargaCursoData> converListSerializeCargaCurso(dynamic model){
    List<CargaCursoData> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeCargaCurso(item));
    }
    return items;
  }

  static ContratoData converSerializeContrato(Map<String,dynamic> model){
    ContratoSerial serial = ContratoSerial.fromJson(model);

    return ContratoData(idContrato: serial.idContrato,
    personaId: serial.personaId,
    idAnioAcademico: serial.idAnioAcademico,
    nroHno: serial.nroHno,
    nivelAcaId: serial.nivelAcaId,
    seccionId: serial.seccionId,
    periodoId: serial.periodoId,
    vigente: serial.vigente,
    estadoId: serial.estadoId,
    apoderadoId: serial.apoderadoId);
  }

  static List<ContratoData> converListSerializeContrato(dynamic model){
    List<ContratoData> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeContrato(item));
    }
    return items;
  }

  static DetalleContratoAcadData converSerializeDetalleContratoAcad(Map<String,dynamic> model){
    DetalleContratoAcadSerial serial = DetalleContratoAcadSerial.fromJson(model);

    return DetalleContratoAcadData(idContratoDetAcad: serial.idContratoDetAcad,
    idContrato: serial.idContrato,
    cargaCursoId: serial.cargaCursoId,
    cargaAcademicaId: serial.cargaAcademicaId,
    notaPromedio: serial.notaPromedio,
    escala: serial.escala,
    anioAcademicoId: serial.anioAcademicoId,
    idNivelAcademico: serial.idNivelAcademico,
    cursoId: serial.cursoId,
    grupoId: serial.grupoId,
    aulaId: serial.aulaId);
  }

  static List<DetalleContratoAcadData> converListSerializeDetalleContratoAcad(dynamic model){
    List<DetalleContratoAcadData> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeDetalleContratoAcad(item));
    }
    return items;
  }

  static PlanCurso converSerializePlanCurso(Map<String,dynamic> model){
    PlanCursosSerial serial = PlanCursosSerial.fromJson(model);

    return PlanCurso(planCursoId: serial.planCursoId,
    cursoId: serial.cursoId,
    periodoId: serial.periodoId,
    planEstudiosId: serial.planEstudiosId);
  }

  static List<PlanCurso> converListSerializePlanCurso(dynamic model){
    List<PlanCurso> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializePlanCurso(item));
    }
    return items;
  }

  static PlanEstudioData converSerializePlanEstudio(Map<String,dynamic> model){
    PlanEstudiosSerial serial = PlanEstudiosSerial.fromJson(model);

    return PlanEstudioData( planEstudiosId: serial.planEstudiosId,
    programaEduId: serial.programaEduId,
    nombrePlan: serial.nombrePlan,
    aliasPlan: serial.alias,
    estadoId: serial.estadoId,
    nroResolucion: serial.nroResolucion,
    fechaResolucion: serial.fechaResolucion);
  }

  static List<PlanEstudioData> converListSerializePlanEstudio(dynamic model){
    List<PlanEstudioData> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializePlanEstudio(item));
    }
    return items;
  }

  static ProgramasEducativoData converSerializeProgramasEducativo(Map<String,dynamic> model){
    ProgramasEducativoSerial serial = ProgramasEducativoSerial.fromJson(model);

    return ProgramasEducativoData( programaEduId: serial.programaEduId,
        nombre: serial.nombre,
        nroCiclos: serial.nroCiclos,
        nivelAcadId: serial.nivelAcadId,
        tipoEvaluacionId: serial.tipoEvaluacionId,
        estadoId: serial.estadoId,
        entidadId: serial.entidadId,
        tipoInformeSiagieId: serial.tipoInformeSiagieId,
        /*toogle: serial.,*/
        tipoProgramaId: serial.tipoProgramaId,
        tipoMatriculaId: serial.tipoMatriculaId);
  }

  static List<ProgramasEducativoData> converListSerializeProgramasEducativo(dynamic model){
    List<ProgramasEducativoData> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeProgramasEducativo(item));
    }
    return items;
  }



}