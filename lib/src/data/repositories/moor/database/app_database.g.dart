// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class PersonaData extends DataClass implements Insertable<PersonaData> {
  final int personaId;
  final String nombres;
  final String apellidoPaterno;
  final String apellidoMaterno;
  final String celular;
  final String telefono;
  final String foto;
  final String fechaNac;
  final String genero;
  final String estadoCivil;
  final String numDoc;
  final String ocupacion;
  final int estadoId;
  final String correo;
  final String direccion;
  final String path;
  PersonaData(
      {@required this.personaId,
      this.nombres,
      this.apellidoPaterno,
      this.apellidoMaterno,
      this.celular,
      this.telefono,
      this.foto,
      this.fechaNac,
      this.genero,
      this.estadoCivil,
      this.numDoc,
      this.ocupacion,
      this.estadoId,
      this.correo,
      this.direccion,
      this.path});
  factory PersonaData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return PersonaData(
      personaId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}persona_id']),
      nombres:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}nombres']),
      apellidoPaterno: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}apellido_paterno']),
      apellidoMaterno: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}apellido_materno']),
      celular:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}celular']),
      telefono: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}telefono']),
      foto: stringType.mapFromDatabaseResponse(data['${effectivePrefix}foto']),
      fechaNac: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}fecha_nac']),
      genero:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}genero']),
      estadoCivil: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}estado_civil']),
      numDoc:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}num_doc']),
      ocupacion: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}ocupacion']),
      estadoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}estado_id']),
      correo:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}correo']),
      direccion: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}direccion']),
      path: stringType.mapFromDatabaseResponse(data['${effectivePrefix}path']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || personaId != null) {
      map['persona_id'] = Variable<int>(personaId);
    }
    if (!nullToAbsent || nombres != null) {
      map['nombres'] = Variable<String>(nombres);
    }
    if (!nullToAbsent || apellidoPaterno != null) {
      map['apellido_paterno'] = Variable<String>(apellidoPaterno);
    }
    if (!nullToAbsent || apellidoMaterno != null) {
      map['apellido_materno'] = Variable<String>(apellidoMaterno);
    }
    if (!nullToAbsent || celular != null) {
      map['celular'] = Variable<String>(celular);
    }
    if (!nullToAbsent || telefono != null) {
      map['telefono'] = Variable<String>(telefono);
    }
    if (!nullToAbsent || foto != null) {
      map['foto'] = Variable<String>(foto);
    }
    if (!nullToAbsent || fechaNac != null) {
      map['fecha_nac'] = Variable<String>(fechaNac);
    }
    if (!nullToAbsent || genero != null) {
      map['genero'] = Variable<String>(genero);
    }
    if (!nullToAbsent || estadoCivil != null) {
      map['estado_civil'] = Variable<String>(estadoCivil);
    }
    if (!nullToAbsent || numDoc != null) {
      map['num_doc'] = Variable<String>(numDoc);
    }
    if (!nullToAbsent || ocupacion != null) {
      map['ocupacion'] = Variable<String>(ocupacion);
    }
    if (!nullToAbsent || estadoId != null) {
      map['estado_id'] = Variable<int>(estadoId);
    }
    if (!nullToAbsent || correo != null) {
      map['correo'] = Variable<String>(correo);
    }
    if (!nullToAbsent || direccion != null) {
      map['direccion'] = Variable<String>(direccion);
    }
    if (!nullToAbsent || path != null) {
      map['path'] = Variable<String>(path);
    }
    return map;
  }

  PersonaCompanion toCompanion(bool nullToAbsent) {
    return PersonaCompanion(
      personaId: personaId == null && nullToAbsent
          ? const Value.absent()
          : Value(personaId),
      nombres: nombres == null && nullToAbsent
          ? const Value.absent()
          : Value(nombres),
      apellidoPaterno: apellidoPaterno == null && nullToAbsent
          ? const Value.absent()
          : Value(apellidoPaterno),
      apellidoMaterno: apellidoMaterno == null && nullToAbsent
          ? const Value.absent()
          : Value(apellidoMaterno),
      celular: celular == null && nullToAbsent
          ? const Value.absent()
          : Value(celular),
      telefono: telefono == null && nullToAbsent
          ? const Value.absent()
          : Value(telefono),
      foto: foto == null && nullToAbsent ? const Value.absent() : Value(foto),
      fechaNac: fechaNac == null && nullToAbsent
          ? const Value.absent()
          : Value(fechaNac),
      genero:
          genero == null && nullToAbsent ? const Value.absent() : Value(genero),
      estadoCivil: estadoCivil == null && nullToAbsent
          ? const Value.absent()
          : Value(estadoCivil),
      numDoc:
          numDoc == null && nullToAbsent ? const Value.absent() : Value(numDoc),
      ocupacion: ocupacion == null && nullToAbsent
          ? const Value.absent()
          : Value(ocupacion),
      estadoId: estadoId == null && nullToAbsent
          ? const Value.absent()
          : Value(estadoId),
      correo:
          correo == null && nullToAbsent ? const Value.absent() : Value(correo),
      direccion: direccion == null && nullToAbsent
          ? const Value.absent()
          : Value(direccion),
      path: path == null && nullToAbsent ? const Value.absent() : Value(path),
    );
  }

  factory PersonaData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return PersonaData(
      personaId: serializer.fromJson<int>(json['personaId']),
      nombres: serializer.fromJson<String>(json['nombres']),
      apellidoPaterno: serializer.fromJson<String>(json['apellidoPaterno']),
      apellidoMaterno: serializer.fromJson<String>(json['apellidoMaterno']),
      celular: serializer.fromJson<String>(json['celular']),
      telefono: serializer.fromJson<String>(json['telefono']),
      foto: serializer.fromJson<String>(json['foto']),
      fechaNac: serializer.fromJson<String>(json['fechaNac']),
      genero: serializer.fromJson<String>(json['genero']),
      estadoCivil: serializer.fromJson<String>(json['estadoCivil']),
      numDoc: serializer.fromJson<String>(json['numDoc']),
      ocupacion: serializer.fromJson<String>(json['ocupacion']),
      estadoId: serializer.fromJson<int>(json['estadoId']),
      correo: serializer.fromJson<String>(json['correo']),
      direccion: serializer.fromJson<String>(json['direccion']),
      path: serializer.fromJson<String>(json['path']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'personaId': serializer.toJson<int>(personaId),
      'nombres': serializer.toJson<String>(nombres),
      'apellidoPaterno': serializer.toJson<String>(apellidoPaterno),
      'apellidoMaterno': serializer.toJson<String>(apellidoMaterno),
      'celular': serializer.toJson<String>(celular),
      'telefono': serializer.toJson<String>(telefono),
      'foto': serializer.toJson<String>(foto),
      'fechaNac': serializer.toJson<String>(fechaNac),
      'genero': serializer.toJson<String>(genero),
      'estadoCivil': serializer.toJson<String>(estadoCivil),
      'numDoc': serializer.toJson<String>(numDoc),
      'ocupacion': serializer.toJson<String>(ocupacion),
      'estadoId': serializer.toJson<int>(estadoId),
      'correo': serializer.toJson<String>(correo),
      'direccion': serializer.toJson<String>(direccion),
      'path': serializer.toJson<String>(path),
    };
  }

  PersonaData copyWith(
          {int personaId,
          String nombres,
          String apellidoPaterno,
          String apellidoMaterno,
          String celular,
          String telefono,
          String foto,
          String fechaNac,
          String genero,
          String estadoCivil,
          String numDoc,
          String ocupacion,
          int estadoId,
          String correo,
          String direccion,
          String path}) =>
      PersonaData(
        personaId: personaId ?? this.personaId,
        nombres: nombres ?? this.nombres,
        apellidoPaterno: apellidoPaterno ?? this.apellidoPaterno,
        apellidoMaterno: apellidoMaterno ?? this.apellidoMaterno,
        celular: celular ?? this.celular,
        telefono: telefono ?? this.telefono,
        foto: foto ?? this.foto,
        fechaNac: fechaNac ?? this.fechaNac,
        genero: genero ?? this.genero,
        estadoCivil: estadoCivil ?? this.estadoCivil,
        numDoc: numDoc ?? this.numDoc,
        ocupacion: ocupacion ?? this.ocupacion,
        estadoId: estadoId ?? this.estadoId,
        correo: correo ?? this.correo,
        direccion: direccion ?? this.direccion,
        path: path ?? this.path,
      );
  @override
  String toString() {
    return (StringBuffer('PersonaData(')
          ..write('personaId: $personaId, ')
          ..write('nombres: $nombres, ')
          ..write('apellidoPaterno: $apellidoPaterno, ')
          ..write('apellidoMaterno: $apellidoMaterno, ')
          ..write('celular: $celular, ')
          ..write('telefono: $telefono, ')
          ..write('foto: $foto, ')
          ..write('fechaNac: $fechaNac, ')
          ..write('genero: $genero, ')
          ..write('estadoCivil: $estadoCivil, ')
          ..write('numDoc: $numDoc, ')
          ..write('ocupacion: $ocupacion, ')
          ..write('estadoId: $estadoId, ')
          ..write('correo: $correo, ')
          ..write('direccion: $direccion, ')
          ..write('path: $path')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      personaId.hashCode,
      $mrjc(
          nombres.hashCode,
          $mrjc(
              apellidoPaterno.hashCode,
              $mrjc(
                  apellidoMaterno.hashCode,
                  $mrjc(
                      celular.hashCode,
                      $mrjc(
                          telefono.hashCode,
                          $mrjc(
                              foto.hashCode,
                              $mrjc(
                                  fechaNac.hashCode,
                                  $mrjc(
                                      genero.hashCode,
                                      $mrjc(
                                          estadoCivil.hashCode,
                                          $mrjc(
                                              numDoc.hashCode,
                                              $mrjc(
                                                  ocupacion.hashCode,
                                                  $mrjc(
                                                      estadoId.hashCode,
                                                      $mrjc(
                                                          correo.hashCode,
                                                          $mrjc(
                                                              direccion
                                                                  .hashCode,
                                                              path.hashCode))))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is PersonaData &&
          other.personaId == this.personaId &&
          other.nombres == this.nombres &&
          other.apellidoPaterno == this.apellidoPaterno &&
          other.apellidoMaterno == this.apellidoMaterno &&
          other.celular == this.celular &&
          other.telefono == this.telefono &&
          other.foto == this.foto &&
          other.fechaNac == this.fechaNac &&
          other.genero == this.genero &&
          other.estadoCivil == this.estadoCivil &&
          other.numDoc == this.numDoc &&
          other.ocupacion == this.ocupacion &&
          other.estadoId == this.estadoId &&
          other.correo == this.correo &&
          other.direccion == this.direccion &&
          other.path == this.path);
}

class PersonaCompanion extends UpdateCompanion<PersonaData> {
  final Value<int> personaId;
  final Value<String> nombres;
  final Value<String> apellidoPaterno;
  final Value<String> apellidoMaterno;
  final Value<String> celular;
  final Value<String> telefono;
  final Value<String> foto;
  final Value<String> fechaNac;
  final Value<String> genero;
  final Value<String> estadoCivil;
  final Value<String> numDoc;
  final Value<String> ocupacion;
  final Value<int> estadoId;
  final Value<String> correo;
  final Value<String> direccion;
  final Value<String> path;
  const PersonaCompanion({
    this.personaId = const Value.absent(),
    this.nombres = const Value.absent(),
    this.apellidoPaterno = const Value.absent(),
    this.apellidoMaterno = const Value.absent(),
    this.celular = const Value.absent(),
    this.telefono = const Value.absent(),
    this.foto = const Value.absent(),
    this.fechaNac = const Value.absent(),
    this.genero = const Value.absent(),
    this.estadoCivil = const Value.absent(),
    this.numDoc = const Value.absent(),
    this.ocupacion = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.correo = const Value.absent(),
    this.direccion = const Value.absent(),
    this.path = const Value.absent(),
  });
  PersonaCompanion.insert({
    this.personaId = const Value.absent(),
    this.nombres = const Value.absent(),
    this.apellidoPaterno = const Value.absent(),
    this.apellidoMaterno = const Value.absent(),
    this.celular = const Value.absent(),
    this.telefono = const Value.absent(),
    this.foto = const Value.absent(),
    this.fechaNac = const Value.absent(),
    this.genero = const Value.absent(),
    this.estadoCivil = const Value.absent(),
    this.numDoc = const Value.absent(),
    this.ocupacion = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.correo = const Value.absent(),
    this.direccion = const Value.absent(),
    this.path = const Value.absent(),
  });
  static Insertable<PersonaData> custom({
    Expression<int> personaId,
    Expression<String> nombres,
    Expression<String> apellidoPaterno,
    Expression<String> apellidoMaterno,
    Expression<String> celular,
    Expression<String> telefono,
    Expression<String> foto,
    Expression<String> fechaNac,
    Expression<String> genero,
    Expression<String> estadoCivil,
    Expression<String> numDoc,
    Expression<String> ocupacion,
    Expression<int> estadoId,
    Expression<String> correo,
    Expression<String> direccion,
    Expression<String> path,
  }) {
    return RawValuesInsertable({
      if (personaId != null) 'persona_id': personaId,
      if (nombres != null) 'nombres': nombres,
      if (apellidoPaterno != null) 'apellido_paterno': apellidoPaterno,
      if (apellidoMaterno != null) 'apellido_materno': apellidoMaterno,
      if (celular != null) 'celular': celular,
      if (telefono != null) 'telefono': telefono,
      if (foto != null) 'foto': foto,
      if (fechaNac != null) 'fecha_nac': fechaNac,
      if (genero != null) 'genero': genero,
      if (estadoCivil != null) 'estado_civil': estadoCivil,
      if (numDoc != null) 'num_doc': numDoc,
      if (ocupacion != null) 'ocupacion': ocupacion,
      if (estadoId != null) 'estado_id': estadoId,
      if (correo != null) 'correo': correo,
      if (direccion != null) 'direccion': direccion,
      if (path != null) 'path': path,
    });
  }

  PersonaCompanion copyWith(
      {Value<int> personaId,
      Value<String> nombres,
      Value<String> apellidoPaterno,
      Value<String> apellidoMaterno,
      Value<String> celular,
      Value<String> telefono,
      Value<String> foto,
      Value<String> fechaNac,
      Value<String> genero,
      Value<String> estadoCivil,
      Value<String> numDoc,
      Value<String> ocupacion,
      Value<int> estadoId,
      Value<String> correo,
      Value<String> direccion,
      Value<String> path}) {
    return PersonaCompanion(
      personaId: personaId ?? this.personaId,
      nombres: nombres ?? this.nombres,
      apellidoPaterno: apellidoPaterno ?? this.apellidoPaterno,
      apellidoMaterno: apellidoMaterno ?? this.apellidoMaterno,
      celular: celular ?? this.celular,
      telefono: telefono ?? this.telefono,
      foto: foto ?? this.foto,
      fechaNac: fechaNac ?? this.fechaNac,
      genero: genero ?? this.genero,
      estadoCivil: estadoCivil ?? this.estadoCivil,
      numDoc: numDoc ?? this.numDoc,
      ocupacion: ocupacion ?? this.ocupacion,
      estadoId: estadoId ?? this.estadoId,
      correo: correo ?? this.correo,
      direccion: direccion ?? this.direccion,
      path: path ?? this.path,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (personaId.present) {
      map['persona_id'] = Variable<int>(personaId.value);
    }
    if (nombres.present) {
      map['nombres'] = Variable<String>(nombres.value);
    }
    if (apellidoPaterno.present) {
      map['apellido_paterno'] = Variable<String>(apellidoPaterno.value);
    }
    if (apellidoMaterno.present) {
      map['apellido_materno'] = Variable<String>(apellidoMaterno.value);
    }
    if (celular.present) {
      map['celular'] = Variable<String>(celular.value);
    }
    if (telefono.present) {
      map['telefono'] = Variable<String>(telefono.value);
    }
    if (foto.present) {
      map['foto'] = Variable<String>(foto.value);
    }
    if (fechaNac.present) {
      map['fecha_nac'] = Variable<String>(fechaNac.value);
    }
    if (genero.present) {
      map['genero'] = Variable<String>(genero.value);
    }
    if (estadoCivil.present) {
      map['estado_civil'] = Variable<String>(estadoCivil.value);
    }
    if (numDoc.present) {
      map['num_doc'] = Variable<String>(numDoc.value);
    }
    if (ocupacion.present) {
      map['ocupacion'] = Variable<String>(ocupacion.value);
    }
    if (estadoId.present) {
      map['estado_id'] = Variable<int>(estadoId.value);
    }
    if (correo.present) {
      map['correo'] = Variable<String>(correo.value);
    }
    if (direccion.present) {
      map['direccion'] = Variable<String>(direccion.value);
    }
    if (path.present) {
      map['path'] = Variable<String>(path.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PersonaCompanion(')
          ..write('personaId: $personaId, ')
          ..write('nombres: $nombres, ')
          ..write('apellidoPaterno: $apellidoPaterno, ')
          ..write('apellidoMaterno: $apellidoMaterno, ')
          ..write('celular: $celular, ')
          ..write('telefono: $telefono, ')
          ..write('foto: $foto, ')
          ..write('fechaNac: $fechaNac, ')
          ..write('genero: $genero, ')
          ..write('estadoCivil: $estadoCivil, ')
          ..write('numDoc: $numDoc, ')
          ..write('ocupacion: $ocupacion, ')
          ..write('estadoId: $estadoId, ')
          ..write('correo: $correo, ')
          ..write('direccion: $direccion, ')
          ..write('path: $path')
          ..write(')'))
        .toString();
  }
}

class $PersonaTable extends Persona with TableInfo<$PersonaTable, PersonaData> {
  final GeneratedDatabase _db;
  final String _alias;
  $PersonaTable(this._db, [this._alias]);
  final VerificationMeta _personaIdMeta = const VerificationMeta('personaId');
  GeneratedIntColumn _personaId;
  @override
  GeneratedIntColumn get personaId => _personaId ??= _constructPersonaId();
  GeneratedIntColumn _constructPersonaId() {
    return GeneratedIntColumn(
      'persona_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nombresMeta = const VerificationMeta('nombres');
  GeneratedTextColumn _nombres;
  @override
  GeneratedTextColumn get nombres => _nombres ??= _constructNombres();
  GeneratedTextColumn _constructNombres() {
    return GeneratedTextColumn(
      'nombres',
      $tableName,
      true,
    );
  }

  final VerificationMeta _apellidoPaternoMeta =
      const VerificationMeta('apellidoPaterno');
  GeneratedTextColumn _apellidoPaterno;
  @override
  GeneratedTextColumn get apellidoPaterno =>
      _apellidoPaterno ??= _constructApellidoPaterno();
  GeneratedTextColumn _constructApellidoPaterno() {
    return GeneratedTextColumn(
      'apellido_paterno',
      $tableName,
      true,
    );
  }

  final VerificationMeta _apellidoMaternoMeta =
      const VerificationMeta('apellidoMaterno');
  GeneratedTextColumn _apellidoMaterno;
  @override
  GeneratedTextColumn get apellidoMaterno =>
      _apellidoMaterno ??= _constructApellidoMaterno();
  GeneratedTextColumn _constructApellidoMaterno() {
    return GeneratedTextColumn(
      'apellido_materno',
      $tableName,
      true,
    );
  }

  final VerificationMeta _celularMeta = const VerificationMeta('celular');
  GeneratedTextColumn _celular;
  @override
  GeneratedTextColumn get celular => _celular ??= _constructCelular();
  GeneratedTextColumn _constructCelular() {
    return GeneratedTextColumn(
      'celular',
      $tableName,
      true,
    );
  }

  final VerificationMeta _telefonoMeta = const VerificationMeta('telefono');
  GeneratedTextColumn _telefono;
  @override
  GeneratedTextColumn get telefono => _telefono ??= _constructTelefono();
  GeneratedTextColumn _constructTelefono() {
    return GeneratedTextColumn(
      'telefono',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fotoMeta = const VerificationMeta('foto');
  GeneratedTextColumn _foto;
  @override
  GeneratedTextColumn get foto => _foto ??= _constructFoto();
  GeneratedTextColumn _constructFoto() {
    return GeneratedTextColumn(
      'foto',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fechaNacMeta = const VerificationMeta('fechaNac');
  GeneratedTextColumn _fechaNac;
  @override
  GeneratedTextColumn get fechaNac => _fechaNac ??= _constructFechaNac();
  GeneratedTextColumn _constructFechaNac() {
    return GeneratedTextColumn(
      'fecha_nac',
      $tableName,
      true,
    );
  }

  final VerificationMeta _generoMeta = const VerificationMeta('genero');
  GeneratedTextColumn _genero;
  @override
  GeneratedTextColumn get genero => _genero ??= _constructGenero();
  GeneratedTextColumn _constructGenero() {
    return GeneratedTextColumn(
      'genero',
      $tableName,
      true,
    );
  }

  final VerificationMeta _estadoCivilMeta =
      const VerificationMeta('estadoCivil');
  GeneratedTextColumn _estadoCivil;
  @override
  GeneratedTextColumn get estadoCivil =>
      _estadoCivil ??= _constructEstadoCivil();
  GeneratedTextColumn _constructEstadoCivil() {
    return GeneratedTextColumn(
      'estado_civil',
      $tableName,
      true,
    );
  }

  final VerificationMeta _numDocMeta = const VerificationMeta('numDoc');
  GeneratedTextColumn _numDoc;
  @override
  GeneratedTextColumn get numDoc => _numDoc ??= _constructNumDoc();
  GeneratedTextColumn _constructNumDoc() {
    return GeneratedTextColumn(
      'num_doc',
      $tableName,
      true,
    );
  }

  final VerificationMeta _ocupacionMeta = const VerificationMeta('ocupacion');
  GeneratedTextColumn _ocupacion;
  @override
  GeneratedTextColumn get ocupacion => _ocupacion ??= _constructOcupacion();
  GeneratedTextColumn _constructOcupacion() {
    return GeneratedTextColumn(
      'ocupacion',
      $tableName,
      true,
    );
  }

  final VerificationMeta _estadoIdMeta = const VerificationMeta('estadoId');
  GeneratedIntColumn _estadoId;
  @override
  GeneratedIntColumn get estadoId => _estadoId ??= _constructEstadoId();
  GeneratedIntColumn _constructEstadoId() {
    return GeneratedIntColumn(
      'estado_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _correoMeta = const VerificationMeta('correo');
  GeneratedTextColumn _correo;
  @override
  GeneratedTextColumn get correo => _correo ??= _constructCorreo();
  GeneratedTextColumn _constructCorreo() {
    return GeneratedTextColumn(
      'correo',
      $tableName,
      true,
    );
  }

  final VerificationMeta _direccionMeta = const VerificationMeta('direccion');
  GeneratedTextColumn _direccion;
  @override
  GeneratedTextColumn get direccion => _direccion ??= _constructDireccion();
  GeneratedTextColumn _constructDireccion() {
    return GeneratedTextColumn(
      'direccion',
      $tableName,
      true,
    );
  }

  final VerificationMeta _pathMeta = const VerificationMeta('path');
  GeneratedTextColumn _path;
  @override
  GeneratedTextColumn get path => _path ??= _constructPath();
  GeneratedTextColumn _constructPath() {
    return GeneratedTextColumn(
      'path',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        personaId,
        nombres,
        apellidoPaterno,
        apellidoMaterno,
        celular,
        telefono,
        foto,
        fechaNac,
        genero,
        estadoCivil,
        numDoc,
        ocupacion,
        estadoId,
        correo,
        direccion,
        path
      ];
  @override
  $PersonaTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'persona';
  @override
  final String actualTableName = 'persona';
  @override
  VerificationContext validateIntegrity(Insertable<PersonaData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('persona_id')) {
      context.handle(_personaIdMeta,
          personaId.isAcceptableOrUnknown(data['persona_id'], _personaIdMeta));
    }
    if (data.containsKey('nombres')) {
      context.handle(_nombresMeta,
          nombres.isAcceptableOrUnknown(data['nombres'], _nombresMeta));
    }
    if (data.containsKey('apellido_paterno')) {
      context.handle(
          _apellidoPaternoMeta,
          apellidoPaterno.isAcceptableOrUnknown(
              data['apellido_paterno'], _apellidoPaternoMeta));
    }
    if (data.containsKey('apellido_materno')) {
      context.handle(
          _apellidoMaternoMeta,
          apellidoMaterno.isAcceptableOrUnknown(
              data['apellido_materno'], _apellidoMaternoMeta));
    }
    if (data.containsKey('celular')) {
      context.handle(_celularMeta,
          celular.isAcceptableOrUnknown(data['celular'], _celularMeta));
    }
    if (data.containsKey('telefono')) {
      context.handle(_telefonoMeta,
          telefono.isAcceptableOrUnknown(data['telefono'], _telefonoMeta));
    }
    if (data.containsKey('foto')) {
      context.handle(
          _fotoMeta, foto.isAcceptableOrUnknown(data['foto'], _fotoMeta));
    }
    if (data.containsKey('fecha_nac')) {
      context.handle(_fechaNacMeta,
          fechaNac.isAcceptableOrUnknown(data['fecha_nac'], _fechaNacMeta));
    }
    if (data.containsKey('genero')) {
      context.handle(_generoMeta,
          genero.isAcceptableOrUnknown(data['genero'], _generoMeta));
    }
    if (data.containsKey('estado_civil')) {
      context.handle(
          _estadoCivilMeta,
          estadoCivil.isAcceptableOrUnknown(
              data['estado_civil'], _estadoCivilMeta));
    }
    if (data.containsKey('num_doc')) {
      context.handle(_numDocMeta,
          numDoc.isAcceptableOrUnknown(data['num_doc'], _numDocMeta));
    }
    if (data.containsKey('ocupacion')) {
      context.handle(_ocupacionMeta,
          ocupacion.isAcceptableOrUnknown(data['ocupacion'], _ocupacionMeta));
    }
    if (data.containsKey('estado_id')) {
      context.handle(_estadoIdMeta,
          estadoId.isAcceptableOrUnknown(data['estado_id'], _estadoIdMeta));
    }
    if (data.containsKey('correo')) {
      context.handle(_correoMeta,
          correo.isAcceptableOrUnknown(data['correo'], _correoMeta));
    }
    if (data.containsKey('direccion')) {
      context.handle(_direccionMeta,
          direccion.isAcceptableOrUnknown(data['direccion'], _direccionMeta));
    }
    if (data.containsKey('path')) {
      context.handle(
          _pathMeta, path.isAcceptableOrUnknown(data['path'], _pathMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {personaId};
  @override
  PersonaData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return PersonaData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $PersonaTable createAlias(String alias) {
    return $PersonaTable(_db, alias);
  }
}

class UsuarioData extends DataClass implements Insertable<UsuarioData> {
  final int usuarioId;
  final int personaId;
  final String usuario;
  final String password;
  final bool estado;
  final bool habilitarAcceso;
  UsuarioData(
      {@required this.usuarioId,
      this.personaId,
      this.usuario,
      this.password,
      this.estado,
      this.habilitarAcceso});
  factory UsuarioData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return UsuarioData(
      usuarioId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}usuario_id']),
      personaId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}persona_id']),
      usuario:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}usuario']),
      password: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}password']),
      estado:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}estado']),
      habilitarAcceso: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}habilitar_acceso']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || usuarioId != null) {
      map['usuario_id'] = Variable<int>(usuarioId);
    }
    if (!nullToAbsent || personaId != null) {
      map['persona_id'] = Variable<int>(personaId);
    }
    if (!nullToAbsent || usuario != null) {
      map['usuario'] = Variable<String>(usuario);
    }
    if (!nullToAbsent || password != null) {
      map['password'] = Variable<String>(password);
    }
    if (!nullToAbsent || estado != null) {
      map['estado'] = Variable<bool>(estado);
    }
    if (!nullToAbsent || habilitarAcceso != null) {
      map['habilitar_acceso'] = Variable<bool>(habilitarAcceso);
    }
    return map;
  }

  UsuarioCompanion toCompanion(bool nullToAbsent) {
    return UsuarioCompanion(
      usuarioId: usuarioId == null && nullToAbsent
          ? const Value.absent()
          : Value(usuarioId),
      personaId: personaId == null && nullToAbsent
          ? const Value.absent()
          : Value(personaId),
      usuario: usuario == null && nullToAbsent
          ? const Value.absent()
          : Value(usuario),
      password: password == null && nullToAbsent
          ? const Value.absent()
          : Value(password),
      estado:
          estado == null && nullToAbsent ? const Value.absent() : Value(estado),
      habilitarAcceso: habilitarAcceso == null && nullToAbsent
          ? const Value.absent()
          : Value(habilitarAcceso),
    );
  }

  factory UsuarioData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return UsuarioData(
      usuarioId: serializer.fromJson<int>(json['usuarioId']),
      personaId: serializer.fromJson<int>(json['personaId']),
      usuario: serializer.fromJson<String>(json['usuario']),
      password: serializer.fromJson<String>(json['password']),
      estado: serializer.fromJson<bool>(json['estado']),
      habilitarAcceso: serializer.fromJson<bool>(json['habilitarAcceso']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'usuarioId': serializer.toJson<int>(usuarioId),
      'personaId': serializer.toJson<int>(personaId),
      'usuario': serializer.toJson<String>(usuario),
      'password': serializer.toJson<String>(password),
      'estado': serializer.toJson<bool>(estado),
      'habilitarAcceso': serializer.toJson<bool>(habilitarAcceso),
    };
  }

  UsuarioData copyWith(
          {int usuarioId,
          int personaId,
          String usuario,
          String password,
          bool estado,
          bool habilitarAcceso}) =>
      UsuarioData(
        usuarioId: usuarioId ?? this.usuarioId,
        personaId: personaId ?? this.personaId,
        usuario: usuario ?? this.usuario,
        password: password ?? this.password,
        estado: estado ?? this.estado,
        habilitarAcceso: habilitarAcceso ?? this.habilitarAcceso,
      );
  @override
  String toString() {
    return (StringBuffer('UsuarioData(')
          ..write('usuarioId: $usuarioId, ')
          ..write('personaId: $personaId, ')
          ..write('usuario: $usuario, ')
          ..write('password: $password, ')
          ..write('estado: $estado, ')
          ..write('habilitarAcceso: $habilitarAcceso')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      usuarioId.hashCode,
      $mrjc(
          personaId.hashCode,
          $mrjc(
              usuario.hashCode,
              $mrjc(password.hashCode,
                  $mrjc(estado.hashCode, habilitarAcceso.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is UsuarioData &&
          other.usuarioId == this.usuarioId &&
          other.personaId == this.personaId &&
          other.usuario == this.usuario &&
          other.password == this.password &&
          other.estado == this.estado &&
          other.habilitarAcceso == this.habilitarAcceso);
}

class UsuarioCompanion extends UpdateCompanion<UsuarioData> {
  final Value<int> usuarioId;
  final Value<int> personaId;
  final Value<String> usuario;
  final Value<String> password;
  final Value<bool> estado;
  final Value<bool> habilitarAcceso;
  const UsuarioCompanion({
    this.usuarioId = const Value.absent(),
    this.personaId = const Value.absent(),
    this.usuario = const Value.absent(),
    this.password = const Value.absent(),
    this.estado = const Value.absent(),
    this.habilitarAcceso = const Value.absent(),
  });
  UsuarioCompanion.insert({
    this.usuarioId = const Value.absent(),
    this.personaId = const Value.absent(),
    this.usuario = const Value.absent(),
    this.password = const Value.absent(),
    this.estado = const Value.absent(),
    this.habilitarAcceso = const Value.absent(),
  });
  static Insertable<UsuarioData> custom({
    Expression<int> usuarioId,
    Expression<int> personaId,
    Expression<String> usuario,
    Expression<String> password,
    Expression<bool> estado,
    Expression<bool> habilitarAcceso,
  }) {
    return RawValuesInsertable({
      if (usuarioId != null) 'usuario_id': usuarioId,
      if (personaId != null) 'persona_id': personaId,
      if (usuario != null) 'usuario': usuario,
      if (password != null) 'password': password,
      if (estado != null) 'estado': estado,
      if (habilitarAcceso != null) 'habilitar_acceso': habilitarAcceso,
    });
  }

  UsuarioCompanion copyWith(
      {Value<int> usuarioId,
      Value<int> personaId,
      Value<String> usuario,
      Value<String> password,
      Value<bool> estado,
      Value<bool> habilitarAcceso}) {
    return UsuarioCompanion(
      usuarioId: usuarioId ?? this.usuarioId,
      personaId: personaId ?? this.personaId,
      usuario: usuario ?? this.usuario,
      password: password ?? this.password,
      estado: estado ?? this.estado,
      habilitarAcceso: habilitarAcceso ?? this.habilitarAcceso,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (usuarioId.present) {
      map['usuario_id'] = Variable<int>(usuarioId.value);
    }
    if (personaId.present) {
      map['persona_id'] = Variable<int>(personaId.value);
    }
    if (usuario.present) {
      map['usuario'] = Variable<String>(usuario.value);
    }
    if (password.present) {
      map['password'] = Variable<String>(password.value);
    }
    if (estado.present) {
      map['estado'] = Variable<bool>(estado.value);
    }
    if (habilitarAcceso.present) {
      map['habilitar_acceso'] = Variable<bool>(habilitarAcceso.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsuarioCompanion(')
          ..write('usuarioId: $usuarioId, ')
          ..write('personaId: $personaId, ')
          ..write('usuario: $usuario, ')
          ..write('password: $password, ')
          ..write('estado: $estado, ')
          ..write('habilitarAcceso: $habilitarAcceso')
          ..write(')'))
        .toString();
  }
}

class $UsuarioTable extends Usuario with TableInfo<$UsuarioTable, UsuarioData> {
  final GeneratedDatabase _db;
  final String _alias;
  $UsuarioTable(this._db, [this._alias]);
  final VerificationMeta _usuarioIdMeta = const VerificationMeta('usuarioId');
  GeneratedIntColumn _usuarioId;
  @override
  GeneratedIntColumn get usuarioId => _usuarioId ??= _constructUsuarioId();
  GeneratedIntColumn _constructUsuarioId() {
    return GeneratedIntColumn(
      'usuario_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _personaIdMeta = const VerificationMeta('personaId');
  GeneratedIntColumn _personaId;
  @override
  GeneratedIntColumn get personaId => _personaId ??= _constructPersonaId();
  GeneratedIntColumn _constructPersonaId() {
    return GeneratedIntColumn(
      'persona_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _usuarioMeta = const VerificationMeta('usuario');
  GeneratedTextColumn _usuario;
  @override
  GeneratedTextColumn get usuario => _usuario ??= _constructUsuario();
  GeneratedTextColumn _constructUsuario() {
    return GeneratedTextColumn(
      'usuario',
      $tableName,
      true,
    );
  }

  final VerificationMeta _passwordMeta = const VerificationMeta('password');
  GeneratedTextColumn _password;
  @override
  GeneratedTextColumn get password => _password ??= _constructPassword();
  GeneratedTextColumn _constructPassword() {
    return GeneratedTextColumn(
      'password',
      $tableName,
      true,
    );
  }

  final VerificationMeta _estadoMeta = const VerificationMeta('estado');
  GeneratedBoolColumn _estado;
  @override
  GeneratedBoolColumn get estado => _estado ??= _constructEstado();
  GeneratedBoolColumn _constructEstado() {
    return GeneratedBoolColumn(
      'estado',
      $tableName,
      true,
    );
  }

  final VerificationMeta _habilitarAccesoMeta =
      const VerificationMeta('habilitarAcceso');
  GeneratedBoolColumn _habilitarAcceso;
  @override
  GeneratedBoolColumn get habilitarAcceso =>
      _habilitarAcceso ??= _constructHabilitarAcceso();
  GeneratedBoolColumn _constructHabilitarAcceso() {
    return GeneratedBoolColumn(
      'habilitar_acceso',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [usuarioId, personaId, usuario, password, estado, habilitarAcceso];
  @override
  $UsuarioTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'usuario';
  @override
  final String actualTableName = 'usuario';
  @override
  VerificationContext validateIntegrity(Insertable<UsuarioData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('usuario_id')) {
      context.handle(_usuarioIdMeta,
          usuarioId.isAcceptableOrUnknown(data['usuario_id'], _usuarioIdMeta));
    }
    if (data.containsKey('persona_id')) {
      context.handle(_personaIdMeta,
          personaId.isAcceptableOrUnknown(data['persona_id'], _personaIdMeta));
    }
    if (data.containsKey('usuario')) {
      context.handle(_usuarioMeta,
          usuario.isAcceptableOrUnknown(data['usuario'], _usuarioMeta));
    }
    if (data.containsKey('password')) {
      context.handle(_passwordMeta,
          password.isAcceptableOrUnknown(data['password'], _passwordMeta));
    }
    if (data.containsKey('estado')) {
      context.handle(_estadoMeta,
          estado.isAcceptableOrUnknown(data['estado'], _estadoMeta));
    }
    if (data.containsKey('habilitar_acceso')) {
      context.handle(
          _habilitarAccesoMeta,
          habilitarAcceso.isAcceptableOrUnknown(
              data['habilitar_acceso'], _habilitarAccesoMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {usuarioId};
  @override
  UsuarioData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return UsuarioData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $UsuarioTable createAlias(String alias) {
    return $UsuarioTable(_db, alias);
  }
}

class SessionUserData extends DataClass implements Insertable<SessionUserData> {
  final int userId;
  SessionUserData({@required this.userId});
  factory SessionUserData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    return SessionUserData(
      userId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}user_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<int>(userId);
    }
    return map;
  }

  SessionUserCompanion toCompanion(bool nullToAbsent) {
    return SessionUserCompanion(
      userId:
          userId == null && nullToAbsent ? const Value.absent() : Value(userId),
    );
  }

  factory SessionUserData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return SessionUserData(
      userId: serializer.fromJson<int>(json['userId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userId': serializer.toJson<int>(userId),
    };
  }

  SessionUserData copyWith({int userId}) => SessionUserData(
        userId: userId ?? this.userId,
      );
  @override
  String toString() {
    return (StringBuffer('SessionUserData(')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf(userId.hashCode);
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is SessionUserData && other.userId == this.userId);
}

class SessionUserCompanion extends UpdateCompanion<SessionUserData> {
  final Value<int> userId;
  const SessionUserCompanion({
    this.userId = const Value.absent(),
  });
  SessionUserCompanion.insert({
    this.userId = const Value.absent(),
  });
  static Insertable<SessionUserData> custom({
    Expression<int> userId,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'user_id': userId,
    });
  }

  SessionUserCompanion copyWith({Value<int> userId}) {
    return SessionUserCompanion(
      userId: userId ?? this.userId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SessionUserCompanion(')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }
}

class $SessionUserTable extends SessionUser
    with TableInfo<$SessionUserTable, SessionUserData> {
  final GeneratedDatabase _db;
  final String _alias;
  $SessionUserTable(this._db, [this._alias]);
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  GeneratedIntColumn _userId;
  @override
  GeneratedIntColumn get userId => _userId ??= _constructUserId();
  GeneratedIntColumn _constructUserId() {
    return GeneratedIntColumn(
      'user_id',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [userId];
  @override
  $SessionUserTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'session_user';
  @override
  final String actualTableName = 'session_user';
  @override
  VerificationContext validateIntegrity(Insertable<SessionUserData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id'], _userIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userId};
  @override
  SessionUserData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return SessionUserData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $SessionUserTable createAlias(String alias) {
    return $SessionUserTable(_db, alias);
  }
}

class Relacione extends DataClass implements Insertable<Relacione> {
  final int idRelacion;
  final int personaPrincipalId;
  final int personaVinculadaId;
  final int tipoId;
  final bool activo;
  Relacione(
      {@required this.idRelacion,
      this.personaPrincipalId,
      this.personaVinculadaId,
      this.tipoId,
      this.activo});
  factory Relacione.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final boolType = db.typeSystem.forDartType<bool>();
    return Relacione(
      idRelacion: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_relacion']),
      personaPrincipalId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}persona_principal_id']),
      personaVinculadaId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}persona_vinculada_id']),
      tipoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}tipo_id']),
      activo:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}activo']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || idRelacion != null) {
      map['id_relacion'] = Variable<int>(idRelacion);
    }
    if (!nullToAbsent || personaPrincipalId != null) {
      map['persona_principal_id'] = Variable<int>(personaPrincipalId);
    }
    if (!nullToAbsent || personaVinculadaId != null) {
      map['persona_vinculada_id'] = Variable<int>(personaVinculadaId);
    }
    if (!nullToAbsent || tipoId != null) {
      map['tipo_id'] = Variable<int>(tipoId);
    }
    if (!nullToAbsent || activo != null) {
      map['activo'] = Variable<bool>(activo);
    }
    return map;
  }

  RelacionesCompanion toCompanion(bool nullToAbsent) {
    return RelacionesCompanion(
      idRelacion: idRelacion == null && nullToAbsent
          ? const Value.absent()
          : Value(idRelacion),
      personaPrincipalId: personaPrincipalId == null && nullToAbsent
          ? const Value.absent()
          : Value(personaPrincipalId),
      personaVinculadaId: personaVinculadaId == null && nullToAbsent
          ? const Value.absent()
          : Value(personaVinculadaId),
      tipoId:
          tipoId == null && nullToAbsent ? const Value.absent() : Value(tipoId),
      activo:
          activo == null && nullToAbsent ? const Value.absent() : Value(activo),
    );
  }

  factory Relacione.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Relacione(
      idRelacion: serializer.fromJson<int>(json['idRelacion']),
      personaPrincipalId: serializer.fromJson<int>(json['personaPrincipalId']),
      personaVinculadaId: serializer.fromJson<int>(json['personaVinculadaId']),
      tipoId: serializer.fromJson<int>(json['tipoId']),
      activo: serializer.fromJson<bool>(json['activo']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idRelacion': serializer.toJson<int>(idRelacion),
      'personaPrincipalId': serializer.toJson<int>(personaPrincipalId),
      'personaVinculadaId': serializer.toJson<int>(personaVinculadaId),
      'tipoId': serializer.toJson<int>(tipoId),
      'activo': serializer.toJson<bool>(activo),
    };
  }

  Relacione copyWith(
          {int idRelacion,
          int personaPrincipalId,
          int personaVinculadaId,
          int tipoId,
          bool activo}) =>
      Relacione(
        idRelacion: idRelacion ?? this.idRelacion,
        personaPrincipalId: personaPrincipalId ?? this.personaPrincipalId,
        personaVinculadaId: personaVinculadaId ?? this.personaVinculadaId,
        tipoId: tipoId ?? this.tipoId,
        activo: activo ?? this.activo,
      );
  @override
  String toString() {
    return (StringBuffer('Relacione(')
          ..write('idRelacion: $idRelacion, ')
          ..write('personaPrincipalId: $personaPrincipalId, ')
          ..write('personaVinculadaId: $personaVinculadaId, ')
          ..write('tipoId: $tipoId, ')
          ..write('activo: $activo')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      idRelacion.hashCode,
      $mrjc(
          personaPrincipalId.hashCode,
          $mrjc(personaVinculadaId.hashCode,
              $mrjc(tipoId.hashCode, activo.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Relacione &&
          other.idRelacion == this.idRelacion &&
          other.personaPrincipalId == this.personaPrincipalId &&
          other.personaVinculadaId == this.personaVinculadaId &&
          other.tipoId == this.tipoId &&
          other.activo == this.activo);
}

class RelacionesCompanion extends UpdateCompanion<Relacione> {
  final Value<int> idRelacion;
  final Value<int> personaPrincipalId;
  final Value<int> personaVinculadaId;
  final Value<int> tipoId;
  final Value<bool> activo;
  const RelacionesCompanion({
    this.idRelacion = const Value.absent(),
    this.personaPrincipalId = const Value.absent(),
    this.personaVinculadaId = const Value.absent(),
    this.tipoId = const Value.absent(),
    this.activo = const Value.absent(),
  });
  RelacionesCompanion.insert({
    this.idRelacion = const Value.absent(),
    this.personaPrincipalId = const Value.absent(),
    this.personaVinculadaId = const Value.absent(),
    this.tipoId = const Value.absent(),
    this.activo = const Value.absent(),
  });
  static Insertable<Relacione> custom({
    Expression<int> idRelacion,
    Expression<int> personaPrincipalId,
    Expression<int> personaVinculadaId,
    Expression<int> tipoId,
    Expression<bool> activo,
  }) {
    return RawValuesInsertable({
      if (idRelacion != null) 'id_relacion': idRelacion,
      if (personaPrincipalId != null)
        'persona_principal_id': personaPrincipalId,
      if (personaVinculadaId != null)
        'persona_vinculada_id': personaVinculadaId,
      if (tipoId != null) 'tipo_id': tipoId,
      if (activo != null) 'activo': activo,
    });
  }

  RelacionesCompanion copyWith(
      {Value<int> idRelacion,
      Value<int> personaPrincipalId,
      Value<int> personaVinculadaId,
      Value<int> tipoId,
      Value<bool> activo}) {
    return RelacionesCompanion(
      idRelacion: idRelacion ?? this.idRelacion,
      personaPrincipalId: personaPrincipalId ?? this.personaPrincipalId,
      personaVinculadaId: personaVinculadaId ?? this.personaVinculadaId,
      tipoId: tipoId ?? this.tipoId,
      activo: activo ?? this.activo,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idRelacion.present) {
      map['id_relacion'] = Variable<int>(idRelacion.value);
    }
    if (personaPrincipalId.present) {
      map['persona_principal_id'] = Variable<int>(personaPrincipalId.value);
    }
    if (personaVinculadaId.present) {
      map['persona_vinculada_id'] = Variable<int>(personaVinculadaId.value);
    }
    if (tipoId.present) {
      map['tipo_id'] = Variable<int>(tipoId.value);
    }
    if (activo.present) {
      map['activo'] = Variable<bool>(activo.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RelacionesCompanion(')
          ..write('idRelacion: $idRelacion, ')
          ..write('personaPrincipalId: $personaPrincipalId, ')
          ..write('personaVinculadaId: $personaVinculadaId, ')
          ..write('tipoId: $tipoId, ')
          ..write('activo: $activo')
          ..write(')'))
        .toString();
  }
}

class $RelacionesTable extends Relaciones
    with TableInfo<$RelacionesTable, Relacione> {
  final GeneratedDatabase _db;
  final String _alias;
  $RelacionesTable(this._db, [this._alias]);
  final VerificationMeta _idRelacionMeta = const VerificationMeta('idRelacion');
  GeneratedIntColumn _idRelacion;
  @override
  GeneratedIntColumn get idRelacion => _idRelacion ??= _constructIdRelacion();
  GeneratedIntColumn _constructIdRelacion() {
    return GeneratedIntColumn(
      'id_relacion',
      $tableName,
      false,
    );
  }

  final VerificationMeta _personaPrincipalIdMeta =
      const VerificationMeta('personaPrincipalId');
  GeneratedIntColumn _personaPrincipalId;
  @override
  GeneratedIntColumn get personaPrincipalId =>
      _personaPrincipalId ??= _constructPersonaPrincipalId();
  GeneratedIntColumn _constructPersonaPrincipalId() {
    return GeneratedIntColumn(
      'persona_principal_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _personaVinculadaIdMeta =
      const VerificationMeta('personaVinculadaId');
  GeneratedIntColumn _personaVinculadaId;
  @override
  GeneratedIntColumn get personaVinculadaId =>
      _personaVinculadaId ??= _constructPersonaVinculadaId();
  GeneratedIntColumn _constructPersonaVinculadaId() {
    return GeneratedIntColumn(
      'persona_vinculada_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tipoIdMeta = const VerificationMeta('tipoId');
  GeneratedIntColumn _tipoId;
  @override
  GeneratedIntColumn get tipoId => _tipoId ??= _constructTipoId();
  GeneratedIntColumn _constructTipoId() {
    return GeneratedIntColumn(
      'tipo_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _activoMeta = const VerificationMeta('activo');
  GeneratedBoolColumn _activo;
  @override
  GeneratedBoolColumn get activo => _activo ??= _constructActivo();
  GeneratedBoolColumn _constructActivo() {
    return GeneratedBoolColumn(
      'activo',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [idRelacion, personaPrincipalId, personaVinculadaId, tipoId, activo];
  @override
  $RelacionesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'relaciones';
  @override
  final String actualTableName = 'relaciones';
  @override
  VerificationContext validateIntegrity(Insertable<Relacione> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_relacion')) {
      context.handle(
          _idRelacionMeta,
          idRelacion.isAcceptableOrUnknown(
              data['id_relacion'], _idRelacionMeta));
    }
    if (data.containsKey('persona_principal_id')) {
      context.handle(
          _personaPrincipalIdMeta,
          personaPrincipalId.isAcceptableOrUnknown(
              data['persona_principal_id'], _personaPrincipalIdMeta));
    }
    if (data.containsKey('persona_vinculada_id')) {
      context.handle(
          _personaVinculadaIdMeta,
          personaVinculadaId.isAcceptableOrUnknown(
              data['persona_vinculada_id'], _personaVinculadaIdMeta));
    }
    if (data.containsKey('tipo_id')) {
      context.handle(_tipoIdMeta,
          tipoId.isAcceptableOrUnknown(data['tipo_id'], _tipoIdMeta));
    }
    if (data.containsKey('activo')) {
      context.handle(_activoMeta,
          activo.isAcceptableOrUnknown(data['activo'], _activoMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idRelacion};
  @override
  Relacione map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Relacione.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $RelacionesTable createAlias(String alias) {
    return $RelacionesTable(_db, alias);
  }
}

abstract class _$AppDataBase extends GeneratedDatabase {
  _$AppDataBase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $PersonaTable _persona;
  $PersonaTable get persona => _persona ??= $PersonaTable(this);
  $UsuarioTable _usuario;
  $UsuarioTable get usuario => _usuario ??= $UsuarioTable(this);
  $SessionUserTable _sessionUser;
  $SessionUserTable get sessionUser => _sessionUser ??= $SessionUserTable(this);
  $RelacionesTable _relaciones;
  $RelacionesTable get relaciones => _relaciones ??= $RelacionesTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [persona, usuario, sessionUser, relaciones];
}
