// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String name;

  final List<Migration> _migrations = [];

  Callback _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String> listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  PersonaDao _personaDaoInstance;

  UsuarioDao _usuarioDaoInstance;

  SessionUserDao _sessionUserDaoInstance;

  Future<sqflite.Database> open(String path, List<Migration> migrations,
      [Callback callback]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Usuario` (`usuarioId` INTEGER, `personaId` INTEGER, `usuario` TEXT, `password` TEXT, `estado` INTEGER, `habilitarAcceso` INTEGER, PRIMARY KEY (`usuarioId`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `SessionUser` (`userId` INTEGER, PRIMARY KEY (`userId`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Persona` (`personaId` INTEGER, `nombres` TEXT, `apellidoPaterno` TEXT, `apellidoMaterno` TEXT, `celular` TEXT, `telefono` TEXT, `foto` TEXT, `fechaNac` TEXT, `genero` TEXT, `estadoCivil` TEXT, `numDoc` TEXT, `ocupacion` TEXT, `estadoId` INTEGER, `correo` TEXT, `direccion` TEXT, `path` TEXT, PRIMARY KEY (`personaId`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  PersonaDao get personaDao {
    return _personaDaoInstance ??= _$PersonaDao(database, changeListener);
  }

  @override
  UsuarioDao get usuarioDao {
    return _usuarioDaoInstance ??= _$UsuarioDao(database, changeListener);
  }

  @override
  SessionUserDao get sessionUserDao {
    return _sessionUserDaoInstance ??=
        _$SessionUserDao(database, changeListener);
  }
}

class _$PersonaDao extends PersonaDao {
  _$PersonaDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _personaInsertionAdapter = InsertionAdapter(
            database,
            'Persona',
            (Persona item) => <String, dynamic>{
                  'personaId': item.personaId,
                  'nombres': item.nombres,
                  'apellidoPaterno': item.apellidoPaterno,
                  'apellidoMaterno': item.apellidoMaterno,
                  'celular': item.celular,
                  'telefono': item.telefono,
                  'foto': item.foto,
                  'fechaNac': item.fechaNac,
                  'genero': item.genero,
                  'estadoCivil': item.estadoCivil,
                  'numDoc': item.numDoc,
                  'ocupacion': item.ocupacion,
                  'estadoId': item.estadoId,
                  'correo': item.correo,
                  'direccion': item.direccion,
                  'path': item.path
                },
            changeListener),
        _personaDeletionAdapter = DeletionAdapter(
            database,
            'Persona',
            ['personaId'],
            (Persona item) => <String, dynamic>{
                  'personaId': item.personaId,
                  'nombres': item.nombres,
                  'apellidoPaterno': item.apellidoPaterno,
                  'apellidoMaterno': item.apellidoMaterno,
                  'celular': item.celular,
                  'telefono': item.telefono,
                  'foto': item.foto,
                  'fechaNac': item.fechaNac,
                  'genero': item.genero,
                  'estadoCivil': item.estadoCivil,
                  'numDoc': item.numDoc,
                  'ocupacion': item.ocupacion,
                  'estadoId': item.estadoId,
                  'correo': item.correo,
                  'direccion': item.direccion,
                  'path': item.path
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Persona> _personaInsertionAdapter;

  final DeletionAdapter<Persona> _personaDeletionAdapter;

  @override
  Future<List<Persona>> findAllTodo() async {
    return _queryAdapter.queryList('SELECT * FROM Persona',
        mapper: (Map<String, dynamic> row) => Persona(
            personaId: row['personaId'] as int,
            nombres: row['nombres'] as String,
            apellidoPaterno: row['apellidoPaterno'] as String,
            apellidoMaterno: row['apellidoMaterno'] as String,
            celular: row['celular'] as String,
            telefono: row['telefono'] as String,
            foto: row['foto'] as String,
            fechaNac: row['fechaNac'] as String,
            genero: row['genero'] as String,
            estadoCivil: row['estadoCivil'] as String,
            numDoc: row['numDoc'] as String,
            ocupacion: row['ocupacion'] as String,
            estadoId: row['estadoId'] as int,
            correo: row['correo'] as String,
            direccion: row['direccion'] as String,
            path: row['path'] as String));
  }

  @override
  Future<Persona> getMaxTodo() async {
    return _queryAdapter.query(
        'Select * from Persona order by personaId desc limit 1',
        mapper: (Map<String, dynamic> row) => Persona(
            personaId: row['personaId'] as int,
            nombres: row['nombres'] as String,
            apellidoPaterno: row['apellidoPaterno'] as String,
            apellidoMaterno: row['apellidoMaterno'] as String,
            celular: row['celular'] as String,
            telefono: row['telefono'] as String,
            foto: row['foto'] as String,
            fechaNac: row['fechaNac'] as String,
            genero: row['genero'] as String,
            estadoCivil: row['estadoCivil'] as String,
            numDoc: row['numDoc'] as String,
            ocupacion: row['ocupacion'] as String,
            estadoId: row['estadoId'] as int,
            correo: row['correo'] as String,
            direccion: row['direccion'] as String,
            path: row['path'] as String));
  }

  @override
  Stream<List<Persona>> fetchStreamData() {
    return _queryAdapter.queryListStream(
        'SELECT * FROM Persona order by personaId desc',
        queryableName: 'Persona',
        isView: false,
        mapper: (Map<String, dynamic> row) => Persona(
            personaId: row['personaId'] as int,
            nombres: row['nombres'] as String,
            apellidoPaterno: row['apellidoPaterno'] as String,
            apellidoMaterno: row['apellidoMaterno'] as String,
            celular: row['celular'] as String,
            telefono: row['telefono'] as String,
            foto: row['foto'] as String,
            fechaNac: row['fechaNac'] as String,
            genero: row['genero'] as String,
            estadoCivil: row['estadoCivil'] as String,
            numDoc: row['numDoc'] as String,
            ocupacion: row['ocupacion'] as String,
            estadoId: row['estadoId'] as int,
            correo: row['correo'] as String,
            direccion: row['direccion'] as String,
            path: row['path'] as String));
  }

  @override
  Future<void> deleteTodo(int id) async {
    await _queryAdapter.queryNoReturn('delete from Persona where personaId = ?',
        arguments: <dynamic>[id]);
  }

  @override
  Future<Persona> getUsuario(int usarioId) async {
    return _queryAdapter.query(
        'Select * from Persona inner join Usuario on Usuario.personaId = Persona.personaId where Usuario.usuarioId = ?',
        arguments: <dynamic>[usarioId],
        mapper: (Map<String, dynamic> row) => Persona(
            personaId: row['personaId'] as int,
            nombres: row['nombres'] as String,
            apellidoPaterno: row['apellidoPaterno'] as String,
            apellidoMaterno: row['apellidoMaterno'] as String,
            celular: row['celular'] as String,
            telefono: row['telefono'] as String,
            foto: row['foto'] as String,
            fechaNac: row['fechaNac'] as String,
            genero: row['genero'] as String,
            estadoCivil: row['estadoCivil'] as String,
            numDoc: row['numDoc'] as String,
            ocupacion: row['ocupacion'] as String,
            estadoId: row['estadoId'] as int,
            correo: row['correo'] as String,
            direccion: row['direccion'] as String,
            path: row['path'] as String));
  }

  @override
  Future<void> insertTodo(Persona usuario) async {
    await _personaInsertionAdapter.insert(usuario, OnConflictStrategy.abort);
  }

  @override
  Future<List<int>> insertAllTodo(List<Persona> personas) {
    return _personaInsertionAdapter.insertListAndReturnIds(
        personas, OnConflictStrategy.replace);
  }

  @override
  Future<int> deleteAll(List<Persona> list) {
    return _personaDeletionAdapter.deleteListAndReturnChangedRows(list);
  }
}

class _$UsuarioDao extends UsuarioDao {
  _$UsuarioDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _usuarioInsertionAdapter = InsertionAdapter(
            database,
            'Usuario',
            (Usuario item) => <String, dynamic>{
                  'usuarioId': item.usuarioId,
                  'personaId': item.personaId,
                  'usuario': item.usuario,
                  'password': item.password,
                  'estado': item.estado == null ? null : (item.estado ? 1 : 0),
                  'habilitarAcceso': item.habilitarAcceso == null
                      ? null
                      : (item.habilitarAcceso ? 1 : 0)
                },
            changeListener),
        _usuarioDeletionAdapter = DeletionAdapter(
            database,
            'Usuario',
            ['usuarioId'],
            (Usuario item) => <String, dynamic>{
                  'usuarioId': item.usuarioId,
                  'personaId': item.personaId,
                  'usuario': item.usuario,
                  'password': item.password,
                  'estado': item.estado == null ? null : (item.estado ? 1 : 0),
                  'habilitarAcceso': item.habilitarAcceso == null
                      ? null
                      : (item.habilitarAcceso ? 1 : 0)
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Usuario> _usuarioInsertionAdapter;

  final DeletionAdapter<Usuario> _usuarioDeletionAdapter;

  @override
  Future<List<Usuario>> findAllTodo() async {
    return _queryAdapter.queryList('SELECT * FROM Usuario',
        mapper: (Map<String, dynamic> row) => Usuario(
            usuarioId: row['usuarioId'] as int,
            personaId: row['personaId'] as int,
            usuario: row['usuario'] as String,
            password: row['password'] as String,
            estado: row['estado'] == null ? null : (row['estado'] as int) != 0,
            habilitarAcceso: row['habilitarAcceso'] == null
                ? null
                : (row['habilitarAcceso'] as int) != 0));
  }

  @override
  Future<Usuario> getMaxTodo() async {
    return _queryAdapter.query(
        'Select * from Usuario order by usuarioId desc limit 1',
        mapper: (Map<String, dynamic> row) => Usuario(
            usuarioId: row['usuarioId'] as int,
            personaId: row['personaId'] as int,
            usuario: row['usuario'] as String,
            password: row['password'] as String,
            estado: row['estado'] == null ? null : (row['estado'] as int) != 0,
            habilitarAcceso: row['habilitarAcceso'] == null
                ? null
                : (row['habilitarAcceso'] as int) != 0));
  }

  @override
  Stream<List<Usuario>> fetchStreamData() {
    return _queryAdapter.queryListStream(
        'SELECT * FROM Usuario order by usuarioId desc',
        queryableName: 'Usuario',
        isView: false,
        mapper: (Map<String, dynamic> row) => Usuario(
            usuarioId: row['usuarioId'] as int,
            personaId: row['personaId'] as int,
            usuario: row['usuario'] as String,
            password: row['password'] as String,
            estado: row['estado'] == null ? null : (row['estado'] as int) != 0,
            habilitarAcceso: row['habilitarAcceso'] == null
                ? null
                : (row['habilitarAcceso'] as int) != 0));
  }

  @override
  Future<void> deleteTodo(int id) async {
    await _queryAdapter.queryNoReturn('delete from Usuario where usuarioId = ?',
        arguments: <dynamic>[id]);
  }

  @override
  Future<void> insertTodo(Usuario usuario) async {
    await _usuarioInsertionAdapter.insert(usuario, OnConflictStrategy.abort);
  }

  @override
  Future<List<int>> insertAllTodo(List<Usuario> usuario) {
    return _usuarioInsertionAdapter.insertListAndReturnIds(
        usuario, OnConflictStrategy.replace);
  }

  @override
  Future<int> deleteAll(List<Usuario> list) {
    return _usuarioDeletionAdapter.deleteListAndReturnChangedRows(list);
  }
}

class _$SessionUserDao extends SessionUserDao {
  _$SessionUserDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _sessionUserInsertionAdapter = InsertionAdapter(database, 'SessionUser',
            (SessionUser item) => <String, dynamic>{'userId': item.userId}),
        _sessionUserUpdateAdapter = UpdateAdapter(
            database,
            'SessionUser',
            ['userId'],
            (SessionUser item) => <String, dynamic>{'userId': item.userId});

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<SessionUser> _sessionUserInsertionAdapter;

  final UpdateAdapter<SessionUser> _sessionUserUpdateAdapter;

  @override
  Future<SessionUser> getSessionUser() async {
    return _queryAdapter.query('Select * from SessionUser limit 1',
        mapper: (Map<String, dynamic> row) =>
            SessionUser(row['userId'] as int));
  }

  @override
  Future<void> deleteTodo() async {
    await _queryAdapter.queryNoReturn('delete from SessionUser');
  }

  @override
  Future<void> insertTodo(SessionUser sessionUser) async {
    await _sessionUserInsertionAdapter.insert(
        sessionUser, OnConflictStrategy.abort);
  }

  @override
  Future<int> updatePersons(SessionUser sessionUser) {
    return _sessionUserUpdateAdapter.updateAndReturnChangedRows(
        sessionUser, OnConflictStrategy.abort);
  }
}
