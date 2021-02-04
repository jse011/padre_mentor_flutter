import 'package:padre_mentor/src/domain/entities/calendario_periodio_ui.dart';
import 'package:padre_mentor/src/domain/entities/contacto_ui.dart';
import 'package:padre_mentor/src/domain/entities/contrato_ui_ui.dart';
import 'package:padre_mentor/src/domain/entities/curso_boleta_ui.dart';
import 'package:padre_mentor/src/domain/entities/curso_ui.dart';
import 'package:padre_mentor/src/domain/entities/rubro_evaluacion_ui.dart';
import 'package:padre_mentor/src/domain/entities/tarea_eval_curso_ui.dart';

abstract class CursoRepository{
  Future<List<CalendarioPeriodoUI>> getCalendarioPerios(int programaEducativoId, int alumnoId, int anioAcademicoId);
  Future<void> saveBoletaNotas(Map<String, dynamic> datosBoleta, int anioAcademicoId, int programaEducativoId, int periodoId, int seccionId, int calendarioPeridoId, int alumnoId, int georeferenciaId);
  Future<List<CursoBoletaUi>> getBoletaNotas(int alumnoId, int anioAcademicoId, int calendarioPeridoId, int programaEducativoId, int periodoId, int seccionId);
  Future<ContratoUi> getContratoUi(int anioAcademicoId, int alumnoId);
  Future<void> saveEvaluaciones(Map<String, dynamic> datosEvaluaciones, int anioAcademicoId, int programaId, int calendarioPeridoId, int alumnoId);
  Future<List<RubroEvaluacionUi>> getEvaluacionesPorCurso(int anioAcademicoId, int programaId, int calendarioPeridoId, int alumnoId);
  Future<void> saveTareaEvaluaciones(Map<String, dynamic> datosTareaEvalaucion, int anioAcademicoId, int programaId, int calendarioPeridoId, int alumnoId);
  Future<List<TareaEvaluacionCursoUi>> getTareaEvaluacionPorCurso(int anioAcademicoId, int programaId, int calendarioPeridoId, int alumnoId);
  Future<void> saveContactos(Map<String, dynamic> datosTareaEvalaucion);
  Future<List<ContactoUi>> getContactos(List<int> hijoIdList);
  Future<List<CursoUi>> getCursos(int programaAcademicoId, int alumnoId, int anioAcademico);
}