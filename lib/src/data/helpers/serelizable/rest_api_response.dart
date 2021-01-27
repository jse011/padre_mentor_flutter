import 'package:padre_mentor/src/data/repositories/floor_beta/mapping/usuario.dart';
import 'package:json_annotation/json_annotation.dart';

part 'rest_api_response.g.dart';
/*
* One-time code generation
By running flutter pub run build_runner build in the project root, you generate JSON serialization code for your models whenever they are needed. This triggers a one-time build that goes through the source files, picks the relevant ones, and generates the necessary serialization code for them.

While this is convenient, it would be nice if you did not have to run the build manually every time you make changes in your model classes.

Generating code continuously
A watcher makes our source code generation process more convenient. It watches changes in our project files and automatically builds the necessary files when needed. Start the watcher by running flutter pub run build_runner watch in the project root.

It is safe to start the watcher once and leave it running in the background.
* */
@JsonSerializable()
class UsuarioSerial{
   int usuarioId;
   int personaId;
   String usuario;
   String password;
   bool estado;
   bool habilitarAcceso;

   UsuarioSerial({this.usuarioId, this.personaId, this.usuario, this.password,
      this.estado, this.habilitarAcceso});

   factory UsuarioSerial.fromJson(Map<String, dynamic> json) => _$UsuarioSerialFromJson(json);

   Map<String, dynamic> toJson() => _$UsuarioSerialToJson(this);

}

@JsonSerializable()
class PersonaSerial{
   int personaId;
   String nombres;
   String apellidoPaterno;
   String apellidoMaterno;
   String celular;
   String telefono;
   String foto;
   String fechaNac;
   String genero;
   String estadoCivil;
   String numDoc;
   String ocupacion;
   int estadoId;
   String correo;
   String direccion;
   String path;

   PersonaSerial(
   {this.personaId,
      this.nombres,
      this.apellidoPaterno,
      this.apellidoMaterno,
      this.celular,
      this.telefono,
      this.foto,
      this.fechaNac,
      this.genero,
      this.estadoCivil,
      this.numDoc,
      this.ocupacion,
       this.estadoId,
      this.correo,
      this.direccion,
      this.path});

   factory PersonaSerial.fromJson(Map<String, dynamic> json) => _$PersonaSerialFromJson(json);

   Map<String, dynamic> toJson() => _$PersonaSerialToJson(this);
}

@JsonSerializable()
class RelacionesSerial{
   int idRelacion;
   int personaPrincipalId;
   int personaVinculadaId;
   int tipoId;
   bool activo;

   RelacionesSerial({this.idRelacion, this.personaPrincipalId, this.personaVinculadaId,
      this.tipoId, this.activo});

   factory RelacionesSerial.fromJson(Map<String, dynamic> json) => _$RelacionesSerialFromJson(json);

   Map<String, dynamic> toJson() => _$RelacionesSerialToJson(this);
}

@JsonSerializable()
class AnioAcademicoAlumnoSerial{

    int idAnioAcademico;
    String nombre;
    String fechaInicio;
    String fechaFin;
    String denominacion;
    int georeferenciaId;
    int organigramaId;
    int estadoId;
    int tipoId;
    int personaId;

    AnioAcademicoAlumnoSerial(
    {this.idAnioAcademico,
       this.nombre,
       this.fechaInicio,
       this.fechaFin,
       this.denominacion,
       this.georeferenciaId,
       this.organigramaId,
       this.estadoId,
       this.tipoId,
       this.personaId});

    factory AnioAcademicoAlumnoSerial.fromJson(Map<String, dynamic> json) => _$AnioAcademicoAlumnoSerialFromJson(json);

    Map<String, dynamic> toJson() => _$AnioAcademicoAlumnoSerialToJson(this);
}

@JsonSerializable()
class CargaCursosSerial{

    int cargaCursoId;
    int planCursoId;
    int empleadoId;
    int cargaAcademicaId;
    int complejo;
    int evaluable;
    int idempleado;
    int idTipoHora;
    String descripcion;
    int fechaInicio;//Long
    int fechafin;//Long
    String modo;
    int estado;
    int anioAcademicoId;
    int aulaId;
    int grupoId;
    int idPlanEstudio;
    int idPlanEstudioVersion;
    int CapacidadVacanteP;
    int CapacidadVacanteD;


    CargaCursosSerial(
    {this.cargaCursoId,
      this.planCursoId,
      this.empleadoId,
      this.cargaAcademicaId,
      this.complejo,
      this.evaluable,
      this.idempleado,
      this.idTipoHora,
      this.descripcion,
      this.fechaInicio,
      this.fechafin,
      this.modo,
      this.estado,
      this.anioAcademicoId,
      this.aulaId,
      this.grupoId,
      this.idPlanEstudio,
      this.idPlanEstudioVersion,
      this.CapacidadVacanteP,
      this.CapacidadVacanteD});

