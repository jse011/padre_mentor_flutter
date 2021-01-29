import 'dart:async';

import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:padre_mentor/src/domain/entities/contacto_ui.dart';
import 'package:padre_mentor/src/domain/repositories/curso_repository.dart';
import 'package:padre_mentor/src/domain/repositories/http_datos_repository.dart';

import 'get_eventos_top.dart';

class GetContactos extends UseCase<GetContactosCaseResponse, GetContactosCaseParams> {
  CursoRepository repository;
  HttpDatosRepository httpRepository;


  GetContactos(this.repository, this.httpRepository);

  @override
  Future<Stream<GetContactosCaseResponse>> buildUseCaseStream(GetContactosCaseParams params) async{
    final controller = StreamController<GetContactosCaseResponse>();

    try {

      List<ContactoUi> contactoUIList = await repository.getContactos(params.hijoIdList);


      controller.add(GetContactosCaseResponse(agregarCabecera(contactoUIList, 1), agregarCabecera(contactoUIList, 3), agregarCabecera(contactoUIList, 4)));

      Future<String> executeServidor() async{
        Map<String, dynamic> contactoServidor = await httpRepository.getContacto(params.usuarioId);
        bool errorServidor = contactoServidor==null;
        if(!errorServidor){
          await repository.saveContactos(contactoServidor);
        }
        contactoUIList = await repository.getContactos(params.hijoIdList);
        controller.add(GetContactosCaseResponse(agregarCabecera(contactoUIList, 1), agregarCabecera(contactoUIList, 3), agregarCabecera(contactoUIList, 4)));
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

  List<dynamic> agregarCabecera(List<ContactoUi> contactoUiList, int tipo){
    List<dynamic> list = [];
    contactoUiList.sort((a1, a2){
      String nombre1 = a1.nombre!=null?a1.nombre:" ";
      String nombre2 = a2.nombre!=null?a2.nombre:" ";
      return nombre1.compareTo(nombre2);

    });
    for(ContactoUi contactoUi in contactoUiList){
      if(tipo == contactoUi.tipo){
        String letra = contactoUi.nombre!=null&&contactoUi.nombre.length>0?contactoUi.nombre[0]:" ";
        String cabecera = list.firstWhere((element)=>element==letra, orElse: ()=> null);
        if(cabecera==null)list.add(letra);
        list.add(contactoUi);
      }
    }
    return list;
  }

}

class GetContactosCaseParams {
  final int usuarioId;
  final List<int> hijoIdList;

  GetContactosCaseParams(this.usuarioId, this.hijoIdList);
}

/// Wrapping response inside an object makes it easier to change later
class GetContactosCaseResponse {
  List<dynamic> alumnosList;
  List<dynamic> docentesList;
  List<dynamic> directivosList;

  GetContactosCaseResponse(
      this.alumnosList, this.docentesList, this.directivosList);
}