import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/domain/entities/calendario_periodio_ui.dart';
import 'package:padre_mentor/src/domain/usecases/get_calendario_periodo.dart';
import 'package:padre_mentor/src/domain/usecases/get_evaluacion.dart';

class EvaluacionPresenter extends Presenter{
  GetCalendarioPerido _getCalendarioPerido;
  Function getCalendarioPeridoOnNext, getCalendarioPeridoOnComplete, getCalendarioPeridoOnError;
  final int alumnoId;
  final int programaAcademicoId;
  final int anioAcademicoId;
  final String fotoAlumno;
  GetEvaluacion _getEvaluacion;
  Function getEvaluacionOnNext, getEvaluacionOnComplete, getEvaluacionOnError;

  EvaluacionPresenter(this.alumnoId, this.programaAcademicoId, this.anioAcademicoId, this.fotoAlumno, cursoRepo, httpDatosRepo): _getCalendarioPerido = GetCalendarioPerido(cursoRepo), _getEvaluacion = GetEvaluacion(httpDatosRepo, cursoRepo), super();

  @override
  void dispose() {
    _getCalendarioPerido.dispose();
  }

  void getCalendarioPerido(){
    _getCalendarioPerido.execute(_GetCalendarioPeridoCase(this),GetCalendarioPeridoParams(alumnoId: alumnoId, anioAcademico: anioAcademicoId, programaAcademicoId: programaAcademicoId));
  }

  void getEvaluacion(CalendarioPeriodoUI calendarioPeriodoUi){
    _getEvaluacion.execute(_GetEvaluacionCase(this), GetEvaluacionCaseParams(anioAcademicoId, programaAcademicoId, calendarioPeriodoUi==null?0:calendarioPeriodoUi.id, alumnoId));
  }

}

class _GetCalendarioPeridoCase extends Observer<GetCalendarioPeridoResponse>{
  final EvaluacionPresenter presenter;

  _GetCalendarioPeridoCase(this.presenter);

  @override
  void onComplete() {
    assert(presenter.getCalendarioPeridoOnComplete != null);
    presenter.getCalendarioPeridoOnComplete();
  }

  @override
  void onError(e) {
    assert(presenter.getCalendarioPeridoOnError != null);
    presenter.getCalendarioPeridoOnError(e);
  }

  @override
  void onNext(GetCalendarioPeridoResponse response) {
    assert(presenter.getCalendarioPeridoOnNext != null);
    presenter.getCalendarioPeridoOnNext(response.calendarioPeriodoList, response.calendarioPeriodoUI);
  }

}

class _GetEvaluacionCase extends Observer<GetEvaluacionCaseResponse>{
  final EvaluacionPresenter presenter;

  _GetEvaluacionCase(this.presenter);

  @override
  void onComplete() {
    assert(presenter.getEvaluacionOnComplete != null);
    presenter.getEvaluacionOnComplete();
  }

  @override
  void onError(e) {
    assert(presenter.getEvaluacionOnError != null);
    presenter.getEvaluacionOnError(e);
  }

  @override
  void onNext(GetEvaluacionCaseResponse response) {
    assert(presenter.getEvaluacionOnNext != null);
    presenter.getEvaluacionOnNext(response.rubroEvaluacionList);
  }

}