  factory CargaCursosSerial.fromJson(Map<String, dynamic> json) => _$CargaCursosSerialFromJson(json);

    Map<String, dynamic> toJson() => _$CargaCursosSerialToJson(this);
}

@JsonSerializable()
class ContratoSerial{
  
   int idContrato;
   int personaId;//Alum_Id
   int idAnioAcademico;
   int nroHno;
   int nivelAcaId;
   int seccionId;
   int periodoId;
   int vigente;
   int estadoId;
   int apoderadoId;


   ContratoSerial(
   {  this.idContrato,
      this.personaId,
      this.idAnioAcademico,
      this.nroHno,
      this.nivelAcaId,
      this.seccionId,
      this.periodoId,
      this.vigente,
      this.estadoId,
      this.apoderadoId});

  factory ContratoSerial.fromJson(Map<String, dynamic> json) => _$ContratoSerialFromJson(json);

   Map<String, dynamic> toJson() => _$ContratoSerialToJson(this);
}

@JsonSerializable()
class DetalleContratoAcadSerial{

   int idContratoDetAcad;
   int idContrato;
   int cargaCursoId;
   int cargaAcademicaId;
   String notaPromedio;
   String escala;
    int anioAcademicoId;
    int idNivelAcademico;
    int cursoId;
    int grupoId;
    int aulaId;

   DetalleContratoAcadSerial(
    {this.idContratoDetAcad,
      this.idContrato,
      this.cargaCursoId,
      this.cargaAcademicaId,
      this.notaPromedio,
      this.escala,
      this.anioAcademicoId,
      this.idNivelAcademico,
      this.cursoId,
      this.grupoId,
      this.aulaId});

   factory DetalleContratoAcadSerial.fromJson(Map<String, dynamic> json) => _$DetalleContratoAcadSerialFromJson(json);

   Map<String, dynamic> toJson() => _$DetalleContratoAcadSerialToJson(this);

}

@JsonSerializable()
class PlanCursosSerial {
  
   int planCursoId;
   int cursoId;
   int periodoId;
   int planEstudiosId;

   PlanCursosSerial(
   {this.planCursoId, this.cursoId, this.periodoId, this.planEstudiosId});

   factory PlanCursosSerial.fromJson(Map<String, dynamic> json) => _$PlanCursosSerialFromJson(json);

   Map<String, dynamic> toJson() => _$PlanCursosSerialToJson(this);
}

@JsonSerializable()
class ProgramasEducativoSerial {

   int programaEduId;
   String nombre;
   String nroCiclos;
   int nivelAcadId;
   int tipoEvaluacionId;
   int estadoId;
   int entidadId;
   int tipoInformeSiagieId;
   int tipoProgramaId;
   int tipoMatriculaId;

   ProgramasEducativoSerial(
    {this.programaEduId,
      this.nombre,
      this.nroCiclos,
      this.nivelAcadId,
      this.tipoEvaluacionId,
      this.estadoId,
      this.entidadId,
      this.tipoInformeSiagieId,
      this.tipoProgramaId,
      this.tipoMatriculaId});

   factory ProgramasEducativoSerial.fromJson(Map<String, dynamic> json) => _$ProgramasEducativoSerialFromJson(json);

   Map<String, dynamic> toJson() => _$ProgramasEducativoSerialToJson(this);
}

@JsonSerializable()
class PlanEstudiosSerial {
 
   int planEstudiosId;
   int programaEduId;
   String nombrePlan;
   String alias;
   int estadoId;
   String nroResolucion;
   String fechaResolucion;

   PlanEstudiosSerial({this.planEstudiosId, this.programaEduId, this.nombrePlan,
      this.alias, this.estadoId, this.nroResolucion, this.fechaResolucion});

   factory PlanEstudiosSerial.fromJson(Map<String, dynamic> json) => _$PlanEstudiosSerialFromJson(json);

   Map<String, dynamic> toJson() => _$PlanEstudiosSerialToJson(this);
}

@JsonSerializable()
class CalendarioPeriodoSerial {
  
  int calendarioPeriodoId;
  int fechaInicio;//long
  int fechaFin;//long
  int calendarioAcademicoId;
  int tipoId;
  int estadoId;
  int diazPlazo;

