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