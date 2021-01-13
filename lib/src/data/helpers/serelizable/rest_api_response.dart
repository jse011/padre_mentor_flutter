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