  CalendarioPeriodoSerial(
      {this.calendarioPeriodoId,
      this.fechaInicio,
      this.fechaFin,
      this.calendarioAcademicoId,
      this.tipoId,
      this.estadoId,
      this.diazPlazo});

  factory CalendarioPeriodoSerial.fromJson(Map<String, dynamic> json) => _$CalendarioPeriodoSerialFromJson(json);

  Map<String, dynamic> toJson() => _$CalendarioPeriodoSerialToJson(this);
}

@JsonSerializable()
class CalendarioAcademicoSerial{

   int calendarioAcademicoId;
   int programaEduId;
   int idAnioAcademico;
   int estadoId;

   CalendarioAcademicoSerial({this.calendarioAcademicoId, this.programaEduId,
      this.idAnioAcademico, this.estadoId});
   factory CalendarioAcademicoSerial.fromJson(Map<String, dynamic> json) => _$CalendarioAcademicoSerialFromJson(json);

   Map<String, dynamic> toJson() => _$CalendarioAcademicoSerialToJson(this);
}

@JsonSerializable()
class TiposSerial {

  int tipoId;
  String objeto;
  String concepto;
  String nombre;
  String codigo;
  int parentId;

  TiposSerial({this.tipoId, this.objeto, this.concepto, this.nombre, this.codigo,
      this.parentId});

  factory TiposSerial.fromJson(Map<String, dynamic> json) => _$TiposSerialFromJson(json);

  Map<String, dynamic> toJson() => _$TiposSerialToJson(this);
}

@JsonSerializable()
class AreasBoletaSerial{
 
  int rubroEvalResultadoId;
  String nombre;
  int tipoConceptoId;
  int totalHt;
  int silaboEventoId;
  String competencia;
  int tipoId;//TipoNotaId
  int tipoFormulaId;
  int competenciaId;
  int tipoCompetenciaId;
  int calendarioPeriodoId;
  int anioAcademicoId;
  int programaEducativoId;
  int periodoId;
  int seccionId;

  AreasBoletaSerial(
      {this.rubroEvalResultadoId,
      this.nombre,
      this.tipoConceptoId,
      this.totalHt,
      this.silaboEventoId,
      this.competencia,
      this.tipoId,
      this.tipoFormulaId,
      this.competenciaId,
      this.tipoCompetenciaId,
      this.calendarioPeriodoId,
      this.anioAcademicoId,
      this.programaEducativoId,
      this.periodoId,
      this.seccionId});

  factory AreasBoletaSerial.fromJson(Map<String, dynamic> json) => _$AreasBoletaSerialFromJson(json);

  Map<String, dynamic> toJson() => _$AreasBoletaSerialToJson(this);
}

@JsonSerializable()
class NotasCalendarioBoletaSerial{
 
  int evaluacionResultadoId;
  int rubroEvalResultadoId;
  int alumnoId;
  int silaboEventoId;
  String nota;
  double peso;
  String valorTipoNotaId;
  String tituloNota;
  int tipoNotaId;
  int calendarioPeriodoId;
  String color;

  NotasCalendarioBoletaSerial(
      {this.evaluacionResultadoId,
      this.rubroEvalResultadoId,
      this.alumnoId,
      this.silaboEventoId,
      this.nota,
      this.peso,
      this.valorTipoNotaId,
      this.tituloNota,
      this.tipoNotaId,
      this.calendarioPeriodoId,
      this.color});
  factory NotasCalendarioBoletaSerial.fromJson(Map<String, dynamic> json) => _$NotasCalendarioBoletaSerialFromJson(json);

  Map<String, dynamic> toJson() => _$NotasCalendarioBoletaSerialToJson(this);

}
@JsonSerializable()
class ParametrosDisenioSerial{
  
  int parametroDisenioId;
  String objeto;
  String concepto;
  String nombre;
  String path;
  String color1;
  String color2;
  String color3;
  bool estado;

  ParametrosDisenioSerial(
  {this.parametroDisenioId,
      this.objeto,
      this.concepto,
      this.nombre,
      this.path,
      this.color1,
      this.color2,
      this.color3,
      this.estado});

  factory ParametrosDisenioSerial.fromJson(Map<String, dynamic> json) => _$ParametrosDisenioSerialFromJson(json);

  Map<String, dynamic> toJson() => _$ParametrosDisenioSerialToJson(this);
}

@JsonSerializable()
class SilaboEventoSerial {

  int silaboEventoId;
  String titulo;
  String descripcionGeneral;
  int planCursoId;
  int entidadId;
  int docenteId;
  int seccionId;
  String fechaInicio;
  String fechaFin;
  int estadoId;
  int anioAcademicoId;
  int georeferenciaId;
  int silaboBaseId;
  int cargaCursoId;
  int parametroDisenioId;

