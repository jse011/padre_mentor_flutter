import 'package:floor/floor.dart';

@entity
class Usuario{
  @PrimaryKey(autoGenerate: false)
  final int usuarioId;
  final int personaId;
  final String usuario;
  final String password;
  final bool estado;
  final bool habilitarAcceso;

  Usuario({this.usuarioId, this.personaId, this.usuario, this.password, this.estado, this.habilitarAcceso});

}