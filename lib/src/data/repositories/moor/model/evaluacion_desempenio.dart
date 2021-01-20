import 'package:moor_flutter/moor_flutter.dart';

class EvaluacionDesempenio extends Table{
  TextColumn get iconoNivelLogro => text().nullable()();
  TextColumn get tituloNivelLogro => text().nullable()();
  TextColumn get descripcionNivelLogro => text().nullable()();
  IntColumn get tipoIdNivelLogro => integer().nullable()();
  RealColumn get notaEvalaucion => real().nullable()();
  TextColumn get desempenioEvalaucion => text().nullable()();
  IntColumn get desempenioIcdTipoId => integer().nullable()();
  TextColumn get rubroEvalProcesoId => text().nullable()();
  TextColumn get secRubroEvalProcesoId =>text().nullable()();
  IntColumn get alumnoId => integer().nullable()();
  TextColumn get evaluacionProcesoId => text()();
  IntColumn get calendarioPeriodoId => integer().nullable()();

  @override
  Set<Column> get primaryKey => {evaluacionProcesoId};

}