  SilaboEventoSerial(
      {this.silaboEventoId,
      this.titulo,
      this.descripcionGeneral,
      this.planCursoId,
      this.entidadId,
      this.docenteId,
      this.seccionId,
      this.fechaInicio,
      this.fechaFin,
      this.estadoId,
      this.anioAcademicoId,
      this.georeferenciaId,
      this.silaboBaseId,
      this.cargaCursoId,
      this.parametroDisenioId});

  factory SilaboEventoSerial.fromJson(Map<String, dynamic> json) => _$SilaboEventoSerialFromJson(json);

  Map<String, dynamic> toJson() => _$SilaboEventoSerialToJson(this);
}

@JsonSerializable()
class RubroEvalDesempeniosSerial{
  String nombreCurso;
  int fechaEvaluacion;//long
  String tituloEvaluacion;
  String formaEvaluacion;
 int tipoRubroEvalId;
 int cargaCursoId;
 int silaboEventoId;
 int anioAcademicoId;
 int programaAcadId;
 String rubroEvalProcesoId;
 int alumnoId;
 int gradoId;
 String grado;
 int seccionId;
 String seccion;
 int calendarioPeriodoId;
 int parametroDesenioId;
  String iconoNivelLogro;
  String tituloNivelLogro;
  String descripcionNivelLogro;
  int tipoIdNivelLogro;
  double notaEvalaucion;
  String desempenioEvalaucion;
  int desempenioIcdTipoId;
  String evaluacionProcesoId;


  RubroEvalDesempeniosSerial(
      this.nombreCurso,
      this.fechaEvaluacion,
      this.tituloEvaluacion,
      this.formaEvaluacion,
      this.tipoRubroEvalId,
      this.cargaCursoId,
      this.silaboEventoId,
      this.anioAcademicoId,
      this.programaAcadId,
      this.rubroEvalProcesoId,
      this.alumnoId,
      this.gradoId,
      this.grado,
      this.seccionId,
      this.seccion,
      this.calendarioPeriodoId,
      this.parametroDesenioId,
      this.iconoNivelLogro,
      this.tituloNivelLogro,
      this.descripcionNivelLogro,
      this.tipoIdNivelLogro,
      this.notaEvalaucion,
      this.desempenioEvalaucion,
      this.desempenioIcdTipoId,
      this.evaluacionProcesoId);

  factory RubroEvalDesempeniosSerial.fromJson(Map<String, dynamic> json) => _$RubroEvalDesempeniosSerialFromJson(json);

  Map<String, dynamic> toJson() => _$RubroEvalDesempeniosSerialToJson(this);
}


@JsonSerializable()
class WebConfigsSerial {
  String nombre;
  String content;

  WebConfigsSerial(this.nombre, this.content);

  factory WebConfigsSerial.fromJson(Map<String, dynamic> json) => _$WebConfigsSerialFromJson(json);

  Map<String, dynamic> toJson() => _$WebConfigsSerialToJson(this);
}

@JsonSerializable()
class TareaCursoSerializable{
  String tareaId;
  String tareaTitulo;
  String tareaInstrucciones;
  int tareafechaCreacion;
  String tareaEstadoId;
  int unidadAprendizajeId;
  int sesionAprendizajeId;
  String tareaFechaEntrega;
  String tareaHoraEntrega;
  int gradoId;
  String grado;
  int seccionId;
  String seccion;
  int fechaEvaluacion; //long
  String tituloEvaluacion;
  String formaEvaluacion;
  int tipoRubroEvalId;
  int cargaCursoId;
  int silaboEventoId;
  int anioAcademicoId;
  int programaAcadId;
  String rubroEvalProcesoId;
  int alumnoId;
  int calendarioPeriodoId;
  int parametroDesenioId;
  String iconoNivelLogro;
  String tituloNivelLogro;
  String descripcionNivelLogro;
  int tipoIdNivelLogro;
  double notaEvalaucion;
  String evaluacionProcesoId;
  String nombreCurso;

  String docenteApellMat;
  String docenteApellPat;
  String docenteNombre;

