
import 'package:padre_mentor/src/data/repositories/floor_beta/database/app_database.dart';
import 'package:padre_mentor/src/data/repositories/floor_beta/mapping/persona.dart';
import 'package:padre_mentor/src/data/repositories/floor_beta/mapping/session_user.dart';
import 'package:padre_mentor/src/data/repositories/floor_beta/tools/serializable_convert.dart';
import 'package:padre_mentor/src/domain/entities/evento_ui.dart';
import 'package:padre_mentor/src/domain/entities/hijos_ui.dart';
import 'package:padre_mentor/src/domain/entities/tipo_evento_ui.dart';
import 'package:padre_mentor/src/domain/entities/usuario_ui.dart';
import 'package:padre_mentor/src/domain/repositories/usuario_configuarion_repository.dart';
import 'package:padre_mentor/src/domain/tools/app_tools.dart';

class DataUsuarioAndRepository /*extends UsuarioAndConfiguracionRepository*/{
  static const TAG = 'DataUsuarioAndRepository';
  // sigleton
  static final DataUsuarioAndRepository _instance = DataUsuarioAndRepository._internal();
  DataUsuarioAndRepository._internal() {
  }

  factory DataUsuarioAndRepository() => _instance;

  @override
  Future<UsuarioUi> getSessionUsuario() async {
    print(TAG+": getSessionUsuario()");
    var database = await AppDatabase.getBD();
    var sessionDao = database.sessionUserDao;
    var personaDao = database.personaDao;

    SessionUser sessionUser = await sessionDao.getSessionUser();
    Persona persona = await personaDao.getUsuario(2);

    UsuarioUi usuarioUi = UsuarioUi(personaId: 2, nombre: persona == null ? '' : '${AppTools.capitalize(persona.nombres)} ${AppTools.capitalize(persona.apellidoPaterno)} ${AppTools.capitalize(persona.apellidoMaterno)}', foto: persona.foto, nombreSimple: AppTools.capitalize(persona.nombres));
    return usuarioUi;
  }

  @override
  Future<void> saveDatosGlobales(Map<String, dynamic> datosInicioPadre) async{
    // create migration
    final database = await AppDatabase.getBD();

    if(datosInicioPadre.containsKey("usuariosrelacionados")){
      database.usuarioDao.insertAllTodo(SerializableConvert.converListSerializeUsuario(datosInicioPadre["usuariosrelacionados"]));
    }

    if(datosInicioPadre.containsKey("personas")){
      //personaSerelizable.addAll(datosInicioPadre["usuariosrelacionados"]);
      database.personaDao.insertAllTodo(SerializableConvert.converListSerializePersona(datosInicioPadre["personas"]));
    }

    if(datosInicioPadre.containsKey("relaciones")){
      //personaSerelizable.addAll(datosInicioPadre["usuariosrelacionados"]);
      database.personaDao.insertAllTodo(SerializableConvert.converListSerializePersona(datosInicioPadre["relaciones"]));
    }

  }

  @override
  Future<HijosUi> getHijo(int alumnoId) {
    // TODO: implement getHijo
    throw UnimplementedError();
  }

  @override
  Future<void> saveEventoAgenda(Map<String, dynamic> eventoAgenda, int usuarioId, int tipoEventoId) {
    // TODO: implement saveEventoAgenda
    throw UnimplementedError();
  }

  @override
  Future<List<TipoEventoUi>> getTiposEvento() {
    // TODO: implement getTiposEvento
    throw UnimplementedError();
  }

  @override
  Future<List<EventoUi>> getEventosAgenda(int padreId, int tipoEventoId, List<int> hijos) {
    // TODO: implement getEventosAgenda
    throw UnimplementedError();
  }

  @override
  Future<void> updateSessionHijoSelected(int hijoSelectedId) {
    // TODO: implement updateSessionHijoSelected
    throw UnimplementedError();
  }

  @override
  Future<void> updateSessionProgramaEduSelected(int programaEduSelectedId, int hijoSelectedId) {
    // TODO: implement updateSessionProgramaEduSelected
    throw UnimplementedError();
  }



}