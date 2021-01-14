import 'package:padre_mentor/src/domain/entities/usuario_ui.dart';

abstract class UsuarioAndConfiguracionRepository{
  Future<UsuarioUi> getSessionUsuario();
  Future<void> saveDatosGlobales(Map<String, dynamic> datosInicioPadre);
}