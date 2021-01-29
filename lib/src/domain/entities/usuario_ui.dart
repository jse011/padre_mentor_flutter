import 'package:padre_mentor/src/domain/entities/contacto_ui.dart';
import 'package:padre_mentor/src/domain/entities/hijos_ui.dart';
import 'package:padre_mentor/src/domain/entities/programa_educativo_ui.dart';

import 'familia_ui.dart';

class UsuarioUi {
  int id;
  String nombre;
  String nombreSimple;
  String foto;
  List<HijosUi> hijos;
  List<ProgramaEducativoUi> programaEducativoUiList;
  HijosUi hijoSelected;
  ProgramaEducativoUi programaEducativoUiSelected;
  String celular;
  String correo;
  String fechaNacimiento;
  List<FamiliaUi> familiaUiList = [];
  UsuarioUi({this.id, this.nombre, this.foto, this.hijos, this.programaEducativoUiList, this.celular, this.correo, this.fechaNacimiento, this.familiaUiList, this.nombreSimple});
}