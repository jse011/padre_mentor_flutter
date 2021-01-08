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
