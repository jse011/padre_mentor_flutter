import 'package:floor/floor.dart';

@entity
class Persona {
  
  @PrimaryKey(autoGenerate: false)
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

  Persona({ this.personaId,
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
    this.path });
}