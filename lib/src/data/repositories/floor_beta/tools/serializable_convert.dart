import 'package:padre_mentor/src/data/helpers/serelizable/rest_api_response.dart';
import 'package:padre_mentor/src/data/repositories/floor_beta/mapping/persona.dart';
import 'package:padre_mentor/src/data/repositories/floor_beta/mapping/relaciones.dart';
import 'package:padre_mentor/src/data/repositories/floor_beta/mapping/usuario.dart';

class SerializableConvert{

  static Usuario converSerializeUsuario(Map<String,dynamic> model){
    UsuarioSerial usuarioSerial = UsuarioSerial.fromJson(model);
    return Usuario(usuarioId: usuarioSerial.usuarioId, personaId: usuarioSerial.personaId, usuario: usuarioSerial.usuario, password: usuarioSerial.password, estado: usuarioSerial.estado, habilitarAcceso: usuarioSerial.habilitarAcceso);
  }

  static List<Usuario> converListSerializeUsuario(dynamic model){
    List<Usuario> usuarios = [];
    Iterable l = model;
    for(var item in l){
      usuarios.add(converSerializeUsuario(item));
    }
    return usuarios;
  }

  static Persona converSerializePersona(Map<String,dynamic> model){
    PersonaSerial personaSerial = PersonaSerial.fromJson(model);
    
    return Persona(personaId: personaSerial.personaId,
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
  }

  static List<Persona> converListSerializePersona(dynamic model){
    List<Persona> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializePersona(item));
    }
    return items;
  }

  static Relaciones converSerializeRelaciones(Map<String,dynamic> model){
    RelacionesSerial personaSerial = RelacionesSerial.fromJson(model);

    return Relaciones(idRelacion: personaSerial.idRelacion, personaPrincipalId: personaSerial.personaPrincipalId, personaVinculadaId: personaSerial.personaVinculadaId,
      tipoId: personaSerial.tipoId, activo: personaSerial.activo);
  }

  static List<Relaciones> converListSerializeRelaciones(dynamic model){
    List<Relaciones> items = [];
    Iterable l = model;
    for(var item in l){
      items.add(converSerializeRelaciones(item));
    }
    return items;
  }


}