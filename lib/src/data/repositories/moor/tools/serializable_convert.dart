import 'package:moor_flutter/moor_flutter.dart';
import 'package:padre_mentor/src/data/helpers/serelizable/rest_api_response.dart';
import 'package:padre_mentor/src/data/repositories/moor/database/app_database.dart';


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


}