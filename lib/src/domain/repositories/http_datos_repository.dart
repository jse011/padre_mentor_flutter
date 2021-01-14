abstract class HttpDatosRepository {
  Future<Map<String, dynamic>> getDatosInicioPadre(int usuarioId);
  Future<Map<String, dynamic>> getBoletasNotas(int anioAcademicoId, int programaId, int periodoId, int seccionId, int calendarioPeridoId, int alumnoId, int georeferenciaId);
}