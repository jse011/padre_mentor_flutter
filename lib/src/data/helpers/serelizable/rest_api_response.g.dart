// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsuarioSerial _$UsuarioSerialFromJson(Map<String, dynamic> json) {
  return UsuarioSerial(
    usuarioId: json['usuarioId'] as int,
    personaId: json['personaId'] as int,
    usuario: json['usuario'] as String,
    password: json['password'] as String,
    estado: json['estado'] as bool,
    habilitarAcceso: json['habilitarAcceso'] as bool,
  );
}

Map<String, dynamic> _$UsuarioSerialToJson(UsuarioSerial instance) =>
    <String, dynamic>{
      'usuarioId': instance.usuarioId,
      'personaId': instance.personaId,
      'usuario': instance.usuario,
      'password': instance.password,
      'estado': instance.estado,
      'habilitarAcceso': instance.habilitarAcceso,
    };

PersonaSerial _$PersonaSerialFromJson(Map<String, dynamic> json) {
  return PersonaSerial(
    personaId: json['personaId'] as int,
    nombres: json['nombres'] as String,
    apellidoPaterno: json['apellidoPaterno'] as String,
    apellidoMaterno: json['apellidoMaterno'] as String,
    celular: json['celular'] as String,
    telefono: json['telefono'] as String,
    foto: json['foto'] as String,
    fechaNac: json['fechaNac'] as String,
    genero: json['genero'] as String,
    estadoCivil: json['estadoCivil'] as String,
    numDoc: json['numDoc'] as String,
    ocupacion: json['ocupacion'] as String,
    estadoId: json['estadoId'] as int,
    correo: json['correo'] as String,
    direccion: json['direccion'] as String,
    path: json['path'] as String,
  );
}

Map<String, dynamic> _$PersonaSerialToJson(PersonaSerial instance) =>
    <String, dynamic>{
      'personaId': instance.personaId,
      'nombres': instance.nombres,
      'apellidoPaterno': instance.apellidoPaterno,
      'apellidoMaterno': instance.apellidoMaterno,
      'celular': instance.celular,
      'telefono': instance.telefono,
      'foto': instance.foto,
      'fechaNac': instance.fechaNac,
      'genero': instance.genero,
      'estadoCivil': instance.estadoCivil,
      'numDoc': instance.numDoc,
      'ocupacion': instance.ocupacion,
      'estadoId': instance.estadoId,
      'correo': instance.correo,
      'direccion': instance.direccion,
      'path': instance.path,
    };

RelacionesSerial _$RelacionesSerialFromJson(Map<String, dynamic> json) {
  return RelacionesSerial(
    idRelacion: json['idRelacion'] as int,
    personaPrincipalId: json['personaPrincipalId'] as int,
    personaVinculadaId: json['personaVinculadaId'] as int,
    tipoId: json['tipoId'] as int,
    activo: json['activo'] as bool,
  );
}

Map<String, dynamic> _$RelacionesSerialToJson(RelacionesSerial instance) =>
    <String, dynamic>{
      'idRelacion': instance.idRelacion,
      'personaPrincipalId': instance.personaPrincipalId,
      'personaVinculadaId': instance.personaVinculadaId,
      'tipoId': instance.tipoId,
      'activo': instance.activo,
    };

AnioAcademicoAlumnoSerial _$AnioAcademicoAlumnoSerialFromJson(
    Map<String, dynamic> json) {
  return AnioAcademicoAlumnoSerial(
    idAnioAcademico: json['idAnioAcademico'] as int,
    nombre: json['nombre'] as String,
    fechaInicio: json['fechaInicio'] as String,
    fechaFin: json['fechaFin'] as String,
    denominacion: json['denominacion'] as String,
    georeferenciaId: json['georeferenciaId'] as int,
    organigramaId: json['organigramaId'] as int,
    estadoId: json['estadoId'] as int,
    tipoId: json['tipoId'] as int,
    personaId: json['personaId'] as int,
  );
}

