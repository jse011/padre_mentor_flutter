import 'package:padre_mentor/src/domain/entities/evento_ui.dart';
import 'package:padre_mentor/src/domain/entities/hijos_ui.dart';
import 'package:padre_mentor/src/domain/entities/login_ui.dart';
import 'package:padre_mentor/src/domain/entities/tipo_evento_ui.dart';
import 'package:padre_mentor/src/domain/entities/usuario_ui.dart';

abstract class UsuarioAndConfiguracionRepository{
  Future<UsuarioUi> getSessionUsuario();
  Future<void> saveDatosGlobales(Map<String, dynamic> datosInicioPadre);
  Future<HijosUi> getHijo(int alumnoId);
  Future<void> saveEventoAgenda(Map<String, dynamic> eventoAgenda, int usuarioId, int tipoEventoId, List<int> hijoIdList);
  Future<List<TipoEventoUi>> getTiposEvento();
  Future<List<EventoUi>> getEventosAgenda(int padreId, int tipoEventoId, List<int> hijos);
  Future<List<EventoUi>> getTopEventosAgenda(int padreId, int tipoEventoId, List<int> hijos);
  Future<void> updateSessionHijoSelected(int hijoSelectedId);
  Future<void> updateSessionProgramaEduSelected(int programaEduSelectedId, int hijoSelectedId);
  Future<bool> validarUsuario();
  Future<LoginUi> saveDatosServidor(Map<String, dynamic> datosServidor);
  Future<bool> cerrarCesion();
  Future<bool> saveUsuario(Map<String, dynamic> datosUsuario);
}