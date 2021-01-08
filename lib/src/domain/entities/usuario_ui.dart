import 'package:padre_mentor/src/domain/entities/hijos_ui.dart';

class UsuarioUi {
  int id;
  String nombre;
  String foto;
  List<HijosUi> hijos;

  UsuarioUi({this.id, this.nombre, this.foto, this.hijos});
}