Map<String, dynamic> _$AnioAcademicoAlumnoSerialToJson(
        AnioAcademicoAlumnoSerial instance) =>
    <String, dynamic>{
      'idAnioAcademico': instance.idAnioAcademico,
      'nombre': instance.nombre,
      'fechaInicio': instance.fechaInicio,
      'fechaFin': instance.fechaFin,
      'denominacion': instance.denominacion,
      'georeferenciaId': instance.georeferenciaId,
      'organigramaId': instance.organigramaId,
      'estadoId': instance.estadoId,
      'tipoId': instance.tipoId,
      'personaId': instance.personaId,
    };

CargaCursosSerial _$CargaCursosSerialFromJson(Map<String, dynamic> json) {
  return CargaCursosSerial(
    cargaCursoId: json['cargaCursoId'] as int,
    planCursoId: json['planCursoId'] as int,
    empleadoId: json['empleadoId'] as int,
    cargaAcademicaId: json['cargaAcademicaId'] as int,
    complejo: json['complejo'] as int,
    evaluable: json['evaluable'] as int,
    idempleado: json['idempleado'] as int,
    idTipoHora: json['idTipoHora'] as int,
    descripcion: json['descripcion'] as String,
    fechaInicio: json['fechaInicio'] as int,
    fechafin: json['fechafin'] as int,
    modo: json['modo'] as String,
    estado: json['estado'] as int,
    anioAcademicoId: json['anioAcademicoId'] as int,
    aulaId: json['aulaId'] as int,
    grupoId: json['grupoId'] as int,
    idPlanEstudio: json['idPlanEstudio'] as int,
    idPlanEstudioVersion: json['idPlanEstudioVersion'] as int,
    CapacidadVacanteP: json['CapacidadVacanteP'] as int,
    CapacidadVacanteD: json['CapacidadVacanteD'] as int,
  );
}

Map<String, dynamic> _$CargaCursosSerialToJson(CargaCursosSerial instance) =>
    <String, dynamic>{
      'cargaCursoId': instance.cargaCursoId,
      'planCursoId': instance.planCursoId,
      'empleadoId': instance.empleadoId,
      'cargaAcademicaId': instance.cargaAcademicaId,
      'complejo': instance.complejo,
      'evaluable': instance.evaluable,
      'idempleado': instance.idempleado,
      'idTipoHora': instance.idTipoHora,
      'descripcion': instance.descripcion,
      'fechaInicio': instance.fechaInicio,
      'fechafin': instance.fechafin,
      'modo': instance.modo,
      'estado': instance.estado,
      'anioAcademicoId': instance.anioAcademicoId,
      'aulaId': instance.aulaId,
      'grupoId': instance.grupoId,
      'idPlanEstudio': instance.idPlanEstudio,
      'idPlanEstudioVersion': instance.idPlanEstudioVersion,
      'CapacidadVacanteP': instance.CapacidadVacanteP,
      'CapacidadVacanteD': instance.CapacidadVacanteD,
    };

ContratoSerial _$ContratoSerialFromJson(Map<String, dynamic> json) {
  return ContratoSerial(
    idContrato: json['idContrato'] as int,
    personaId: json['personaId'] as int,
    idAnioAcademico: json['idAnioAcademico'] as int,
    nroHno: json['nroHno'] as int,
    nivelAcaId: json['nivelAcaId'] as int,
    seccionId: json['seccionId'] as int,
    periodoId: json['periodoId'] as int,
    vigente: json['vigente'] as int,
    estadoId: json['estadoId'] as int,
    apoderadoId: json['apoderadoId'] as int,
  );
}

Map<String, dynamic> _$ContratoSerialToJson(ContratoSerial instance) =>
    <String, dynamic>{
      'idContrato': instance.idContrato,
      'personaId': instance.personaId,
      'idAnioAcademico': instance.idAnioAcademico,
      'nroHno': instance.nroHno,
      'nivelAcaId': instance.nivelAcaId,
      'seccionId': instance.seccionId,
      'periodoId': instance.periodoId,
      'vigente': instance.vigente,
      'estadoId': instance.estadoId,
      'apoderadoId': instance.apoderadoId,
    };

