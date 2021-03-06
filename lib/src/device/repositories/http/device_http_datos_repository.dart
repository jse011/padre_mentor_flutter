import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:padre_mentor/src/domain/entities/familia_ui.dart';
import 'package:padre_mentor/src/domain/entities/hijos_ui.dart';
import 'package:padre_mentor/src/domain/entities/usuario_ui.dart';
import 'package:padre_mentor/src/domain/repositories/http_datos_repository.dart';

class DeviceHttpDatosRepositorio extends HttpDatosRepository{
  //'http://educar.icrmedu.com/CRMMovil/PortalAcadMovil.ashx/'
  //String url = 'http://educar.icrmedu.com/CRMMovil/PortalAcadMovil.ashx/';
  static const  TAG = "DeviceHttpDatosRepositorio";
  String getBody(String method, Object parameters){
    Map<String, dynamic> body = Map<String, dynamic>();
    body["interface"] = "RestAPI";
    body["method"] = method;
    body["parameters"] = parameters;
    String s = json.encode(body);
    print(TAG + " "+s);
    return s;
  }

  @override
  Future<Map<String, dynamic>> getDatosInicioPadre(String urlServidor, int usuarioId) async {
    Map<String, dynamic> parameters = Map<String, dynamic>();
    parameters["vint_UsuarioId"] = usuarioId;
    final response = await http.post(urlServidor, body: getBody("flst_getDatosInicioFlutter",parameters));
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

  @override
  Future<Map<String, dynamic>> getBoletasNotas(String urlServidor, int anioAcademicoId, int programaId, int periodoId, int seccionId, int calendarioPeridoId, int alumnoId, int georeferenciaId) async{
    Map<String, dynamic> parameters = Map<String, dynamic>();
    parameters["vint_anioAcademicoId"] = anioAcademicoId;
    parameters["vint_programaId"] = programaId;
    parameters["vint_periodoId"] = periodoId;
    parameters["vint_seccionId"] = seccionId;
    parameters["vint_calendarioPeridoId"] = calendarioPeridoId;
    parameters["vint_alumnoId"] = alumnoId;
    parameters["vint_georeferenciaId"] = georeferenciaId;
    final response = await http.post(urlServidor, body: getBody("fobj_BoletasNotas",parameters));
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      Map<String,dynamic> body = json.decode(response.body);
      if(body.containsKey("Successful")&&body.containsKey("Value")){
        return body["Value"];
      }else{
        return null;
      }

    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load boleta notas 0');
    }
  }

