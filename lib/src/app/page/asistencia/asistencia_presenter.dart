import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/domain/entities/calendario_periodio_ui.dart';
import 'package:padre_mentor/src/domain/usecases/get_asistencia.dart';
import 'package:padre_mentor/src/domain/usecases/get_calendario_periodo.dart';
import 'package:padre_mentor/src/domain/usecases/get_evaluacion.dart';

class AsistenciaPresenter extends Presenter{
  GetCalendarioPerido _getCalendarioPerido;
  Function getCalendarioPeridoOnNext, getCalendarioPeridoOnComplete, getCalendarioPeridoOnError;
  final int alumnoId;
  final int programaAcademicoId;
  final int anioAcademicoId;
  final String fotoAlumno;
  GetAsistencia _getAsistencia;
  Function getAsistenciaOnNext, getAsistenciaOnComplete, getAsistenciaOnError;

  AsistenciaPresenter(this.alumnoId, this.programaAcademicoId, this.anioAcademicoId, this.fotoAlumno, cursoRepo, httpDatosRepo, usuarioConfigRepo): _getCalendarioPerido = GetCalendarioPerido(cursoRepo), _getAsistencia = GetAsistencia(httpDatosRepo, cursoRepo, usuarioConfigRepo), super();

  @override
  void dispose() {
    _getCalendarioPerido.dispose();
  }

  void getCalendarioPerido(){
    _getCalendarioPerido.execute(_GetCalendarioPeridoCase(this),GetCalendarioPeridoParams(alumnoId: alumnoId, anioAcademico: anioAcademicoId, programaAcademicoId: programaAcademicoId));
  }

  void getEvaluacion(CalendarioPeriodoUI calendarioPeriodoUi){
    _getAsistencia.execute(_GetAsistenciaCase(this), GetAsistenciaParameters(anioAcademicoId, programaAcademicoId, calendarioPeriodoUi==null?0:calendarioPeriodoUi.id, alumnoId));
  }

}

class _GetCalendarioPeridoCase extends Observer<GetCalendarioPeridoResponse>{
  final AsistenciaPresenter presenter;

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

class _GetAsistenciaCase extends Observer<GetAsistenciaResponse>{
  final AsistenciaPresenter presenter;

  _GetAsistenciaCase(this.presenter);

  @override
  void onComplete() {
    assert(presenter.getAsistenciaOnComplete != null);
    presenter.getAsistenciaOnComplete();
  }

  @override
  void onError(e) {
    assert(presenter.getAsistenciaOnError != null);
    presenter.getAsistenciaOnError(e);
  }

  @override
  void onNext(GetAsistenciaResponse response) {
    assert(presenter.getAsistenciaOnNext != null);
    presenter.getAsistenciaOnNext(response.asistenciaAlumnoList, response.asistenciaTipoList, response.porcentaje, response.cantidad, response.errorServidor, response.offlineServidor);
  }

}