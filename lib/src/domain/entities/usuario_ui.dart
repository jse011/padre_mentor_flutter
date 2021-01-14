import 'package:padre_mentor/src/domain/entities/hijos_ui.dart';
import 'package:padre_mentor/src/domain/entities/programa_educativo_ui.dart';

class UsuarioUi {
  int id;
  String nombre;
  String foto;
  List<HijosUi> hijos;
  List<ProgramaEducativoUi> programaEducativoUiList;

  UsuarioUi({this.id, this.nombre, this.foto, this.hijos, this.programaEducativoUiList});
}