  @override
  Future<Map<String, dynamic>> getEvaluacionesPorCurso(String urlServidor, int anioAcademicoId, int programaId, int calendarioPeridoId, int alumnoId) async{
    Map<String, dynamic> parameters = Map<String, dynamic>();
    parameters["vint_alumnoId"] = alumnoId;
    parameters["vint_programaEduId"] = programaId;
    parameters["vstr_calendarioPeriodo"] = calendarioPeridoId;
    parameters["vint_anioAcademicoId"] = anioAcademicoId;
    final response = await http.post(urlServidor, body: getBody("getEvaluacionesPorCurso",parameters));
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      Map<String,dynamic> body = json.decode(response.body);
      if(body.containsKey("Successful")&&body.containsKey("Value")){
        List<dynamic> lista = body["Value"];
        Map<String, dynamic> salida = new  Map<String, dynamic>();
        salida["evaluaciones"] = lista;
        return salida;
      }else{
        return null;
      }

    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load evaluaciones 0');
    }
  }

  @override
  Future<Map<String, dynamic>> getTareaPorCurso(String urlServidor, int anioAcademicoId, int programaId, int calendarioPeridoId, int alumnoId)async {
    Map<String, dynamic> parameters = Map<String, dynamic>();
    parameters["vint_alumnoId"] = alumnoId;
    parameters["vint_programaEduId"] = programaId;
    parameters["vstr_calendarioPeriodo"] = calendarioPeridoId;
    parameters["vint_anioAcademicoId"] = anioAcademicoId;
    final response = await http.post(urlServidor, body: getBody("getTareaPorCurso",parameters));
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      Map<String,dynamic> body = json.decode(response.body);
      if(body.containsKey("Successful")&&body.containsKey("Value")){
        List<dynamic> lista = body["Value"];
        Map<String, dynamic> salida = new  Map<String, dynamic>();
        salida["tareas"] = lista;
        return salida;
      }else{
        return null;
      }

    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load evaluaciones 0');
    }
  }

  @override
  Future<Map<String, dynamic>> getEventoAgenda(String urlServidor, int usuarioId, int tipoEventoId) async {
    Map<String, dynamic> parameters = Map<String, dynamic>();
    parameters["vint_UsuarioId"] = usuarioId;
    parameters["vint_tipoEventoId"] = tipoEventoId;
    final response = await http.post(urlServidor, body: getBody("getEventoAgendaFlutter",parameters));
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      Map<String,dynamic> body = json.decode(response.body);
      if(body.containsKey("Successful")&&body.containsKey("Value")){
        return body["Value"];
      }else{
        return null;
      }

    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load agenda 0');
    }
  }

  @override
  Future<Map<String, dynamic>> getContacto(String urlServidor, int usuarioId) async{
    Map<String, dynamic> parameters = Map<String, dynamic>();
    parameters["vint_UsuarioId"] = usuarioId;
    final response = await http.post(urlServidor, body: getBody("getContactoFlutter",parameters));
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      Map<String,dynamic> body = json.decode(response.body);
      if(body.containsKey("Successful")&&body.containsKey("Value")){

        Map<String, dynamic> salida = new  Map<String, dynamic>();
         List<dynamic> lista = body["Value"];
        salida["contactos"] = lista;
        return salida;
      }else{
        return null;
      }

    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load agenda 0');
    }
  }

  @override
  Future<Map<String, dynamic>> getUsuarioExterno(int opcion, String usuario, String password, String correo, String dni) async{
    String urlServidor = "http://admin.consultoraestrategia.com/ServiceAdmin/Service/ServiceAdmin.ashx";

    Map<String, dynamic> obj_usuario = Map<String, dynamic>();
    obj_usuario["Opcion"] = opcion;
    obj_usuario["Usuario"] = usuario;
    obj_usuario["Passwordd"] = password;
    obj_usuario["Correo"] = correo;
    obj_usuario["NumDoc"] = dni;

    Map<String, dynamic>  parameters = Map<String, dynamic>();
    parameters["vobj_Usuario"] = obj_usuario;


    final response = await http.post(urlServidor, body: getBody("f_BuscarUsuarioCent",parameters));
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      Map<String,dynamic> body = json.decode(response.body);
      if(body.containsKey("Successful")&&body.containsKey("Value")){
        return body["Value"];;
      }else{
        return null;
      }

    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load agenda 0');
    }
  }

  @override
  Future<Map<String, dynamic>> getUsuario(String urlServidor, int usuarioId) async{
    Map<String, dynamic> parameters = Map<String, dynamic>();
    parameters["UsuarioId"] = usuarioId;
    final response = await http.post(urlServidor, body: getBody("fobj_ObtenerUsuario_By_Id",parameters));
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      Map<String,dynamic> body = json.decode(response.body);
      if(body.containsKey("Successful")&&body.containsKey("Value")){

        return body["Value"];
      }else{
        return null;
      }

    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load agenda 0');
    }
  }

  @override
  Future<List<dynamic>> updateFamilia(String urlServidor, int usuarioId, List<dynamic> jsonPersonas) async {
    Map<String, dynamic> parameters = Map<String, dynamic>();
    parameters["usuarioId"] = usuarioId;
    parameters["list_personas"] = jsonPersonas;

    final response = await http.post(urlServidor, body: getBody("fupd_PersonaPadre",parameters));
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      Map<String,dynamic> body = json.decode(response.body);
      if(body.containsKey("Successful")&&body.containsKey("Value")){

        return body["Value"];
      }else{
        return null;
      }

    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load agenda 0');
    }
  }

  @override
  Future<Map<String, dynamic>> getEvaluacionAlumno(String urlServidor, int anioAcademicoId, int programaId, int calendarioPeridoId, int alumnoId)async {
    Map<String, dynamic> parameters = Map<String, dynamic>();
    parameters["vint_alumnoId"] = alumnoId;
    parameters["vint_programaEduId"] = programaId;
    parameters["vstr_calendarioPeriodo"] = calendarioPeridoId;
    parameters["vint_anioAcademicoId"] = anioAcademicoId;
    final response = await http.post(urlServidor, body: getBody("flst_ObtenerAsitenciaFlutter",parameters));
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      Map<String,dynamic> body = json.decode(response.body);
      if(body.containsKey("Successful")&&body.containsKey("Value")){
        return body["Value"];
      }else{
        return null;
      }

    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load evaluaciones 0');
    }
  }

  @override
  Future<Map<String, dynamic>> getEvaluacionGeneral(String urlServidor, int calendarioPeridoId, int alumnoId) async {
    Map<String, dynamic> parameters = Map<String, dynamic>();
    parameters["vint_AlumnoId"] = alumnoId;
    parameters["vint_CalendarioPeriodoId"] = calendarioPeridoId;
    final response = await http.post(urlServidor, body: getBody("flst_ObtenerAsitenciaGeneral",parameters));
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      Map<String,dynamic> body = json.decode(response.body);
      if(body.containsKey("Successful")&&body.containsKey("Value")){
        Map<String, dynamic> salida = new  Map<String, dynamic>();
        List<dynamic> lista = body["Value"];
        salida["asistencia"] = lista;
        return salida;
      }else{
        return null;
      }

    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load evaluaciones 0');
    }
  }





}