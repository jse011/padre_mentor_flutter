import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:padre_mentor/src/domain/repositories/http_datos_repository.dart';

class DeviceHttpDatosRepositorio extends HttpDatosRepository{
  //'http://educar.icrmedu.com/CRMMovil/PortalAcadMovil.ashx/'
  String url = 'http://educar.icrmedu.com/CRMMovil/PortalAcadMovil.ashx/';

  String getBody(String method, Object parameters){
    Map<String, dynamic> body = Map<String, dynamic>();
    body["interface"] = "RestAPI";
    body["method"] = method;
    body["parameters"] = parameters;
    return json.encode(body);
  }

  @override
  Future<Map<String, dynamic>> getDatosInicioPadre(int usuarioId) async {
    Map<String, dynamic> parameters = Map<String, dynamic>();
    parameters["vint_UsuarioId"] = usuarioId;
    final response = await http.post(url, body: getBody("flst_getDatosInicioSesionPadreFull",parameters));
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      Map<String,dynamic> body = json.decode(response.body);
      if(body.containsKey("Successful")&&body.containsKey("Value")){
          return body["Value"];
      }else{
        throw Exception('Failed to load usuario 1');
      }

    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load usuario 0');
    }
  }


}