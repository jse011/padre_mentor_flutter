abstract class HttpDatosRepository {
  Future<Map<String, dynamic>> getDatosInicioPadre(int usuarioId);
  Future<Map<String, dynamic>> getBoletasNotas(int anioAcademicoId, int programaId, int periodoId, int seccionId, int calendarioPeridoId, int alumnoId, int georeferenciaId);
  Future<Map<String, dynamic>> getEvaluacionesPorCurso(int anioAcademicoId, int programaId, int calendarioPeridoId, int alumnoId);
  Future<Map<String, dynamic>> getTareaPorCurso(int anioAcademicoId, int programaId, int calendarioPeridoId, int alumnoId);
  Future<Map<String, dynamic>> getEventoAgenda(int usuarioId, int tipoEventoId);
  Future<Map<String, dynamic>> getContacto(int usuarioId);
  Future<Map<String, dynamic>> getUsuarioExterno(int opcion, String usuario, String password, String correo, String dni);
  Future<Map<String, dynamic>> getUsuario(int usuarioId);
}