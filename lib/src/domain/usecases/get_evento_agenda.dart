import 'dart:async';

import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/data/repositories/moor/model/tipos.dart';
import 'package:padre_mentor/src/domain/entities/evento_ui.dart';
import 'package:padre_mentor/src/domain/entities/tipo_evento_ui.dart';
import 'package:padre_mentor/src/domain/repositories/check_conex_repository.dart';
import 'package:padre_mentor/src/domain/repositories/http_datos_repository.dart';
import 'package:padre_mentor/src/domain/repositories/usuario_configuarion_repository.dart';
import 'package:padre_mentor/src/domain/tools/app_tools.dart';

class GetEventoAgenda extends UseCase<GetEvaluacionCaseResponse, GetEventoAgendaParams>{
  UsuarioAndConfiguracionRepository repository;
  HttpDatosRepository httpRepository;
  CheckConexRepository checkConexRepository;
  GetEventoAgenda(this.checkConexRepository, this.repository, this.httpRepository);

  @override
  Future<Stream<GetEvaluacionCaseResponse>> buildUseCaseStream(GetEventoAgendaParams params) async{
    final controller = StreamController<GetEvaluacionCaseResponse>();
    logger.finest('Hola Jse');
    try {
      List<TipoEventoUi> tiposUiList = await repository.getTiposEvento();

      controller.add(GetEvaluacionCaseResponse(tiposUiList, [], false, false));

      Future<String> executeServidor() async{
        bool hayConexion = await checkConexRepository.hayConexcion();
        if(hayConexion){
          Map<String, dynamic> eventoAgenda = await httpRepository.getEventoAgenda(params.usuarioId, params.tipoEventoId);
          await repository.saveEventoAgenda(eventoAgenda, params.usuarioId, params.tipoEventoId);
        }

        tiposUiList = await repository.getTiposEvento();
        List<EventoUi> eventoUIList = await repository.getEventosAgenda(params.usuarioId, params.tipoEventoId, params.hijoIdList);

        for(var eventosUi in eventoUIList){
          DateTime fechaEntrega =  eventosUi.fecha;
          if(fechaEntrega!=null && fechaEntrega.millisecondsSinceEpoch>912402000000){
            switch (eventosUi.tipoEventoUi.tipo){
              case EventoIconoEnumUI.EVENTO:
              //tipo += eventosUi.getFechaEvento() > 0 ?" " + :"";
                eventosUi.nombreFecha = AppTools.tiempoFechaCreacion(eventosUi.fecha);
                break;
              case EventoIconoEnumUI.NOTICIA:
                eventosUi.nombreFecha = AppTools.getFechaDiaMesAnho(eventosUi.fecha);
                break;
              default:
                eventosUi.nombreFecha = AppTools.tiempoFechaCreacion(eventosUi.fecha);
                break;
            }
          }else{
            eventosUi.nombreFecha = "";
          }
        }


        controller.add(GetEvaluacionCaseResponse(tiposUiList, eventoUIList, !hayConexion, false));
      }

      executeServidor().whenComplete((){
        logger.finest('EventoAgenda successful.');
        controller.close();
      }).catchError((e) {
        print("Got error: ${e.error}");     // Finally, callback fires.
        throw Exception(e);              // Future completes with 42.
      }).timeout(const Duration (seconds:60),onTimeout : () {
        throw Exception("GetEventoAgenda timeout 60 seconds");
      });

    } catch (e) {
    logger.severe('EventoAgenda unsuccessful: '+e.toString());
    // Trigger .onError
    controller.addError(e);

    }
    return controller.stream;
  }




}

class GetEventoAgendaParams {
  int usuarioId;
  int tipoEventoId;
  List<int> hijoIdList;

  GetEventoAgendaParams(this.usuarioId, this.tipoEventoId, this.hijoIdList);

}

class GetEvaluacionCaseResponse {
  List<TipoEventoUi> tipoEventoUiList;
  bool datosOffline;
  List<EventoUi> eventoUiList;
  bool sinConexion;

  GetEvaluacionCaseResponse(this.tipoEventoUiList, this.eventoUiList, this.sinConexion, this.datosOffline);
}