  TareaCursoSerializable(
    {this.tareaId,
      this.tareaTitulo,
      this.tareaInstrucciones,
      this.tareafechaCreacion,
      this.tareaEstadoId,
      this.unidadAprendizajeId,
      this.sesionAprendizajeId,
      this.tareaFechaEntrega,
      this.tareaHoraEntrega,
      this.gradoId,
      this.grado,
      this.seccionId,
      this.seccion,
      this.fechaEvaluacion,
      this.tituloEvaluacion,
      this.formaEvaluacion,
      this.tipoRubroEvalId,
      this.cargaCursoId,
      this.silaboEventoId,
      this.anioAcademicoId,
      this.programaAcadId,
      this.rubroEvalProcesoId,
      this.alumnoId,
      this.calendarioPeriodoId,
      this.parametroDesenioId,
      this.iconoNivelLogro,
      this.tituloNivelLogro,
      this.descripcionNivelLogro,
      this.tipoIdNivelLogro,
      this.notaEvalaucion,
      this.evaluacionProcesoId,
      this.nombreCurso,
    this.docenteApellMat,
    this.docenteApellPat,
    this.docenteNombre});

  factory TareaCursoSerializable.fromJson(Map<String, dynamic> json) => _$TareaCursoSerializableFromJson(json);

  Map<String, dynamic> toJson() => _$TareaCursoSerializableToJson(this);
}

@JsonSerializable()
class EventoSerializable {
  String eventoId;
  String titulo;
  String descripcion;
  String calendarioId;
  int tipoEventoId;
  int estadoId;
  bool estadoPublicacion;
 int entidadId;
 int georeferenciaId;
  String fechaEvento_;
  String horaEvento;
  String pathImagen;
 bool envioPersonalizado;
  String tipoEventoNombre;
 int usuarioReceptorId;
 int eventoHijoId;
  String nombreEntidad;
  String fotoEntidad;
  String nombreEntidadSiglas;
  EventoSerializable(
  {this.eventoId,
      this.titulo,
      this.descripcion,
      this.calendarioId,
      this.tipoEventoId,
      this.estadoId,
      this.estadoPublicacion,
      this.entidadId,
      this.georeferenciaId,
      this.fechaEvento_,
      this.horaEvento,
      this.pathImagen,
      this.envioPersonalizado,
      this.tipoEventoNombre,
      this.usuarioReceptorId,
      this.eventoHijoId,
      this.nombreEntidad,
      this.fotoEntidad,
      this.nombreEntidadSiglas});

  factory EventoSerializable.fromJson(Map<String, dynamic> json) => _$EventoSerializableFromJson(json);

  Map<String, dynamic> toJson() => _$EventoSerializableToJson(this);

}

@JsonSerializable()
class CalendarioSerializable{
  String calendarioId;
  String nombre;
  String descripcion;
  int estado;
// int usuarioId;
  int entidadId;
  int georeferenciaId;
//string fechaAccion;
//string fechaCrecion;
  String nUsuario;
  String cargo;
  int usuarioId;

  int cargaAcademicaId;
  int cargaCursoId;
  int estadoPublicacion;
  int rolId;
  int fechaCreacion;
  int usuarioAccionId;
  int fechaAccion;

  CalendarioSerializable(
  {this.calendarioId,
      this.nombre,
      this.descripcion,
      this.estado,
      this.entidadId,
      this.georeferenciaId,
      this.nUsuario,
      this.cargo,
      this.usuarioId,
      this.cargaAcademicaId,
      this.cargaCursoId,
      this.estadoPublicacion,
      this.rolId,
      this.fechaCreacion,
      this.usuarioAccionId,
      this.fechaAccion});

  factory CalendarioSerializable.fromJson(Map<String, dynamic> json) => _$CalendarioSerializableFromJson(json);

  Map<String, dynamic> toJson() => _$CalendarioSerializableToJson(this);
}

@JsonSerializable()
class ContactoSerializable {
  int personaId;
  String nombres;
  String apellidoPaterno;
  String apellidoMaterno;
  String ocupacion;
  int estadoId;
  String telefono;
  String celular;
  String fechaNac;
  String correo;
  String genero;
  String estadoCivil;
  String numDoc;
  String foto;
  String nombreTipo;
  int tipo;
  int companieroId;
  int hijoRelacionId;
  String relacion;
  int cargaCursoId;

  ContactoSerializable(
      {this.personaId,
      this.nombres,
      this.apellidoPaterno,
      this.apellidoMaterno,
      this.ocupacion,
      this.estadoId,
      this.telefono,
      this.celular,
      this.fechaNac,
      this.correo,
      this.genero,
      this.estadoCivil,
      this.numDoc,
      this.foto,
      this.nombreTipo,
      this.tipo,
      this.companieroId,
      this.hijoRelacionId,
      this.relacion,
      this.cargaCursoId});

  factory ContactoSerializable.fromJson(Map<String, dynamic> json) => _$ContactoSerializableFromJson(json);

  Map<String, dynamic> toJson() => _$ContactoSerializableToJson(this);
}