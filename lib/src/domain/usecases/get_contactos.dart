import 'dart:async';

import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

import 'get_eventos_top.dart';

class GetContactos extends UseCase<GetContactosCaseResponse, GetContactosCaseParams> {
  @override
  Future<Stream<GetContactosCaseResponse>> buildUseCaseStream(GetContactosCaseParams params) async{
    final controller = StreamController<GetContactosCaseResponse>();

    try {

      List<EventoUi> eventoUIList = await repository.getTopEventosAgenda(params.usuarioId, params.tipoEventoId, params.hijoIdList);
      eventoSuccess(eventoUIList);
      controller.add(GetEventoActualesResponse( eventoUIList, false, true));

      Future<String> executeServidor() async{
        Map<String, dynamic> eventoAgenda = await httpRepository.getEventoAgenda(params.usuarioId, params.tipoEventoId);
        bool errorServidor = eventoAgenda==null;
        if(!errorServidor){
          await repository.saveEventoAgenda(eventoAgenda, params.usuarioId, params.tipoEventoId, params.hijoIdList);
        }
        eventoUIList = await repository.getTopEventosAgenda(params.usuarioId, params.tipoEventoId, params.hijoIdList);
        controller.add(GetEventoActualesResponse(eventoUIList, errorServidor, false));
        logger.finest('EventoAgenda successful.');
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

}

class GetContactosCaseParams {
  final int usuarioId;
  GetContactosCaseParams(this.usuarioId);
}

/// Wrapping response inside an object makes it easier to change later
class GetContactosCaseResponse {
  List<dynamic> rubroEvaluacionList;

  GetContactosCaseResponse(this.rubroEvaluacionList);
}