import 'package:padre_mentor/src/domain/entities/familia_ui.dart';
import 'package:padre_mentor/src/domain/entities/hijos_ui.dart';
import 'package:padre_mentor/src/domain/entities/usuario_ui.dart';

abstract class HttpDatosRepository {
  Future<Map<String, dynamic>> getDatosInicioPadre(String urlServidor, int usuarioId);
  Future<Map<String, dynamic>> getBoletasNotas(int anioAcademicoId, int programaId, int periodoId, int seccionId, int calendarioPeridoId, int alumnoId, int georeferenciaId);
  Future<Map<String, dynamic>> getEvaluacionesPorCurso(int anioAcademicoId, int programaId, int calendarioPeridoId, int alumnoId);
  Future<Map<String, dynamic>> getTareaPorCurso(int anioAcademicoId, int programaId, int calendarioPeridoId, int alumnoId);
  Future<Map<String, dynamic>> getEventoAgenda(int usuarioId, int tipoEventoId);
  Future<Map<String, dynamic>> getContacto(int usuarioId);
  Future<Map<String, dynamic>> getUsuarioExterno(int opcion, String usuario, String password, String correo, String dni);
  Future<Map<String, dynamic>> getUsuario(String urlServidor, int usuarioId);
  Future<List<dynamic>> updateFamilia(String urlServidor, int usuarioId, List<dynamic> jsonPersonas);
}