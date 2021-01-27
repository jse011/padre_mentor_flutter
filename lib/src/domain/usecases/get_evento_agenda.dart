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
    try {
      //printTime();
      List<TipoEventoUi> tiposUiList = await repository.getTiposEvento();
      for(TipoEventoUi tipoEventoUi in tiposUiList)tipoEventoUi.disable = false;
      controller.add(GetEvaluacionCaseResponse(tiposUiList, [], false, false));
      //printTime();
      print("EventoAgenda executeServidor init");
      Future<String> executeServidor() async{
        //printTime();
        Map<String, dynamic> eventoAgenda = await httpRepository.getEventoAgenda(params.usuarioId, params.tipoEventoId);
        bool errorServidor = eventoAgenda==null;
        if(!errorServidor){
          //printTime();
          await repository.saveEventoAgenda(eventoAgenda, params.usuarioId, params.tipoEventoId, params.hijoIdList);
          //printTime();
        }

        List<TipoEventoUi> tiposUiList = await repository.getTiposEvento();
        //printTime();
        for(TipoEventoUi tipoEventoUi in tiposUiList)tipoEventoUi.disable = false;
        List<EventoUi> eventoUIList = await repository.getEventosAgenda(params.usuarioId, params.tipoEventoId, params.hijoIdList);
        //printTime();

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

        controller.add(GetEvaluacionCaseResponse(tiposUiList, eventoUIList, errorServidor, false));
        controller.close();
      }

      executeServidor().catchError((e) {
        controller.addError(e);
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

  /*static void  printTime(){
    DateTime now = DateTime.now();
    print("GetEventoAgenda Hola Jse timer: " + now.hour.toString() + ":" + now.minute.toString() + ":" + now.second.toString()+" "+ now.millisecond.toString());
  }*/

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
  bool errorServidor;

  GetEvaluacionCaseResponse(this.tipoEventoUiList, this.eventoUiList, this.errorServidor, this.datosOffline);
}