DetalleContratoAcadSerial _$DetalleContratoAcadSerialFromJson(
    Map<String, dynamic> json) {
  return DetalleContratoAcadSerial(
    idContratoDetAcad: json['idContratoDetAcad'] as int,
    idContrato: json['idContrato'] as int,
    cargaCursoId: json['cargaCursoId'] as int,
    cargaAcademicaId: json['cargaAcademicaId'] as int,
    notaPromedio: json['notaPromedio'] as String,
    escala: json['escala'] as String,
    anioAcademicoId: json['anioAcademicoId'] as int,
    idNivelAcademico: json['idNivelAcademico'] as int,
    cursoId: json['cursoId'] as int,
    grupoId: json['grupoId'] as int,
    aulaId: json['aulaId'] as int,
  );
}

Map<String, dynamic> _$DetalleContratoAcadSerialToJson(
        DetalleContratoAcadSerial instance) =>
    <String, dynamic>{
      'idContratoDetAcad': instance.idContratoDetAcad,
      'idContrato': instance.idContrato,
      'cargaCursoId': instance.cargaCursoId,
      'cargaAcademicaId': instance.cargaAcademicaId,
      'notaPromedio': instance.notaPromedio,
      'escala': instance.escala,
      'anioAcademicoId': instance.anioAcademicoId,
      'idNivelAcademico': instance.idNivelAcademico,
      'cursoId': instance.cursoId,
      'grupoId': instance.grupoId,
      'aulaId': instance.aulaId,
    };

PlanCursosSerial _$PlanCursosSerialFromJson(Map<String, dynamic> json) {
  return PlanCursosSerial(
    planCursoId: json['planCursoId'] as int,
    cursoId: json['cursoId'] as int,
    periodoId: json['periodoId'] as int,
    planEstudiosId: json['planEstudiosId'] as int,
  );
}

Map<String, dynamic> _$PlanCursosSerialToJson(PlanCursosSerial instance) =>
    <String, dynamic>{
      'planCursoId': instance.planCursoId,
      'cursoId': instance.cursoId,
      'periodoId': instance.periodoId,
      'planEstudiosId': instance.planEstudiosId,
    };

ProgramasEducativoSerial _$ProgramasEducativoSerialFromJson(
    Map<String, dynamic> json) {
  return ProgramasEducativoSerial(
    programaEduId: json['programaEduId'] as int,
    nombre: json['nombre'] as String,
    nroCiclos: json['nroCiclos'] as String,
    nivelAcadId: json['nivelAcadId'] as int,
    tipoEvaluacionId: json['tipoEvaluacionId'] as int,
    estadoId: json['estadoId'] as int,
    entidadId: json['entidadId'] as int,
    tipoInformeSiagieId: json['tipoInformeSiagieId'] as int,
    tipoProgramaId: json['tipoProgramaId'] as int,
    tipoMatriculaId: json['tipoMatriculaId'] as int,
  );
}

Map<String, dynamic> _$ProgramasEducativoSerialToJson(
        ProgramasEducativoSerial instance) =>
    <String, dynamic>{
      'programaEduId': instance.programaEduId,
      'nombre': instance.nombre,
      'nroCiclos': instance.nroCiclos,
      'nivelAcadId': instance.nivelAcadId,
      'tipoEvaluacionId': instance.tipoEvaluacionId,
      'estadoId': instance.estadoId,
      'entidadId': instance.entidadId,
      'tipoInformeSiagieId': instance.tipoInformeSiagieId,
      'tipoProgramaId': instance.tipoProgramaId,
      'tipoMatriculaId': instance.tipoMatriculaId,
    };

PlanEstudiosSerial _$PlanEstudiosSerialFromJson(Map<String, dynamic> json) {
  return PlanEstudiosSerial(
    planEstudiosId: json['planEstudiosId'] as int,
    programaEduId: json['programaEduId'] as int,
    nombrePlan: json['nombrePlan'] as String,
    alias: json['alias'] as String,
    estadoId: json['estadoId'] as int,
    nroResolucion: json['nroResolucion'] as String,
    fechaResolucion: json['fechaResolucion'] as String,
  );
}

Map<String, dynamic> _$PlanEstudiosSerialToJson(PlanEstudiosSerial instance) =>
    <String, dynamic>{
      'planEstudiosId': instance.planEstudiosId,
      'programaEduId': instance.programaEduId,
      'nombrePlan': instance.nombrePlan,
      'alias': instance.alias,
      'estadoId': instance.estadoId,
      'nroResolucion': instance.nroResolucion,
      'fechaResolucion': instance.fechaResolucion,
    };
