import 'package:moor_flutter/moor_flutter.dart';

class RubroEvalDesempenio extends Table{
  TextColumn get nombreCurso => text().nullable()();
  DateTimeColumn get fechaEvaluacion => dateTime().nullable()();
  TextColumn get tituloEvaluacion => text().nullable()();
  TextColumn get formaEvaluacion => text().nullable()();
  IntColumn get tipoRubroEvalId => integer().nullable()();
  IntColumn get cargaCursoId => integer().nullable()();
  IntColumn get silaboEventoId => integer().nullable()();
  IntColumn get anioAcademicoId => integer().nullable()();
  IntColumn get programaAcadId => integer().nullable()();
  TextColumn get rubroEvalProcesoId => text()();
  IntColumn get alumnoId => integer().nullable()();
  IntColumn get gradoId => integer().nullable()();
  TextColumn get grado => text().nullable()();
  IntColumn get seccionId => integer().nullable()();
  TextColumn get seccion => text().nullable()();
  IntColumn get calendarioPeriodoId => integer().nullable()();

  @override
  Set<Column> get primaryKey => {rubroEvalProcesoId};

}