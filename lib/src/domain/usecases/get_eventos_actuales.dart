import 'dart:async';

import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/domain/entities/evento_ui.dart';
import 'package:padre_mentor/src/domain/entities/tipo_evento_ui.dart';
import 'package:padre_mentor/src/domain/repositories/check_conex_repository.dart';
import 'package:padre_mentor/src/domain/repositories/http_datos_repository.dart';
import 'package:padre_mentor/src/domain/repositories/usuario_configuarion_repository.dart';
import 'package:padre_mentor/src/domain/tools/app_tools.dart';

class GetEventoActuales extends UseCase<GetEventoActualesResponse, GetEventoActualesParams>{
  UsuarioAndConfiguracionRepository repository;
  HttpDatosRepository httpRepository;
  CheckConexRepository checkConexRepository;
  GetEventoActuales(this.checkConexRepository, this.repository, this.httpRepository);

  @override
  Future<Stream<GetEventoActualesResponse>> buildUseCaseStream(GetEventoActualesParams params) async{
    final controller = StreamController<GetEventoActualesResponse>();
    logger.finest('Hola Jse');
    try {
      bool hayConexion = await checkConexRepository.hayConexcion();
      if(hayConexion){
        Map<String, dynamic> eventoAgenda = await httpRepository.getEventoAgenda(params.usuarioId, params.tipoEventoId);
        await repository.saveEventoAgenda(eventoAgenda, params.usuarioId, params.tipoEventoId);
      }

      List<TipoEventoUi> tiposUiList = await repository.getTiposEvento();
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


      controller.add(GetEventoActualesResponse( eventoUIList, !hayConexion));

      logger.finest('EventoAgenda successful.');
      controller.close();
    } catch (e) {
      logger.severe('EventoAgenda unsuccessful: '+e.toString());
      // Trigger .onError
      controller.addError(e);

    }
    return controller.stream;
  }




}

class GetEventoActualesParams {
  int usuarioId;
  int tipoEventoId;
  List<int> hijoIdList;

  GetEventoActualesParams(this.usuarioId, this.tipoEventoId, this.hijoIdList);

}

class GetEventoActualesResponse {
  List<EventoUi> eventoUiList;
  bool sinConexion;

  GetEventoActualesResponse(this.eventoUiList, this.sinConexion);
}