import 'package:padre_mentor/src/domain/entities/hijos_ui.dart';
import 'package:padre_mentor/src/domain/entities/usuario_ui.dart';

abstract class UsuarioAndConfiguracionRepository{
  Future<UsuarioUi> getSessionUsuario();
  Future<void> saveDatosGlobales(Map<String, dynamic> datosInicioPadre);
  Future<HijosUi> getHijo(int alumnoId);
}