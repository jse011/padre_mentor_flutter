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
  final int hijoIdSelect;
  SessionUserData({@required this.userId, this.hijoIdSelect});
  factory SessionUserData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    return SessionUserData(
      userId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}user_id']),
      hijoIdSelect: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}hijo_id_select']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<int>(userId);
    }
    if (!nullToAbsent || hijoIdSelect != null) {
      map['hijo_id_select'] = Variable<int>(hijoIdSelect);
    }
    return map;
  }

  SessionUserCompanion toCompanion(bool nullToAbsent) {
    return SessionUserCompanion(
      userId:
          userId == null && nullToAbsent ? const Value.absent() : Value(userId),
      hijoIdSelect: hijoIdSelect == null && nullToAbsent
          ? const Value.absent()
          : Value(hijoIdSelect),
    );
  }

  factory SessionUserData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return SessionUserData(
      userId: serializer.fromJson<int>(json['userId']),
      hijoIdSelect: serializer.fromJson<int>(json['hijoIdSelect']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userId': serializer.toJson<int>(userId),
      'hijoIdSelect': serializer.toJson<int>(hijoIdSelect),
    };
  }

  SessionUserData copyWith({int userId, int hijoIdSelect}) => SessionUserData(
        userId: userId ?? this.userId,
        hijoIdSelect: hijoIdSelect ?? this.hijoIdSelect,
      );
  @override
  String toString() {
    return (StringBuffer('SessionUserData(')
          ..write('userId: $userId, ')
          ..write('hijoIdSelect: $hijoIdSelect')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(userId.hashCode, hijoIdSelect.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is SessionUserData &&
          other.userId == this.userId &&
          other.hijoIdSelect == this.hijoIdSelect);
}

class SessionUserCompanion extends UpdateCompanion<SessionUserData> {
  final Value<int> userId;
  final Value<int> hijoIdSelect;
  const SessionUserCompanion({
    this.userId = const Value.absent(),
    this.hijoIdSelect = const Value.absent(),
  });
  SessionUserCompanion.insert({
    this.userId = const Value.absent(),
    this.hijoIdSelect = const Value.absent(),
  });
  static Insertable<SessionUserData> custom({
    Expression<int> userId,
    Expression<int> hijoIdSelect,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'user_id': userId,
      if (hijoIdSelect != null) 'hijo_id_select': hijoIdSelect,
    });
  }

  SessionUserCompanion copyWith({Value<int> userId, Value<int> hijoIdSelect}) {
    return SessionUserCompanion(
      userId: userId ?? this.userId,
      hijoIdSelect: hijoIdSelect ?? this.hijoIdSelect,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (hijoIdSelect.present) {
      map['hijo_id_select'] = Variable<int>(hijoIdSelect.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SessionUserCompanion(')
          ..write('userId: $userId, ')
          ..write('hijoIdSelect: $hijoIdSelect')
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

  final VerificationMeta _hijoIdSelectMeta =
      const VerificationMeta('hijoIdSelect');
  GeneratedIntColumn _hijoIdSelect;
  @override
  GeneratedIntColumn get hijoIdSelect =>
      _hijoIdSelect ??= _constructHijoIdSelect();
  GeneratedIntColumn _constructHijoIdSelect() {
    return GeneratedIntColumn(
      'hijo_id_select',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [userId, hijoIdSelect];
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
    if (data.containsKey('hijo_id_select')) {
      context.handle(
          _hijoIdSelectMeta,
          hijoIdSelect.isAcceptableOrUnknown(
              data['hijo_id_select'], _hijoIdSelectMeta));
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

class AnioAcademicoAlumnoData extends DataClass
    implements Insertable<AnioAcademicoAlumnoData> {
  final int idAnioAcademico;
  final String nombre;
  final String fechaInicio;
  final String fechaFin;
  final String denominacion;
  final int georeferenciaId;
  final int organigramaId;
  final int estadoId;
  final int tipoId;
  final int personaId;
  final bool toogle;
  AnioAcademicoAlumnoData(
      {@required this.idAnioAcademico,
      this.nombre,
      this.fechaInicio,
      this.fechaFin,
      this.denominacion,
      this.georeferenciaId,
      this.organigramaId,
      this.estadoId,
      this.tipoId,
      this.personaId,
      this.toogle});
  factory AnioAcademicoAlumnoData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return AnioAcademicoAlumnoData(
      idAnioAcademico: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_anio_academico']),
      nombre:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}nombre']),
      fechaInicio: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}fecha_inicio']),
      fechaFin: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}fecha_fin']),
      denominacion: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}denominacion']),
      georeferenciaId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}georeferencia_id']),
      organigramaId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}organigrama_id']),
      estadoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}estado_id']),
      tipoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}tipo_id']),
      personaId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}persona_id']),
      toogle:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}toogle']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || idAnioAcademico != null) {
      map['id_anio_academico'] = Variable<int>(idAnioAcademico);
    }
    if (!nullToAbsent || nombre != null) {
      map['nombre'] = Variable<String>(nombre);
    }
    if (!nullToAbsent || fechaInicio != null) {
      map['fecha_inicio'] = Variable<String>(fechaInicio);
    }
    if (!nullToAbsent || fechaFin != null) {
      map['fecha_fin'] = Variable<String>(fechaFin);
    }
    if (!nullToAbsent || denominacion != null) {
      map['denominacion'] = Variable<String>(denominacion);
    }
    if (!nullToAbsent || georeferenciaId != null) {
      map['georeferencia_id'] = Variable<int>(georeferenciaId);
    }
    if (!nullToAbsent || organigramaId != null) {
      map['organigrama_id'] = Variable<int>(organigramaId);
    }
    if (!nullToAbsent || estadoId != null) {
      map['estado_id'] = Variable<int>(estadoId);
    }
    if (!nullToAbsent || tipoId != null) {
      map['tipo_id'] = Variable<int>(tipoId);
    }
    if (!nullToAbsent || personaId != null) {
      map['persona_id'] = Variable<int>(personaId);
    }
    if (!nullToAbsent || toogle != null) {
      map['toogle'] = Variable<bool>(toogle);
    }
    return map;
  }

  AnioAcademicoAlumnoCompanion toCompanion(bool nullToAbsent) {
    return AnioAcademicoAlumnoCompanion(
      idAnioAcademico: idAnioAcademico == null && nullToAbsent
          ? const Value.absent()
          : Value(idAnioAcademico),
      nombre:
          nombre == null && nullToAbsent ? const Value.absent() : Value(nombre),
      fechaInicio: fechaInicio == null && nullToAbsent
          ? const Value.absent()
          : Value(fechaInicio),
      fechaFin: fechaFin == null && nullToAbsent
          ? const Value.absent()
          : Value(fechaFin),
      denominacion: denominacion == null && nullToAbsent
          ? const Value.absent()
          : Value(denominacion),
      georeferenciaId: georeferenciaId == null && nullToAbsent
          ? const Value.absent()
          : Value(georeferenciaId),
      organigramaId: organigramaId == null && nullToAbsent
          ? const Value.absent()
          : Value(organigramaId),
      estadoId: estadoId == null && nullToAbsent
          ? const Value.absent()
          : Value(estadoId),
      tipoId:
          tipoId == null && nullToAbsent ? const Value.absent() : Value(tipoId),
      personaId: personaId == null && nullToAbsent
          ? const Value.absent()
          : Value(personaId),
      toogle:
          toogle == null && nullToAbsent ? const Value.absent() : Value(toogle),
    );
  }

  factory AnioAcademicoAlumnoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return AnioAcademicoAlumnoData(
      idAnioAcademico: serializer.fromJson<int>(json['idAnioAcademico']),
      nombre: serializer.fromJson<String>(json['nombre']),
      fechaInicio: serializer.fromJson<String>(json['fechaInicio']),
      fechaFin: serializer.fromJson<String>(json['fechaFin']),
      denominacion: serializer.fromJson<String>(json['denominacion']),
      georeferenciaId: serializer.fromJson<int>(json['georeferenciaId']),
      organigramaId: serializer.fromJson<int>(json['organigramaId']),
      estadoId: serializer.fromJson<int>(json['estadoId']),
      tipoId: serializer.fromJson<int>(json['tipoId']),
      personaId: serializer.fromJson<int>(json['personaId']),
      toogle: serializer.fromJson<bool>(json['toogle']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idAnioAcademico': serializer.toJson<int>(idAnioAcademico),
      'nombre': serializer.toJson<String>(nombre),
      'fechaInicio': serializer.toJson<String>(fechaInicio),
      'fechaFin': serializer.toJson<String>(fechaFin),
      'denominacion': serializer.toJson<String>(denominacion),
      'georeferenciaId': serializer.toJson<int>(georeferenciaId),
      'organigramaId': serializer.toJson<int>(organigramaId),
      'estadoId': serializer.toJson<int>(estadoId),
      'tipoId': serializer.toJson<int>(tipoId),
      'personaId': serializer.toJson<int>(personaId),
      'toogle': serializer.toJson<bool>(toogle),
    };
  }

  AnioAcademicoAlumnoData copyWith(
          {int idAnioAcademico,
          String nombre,
          String fechaInicio,
          String fechaFin,
          String denominacion,
          int georeferenciaId,
          int organigramaId,
          int estadoId,
          int tipoId,
          int personaId,
          bool toogle}) =>
      AnioAcademicoAlumnoData(
        idAnioAcademico: idAnioAcademico ?? this.idAnioAcademico,
        nombre: nombre ?? this.nombre,
        fechaInicio: fechaInicio ?? this.fechaInicio,
        fechaFin: fechaFin ?? this.fechaFin,
        denominacion: denominacion ?? this.denominacion,
        georeferenciaId: georeferenciaId ?? this.georeferenciaId,
        organigramaId: organigramaId ?? this.organigramaId,
        estadoId: estadoId ?? this.estadoId,
        tipoId: tipoId ?? this.tipoId,
        personaId: personaId ?? this.personaId,
        toogle: toogle ?? this.toogle,
      );
  @override
  String toString() {
    return (StringBuffer('AnioAcademicoAlumnoData(')
          ..write('idAnioAcademico: $idAnioAcademico, ')
          ..write('nombre: $nombre, ')
          ..write('fechaInicio: $fechaInicio, ')
          ..write('fechaFin: $fechaFin, ')
          ..write('denominacion: $denominacion, ')
          ..write('georeferenciaId: $georeferenciaId, ')
          ..write('organigramaId: $organigramaId, ')
          ..write('estadoId: $estadoId, ')
          ..write('tipoId: $tipoId, ')
          ..write('personaId: $personaId, ')
          ..write('toogle: $toogle')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      idAnioAcademico.hashCode,
      $mrjc(
          nombre.hashCode,
          $mrjc(
              fechaInicio.hashCode,
              $mrjc(
                  fechaFin.hashCode,
                  $mrjc(
                      denominacion.hashCode,
                      $mrjc(
                          georeferenciaId.hashCode,
                          $mrjc(
                              organigramaId.hashCode,
                              $mrjc(
                                  estadoId.hashCode,
                                  $mrjc(
                                      tipoId.hashCode,
                                      $mrjc(personaId.hashCode,
                                          toogle.hashCode)))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is AnioAcademicoAlumnoData &&
          other.idAnioAcademico == this.idAnioAcademico &&
          other.nombre == this.nombre &&
          other.fechaInicio == this.fechaInicio &&
          other.fechaFin == this.fechaFin &&
          other.denominacion == this.denominacion &&
          other.georeferenciaId == this.georeferenciaId &&
          other.organigramaId == this.organigramaId &&
          other.estadoId == this.estadoId &&
          other.tipoId == this.tipoId &&
          other.personaId == this.personaId &&
          other.toogle == this.toogle);
}

class AnioAcademicoAlumnoCompanion
    extends UpdateCompanion<AnioAcademicoAlumnoData> {
  final Value<int> idAnioAcademico;
  final Value<String> nombre;
  final Value<String> fechaInicio;
  final Value<String> fechaFin;
  final Value<String> denominacion;
  final Value<int> georeferenciaId;
  final Value<int> organigramaId;
  final Value<int> estadoId;
  final Value<int> tipoId;
  final Value<int> personaId;
  final Value<bool> toogle;
  const AnioAcademicoAlumnoCompanion({
    this.idAnioAcademico = const Value.absent(),
    this.nombre = const Value.absent(),
    this.fechaInicio = const Value.absent(),
    this.fechaFin = const Value.absent(),
    this.denominacion = const Value.absent(),
    this.georeferenciaId = const Value.absent(),
    this.organigramaId = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.tipoId = const Value.absent(),
    this.personaId = const Value.absent(),
    this.toogle = const Value.absent(),
  });
  AnioAcademicoAlumnoCompanion.insert({
    @required int idAnioAcademico,
    this.nombre = const Value.absent(),
    this.fechaInicio = const Value.absent(),
    this.fechaFin = const Value.absent(),
    this.denominacion = const Value.absent(),
    this.georeferenciaId = const Value.absent(),
    this.organigramaId = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.tipoId = const Value.absent(),
    this.personaId = const Value.absent(),
    this.toogle = const Value.absent(),
  }) : idAnioAcademico = Value(idAnioAcademico);
  static Insertable<AnioAcademicoAlumnoData> custom({
    Expression<int> idAnioAcademico,
    Expression<String> nombre,
    Expression<String> fechaInicio,
    Expression<String> fechaFin,
    Expression<String> denominacion,
    Expression<int> georeferenciaId,
    Expression<int> organigramaId,
    Expression<int> estadoId,
    Expression<int> tipoId,
    Expression<int> personaId,
    Expression<bool> toogle,
  }) {
    return RawValuesInsertable({
      if (idAnioAcademico != null) 'id_anio_academico': idAnioAcademico,
      if (nombre != null) 'nombre': nombre,
      if (fechaInicio != null) 'fecha_inicio': fechaInicio,
      if (fechaFin != null) 'fecha_fin': fechaFin,
      if (denominacion != null) 'denominacion': denominacion,
      if (georeferenciaId != null) 'georeferencia_id': georeferenciaId,
      if (organigramaId != null) 'organigrama_id': organigramaId,
      if (estadoId != null) 'estado_id': estadoId,
      if (tipoId != null) 'tipo_id': tipoId,
      if (personaId != null) 'persona_id': personaId,
      if (toogle != null) 'toogle': toogle,
    });
  }

  AnioAcademicoAlumnoCompanion copyWith(
      {Value<int> idAnioAcademico,
      Value<String> nombre,
      Value<String> fechaInicio,
      Value<String> fechaFin,
      Value<String> denominacion,
      Value<int> georeferenciaId,
      Value<int> organigramaId,
      Value<int> estadoId,
      Value<int> tipoId,
      Value<int> personaId,
      Value<bool> toogle}) {
    return AnioAcademicoAlumnoCompanion(
      idAnioAcademico: idAnioAcademico ?? this.idAnioAcademico,
      nombre: nombre ?? this.nombre,
      fechaInicio: fechaInicio ?? this.fechaInicio,
      fechaFin: fechaFin ?? this.fechaFin,
      denominacion: denominacion ?? this.denominacion,
      georeferenciaId: georeferenciaId ?? this.georeferenciaId,
      organigramaId: organigramaId ?? this.organigramaId,
      estadoId: estadoId ?? this.estadoId,
      tipoId: tipoId ?? this.tipoId,
      personaId: personaId ?? this.personaId,
      toogle: toogle ?? this.toogle,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idAnioAcademico.present) {
      map['id_anio_academico'] = Variable<int>(idAnioAcademico.value);
    }
    if (nombre.present) {
      map['nombre'] = Variable<String>(nombre.value);
    }
    if (fechaInicio.present) {
      map['fecha_inicio'] = Variable<String>(fechaInicio.value);
    }
    if (fechaFin.present) {
      map['fecha_fin'] = Variable<String>(fechaFin.value);
    }
    if (denominacion.present) {
      map['denominacion'] = Variable<String>(denominacion.value);
    }
    if (georeferenciaId.present) {
      map['georeferencia_id'] = Variable<int>(georeferenciaId.value);
    }
    if (organigramaId.present) {
      map['organigrama_id'] = Variable<int>(organigramaId.value);
    }
    if (estadoId.present) {
      map['estado_id'] = Variable<int>(estadoId.value);
    }
    if (tipoId.present) {
      map['tipo_id'] = Variable<int>(tipoId.value);
    }
    if (personaId.present) {
      map['persona_id'] = Variable<int>(personaId.value);
    }
    if (toogle.present) {
      map['toogle'] = Variable<bool>(toogle.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AnioAcademicoAlumnoCompanion(')
          ..write('idAnioAcademico: $idAnioAcademico, ')
          ..write('nombre: $nombre, ')
          ..write('fechaInicio: $fechaInicio, ')
          ..write('fechaFin: $fechaFin, ')
          ..write('denominacion: $denominacion, ')
          ..write('georeferenciaId: $georeferenciaId, ')
          ..write('organigramaId: $organigramaId, ')
          ..write('estadoId: $estadoId, ')
          ..write('tipoId: $tipoId, ')
          ..write('personaId: $personaId, ')
          ..write('toogle: $toogle')
          ..write(')'))
        .toString();
  }
}

class $AnioAcademicoAlumnoTable extends AnioAcademicoAlumno
    with TableInfo<$AnioAcademicoAlumnoTable, AnioAcademicoAlumnoData> {
  final GeneratedDatabase _db;
  final String _alias;
  $AnioAcademicoAlumnoTable(this._db, [this._alias]);
  final VerificationMeta _idAnioAcademicoMeta =
      const VerificationMeta('idAnioAcademico');
  GeneratedIntColumn _idAnioAcademico;
  @override
  GeneratedIntColumn get idAnioAcademico =>
      _idAnioAcademico ??= _constructIdAnioAcademico();
  GeneratedIntColumn _constructIdAnioAcademico() {
    return GeneratedIntColumn(
      'id_anio_academico',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nombreMeta = const VerificationMeta('nombre');
  GeneratedTextColumn _nombre;
  @override
  GeneratedTextColumn get nombre => _nombre ??= _constructNombre();
  GeneratedTextColumn _constructNombre() {
    return GeneratedTextColumn(
      'nombre',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fechaInicioMeta =
      const VerificationMeta('fechaInicio');
  GeneratedTextColumn _fechaInicio;
  @override
  GeneratedTextColumn get fechaInicio =>
      _fechaInicio ??= _constructFechaInicio();
  GeneratedTextColumn _constructFechaInicio() {
    return GeneratedTextColumn(
      'fecha_inicio',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fechaFinMeta = const VerificationMeta('fechaFin');
  GeneratedTextColumn _fechaFin;
  @override
  GeneratedTextColumn get fechaFin => _fechaFin ??= _constructFechaFin();
  GeneratedTextColumn _constructFechaFin() {
    return GeneratedTextColumn(
      'fecha_fin',
      $tableName,
      true,
    );
  }

  final VerificationMeta _denominacionMeta =
      const VerificationMeta('denominacion');
  GeneratedTextColumn _denominacion;
  @override
  GeneratedTextColumn get denominacion =>
      _denominacion ??= _constructDenominacion();
  GeneratedTextColumn _constructDenominacion() {
    return GeneratedTextColumn(
      'denominacion',
      $tableName,
      true,
    );
  }

  final VerificationMeta _georeferenciaIdMeta =
      const VerificationMeta('georeferenciaId');
  GeneratedIntColumn _georeferenciaId;
  @override
  GeneratedIntColumn get georeferenciaId =>
      _georeferenciaId ??= _constructGeoreferenciaId();
  GeneratedIntColumn _constructGeoreferenciaId() {
    return GeneratedIntColumn(
      'georeferencia_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _organigramaIdMeta =
      const VerificationMeta('organigramaId');
  GeneratedIntColumn _organigramaId;
  @override
  GeneratedIntColumn get organigramaId =>
      _organigramaId ??= _constructOrganigramaId();
  GeneratedIntColumn _constructOrganigramaId() {
    return GeneratedIntColumn(
      'organigrama_id',
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

  final VerificationMeta _toogleMeta = const VerificationMeta('toogle');
  GeneratedBoolColumn _toogle;
  @override
  GeneratedBoolColumn get toogle => _toogle ??= _constructToogle();
  GeneratedBoolColumn _constructToogle() {
    return GeneratedBoolColumn(
      'toogle',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        idAnioAcademico,
        nombre,
        fechaInicio,
        fechaFin,
        denominacion,
        georeferenciaId,
        organigramaId,
        estadoId,
        tipoId,
        personaId,
        toogle
      ];
  @override
  $AnioAcademicoAlumnoTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'anio_academico_alumno';
  @override
  final String actualTableName = 'anio_academico_alumno';
  @override
  VerificationContext validateIntegrity(
      Insertable<AnioAcademicoAlumnoData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_anio_academico')) {
      context.handle(
          _idAnioAcademicoMeta,
          idAnioAcademico.isAcceptableOrUnknown(
              data['id_anio_academico'], _idAnioAcademicoMeta));
    } else if (isInserting) {
      context.missing(_idAnioAcademicoMeta);
    }
    if (data.containsKey('nombre')) {
      context.handle(_nombreMeta,
          nombre.isAcceptableOrUnknown(data['nombre'], _nombreMeta));
    }
    if (data.containsKey('fecha_inicio')) {
      context.handle(
          _fechaInicioMeta,
          fechaInicio.isAcceptableOrUnknown(
              data['fecha_inicio'], _fechaInicioMeta));
    }
    if (data.containsKey('fecha_fin')) {
      context.handle(_fechaFinMeta,
          fechaFin.isAcceptableOrUnknown(data['fecha_fin'], _fechaFinMeta));
    }
    if (data.containsKey('denominacion')) {
      context.handle(
          _denominacionMeta,
          denominacion.isAcceptableOrUnknown(
              data['denominacion'], _denominacionMeta));
    }
    if (data.containsKey('georeferencia_id')) {
      context.handle(
          _georeferenciaIdMeta,
          georeferenciaId.isAcceptableOrUnknown(
              data['georeferencia_id'], _georeferenciaIdMeta));
    }
    if (data.containsKey('organigrama_id')) {
      context.handle(
          _organigramaIdMeta,
          organigramaId.isAcceptableOrUnknown(
              data['organigrama_id'], _organigramaIdMeta));
    }
    if (data.containsKey('estado_id')) {
      context.handle(_estadoIdMeta,
          estadoId.isAcceptableOrUnknown(data['estado_id'], _estadoIdMeta));
    }
    if (data.containsKey('tipo_id')) {
      context.handle(_tipoIdMeta,
          tipoId.isAcceptableOrUnknown(data['tipo_id'], _tipoIdMeta));
    }
    if (data.containsKey('persona_id')) {
      context.handle(_personaIdMeta,
          personaId.isAcceptableOrUnknown(data['persona_id'], _personaIdMeta));
    }
    if (data.containsKey('toogle')) {
      context.handle(_toogleMeta,
          toogle.isAcceptableOrUnknown(data['toogle'], _toogleMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idAnioAcademico, personaId};
  @override
  AnioAcademicoAlumnoData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return AnioAcademicoAlumnoData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $AnioAcademicoAlumnoTable createAlias(String alias) {
    return $AnioAcademicoAlumnoTable(_db, alias);
  }
}

class ProgramasEducativoData extends DataClass
    implements Insertable<ProgramasEducativoData> {
  final int programaEduId;
  final String nombre;
  final String nroCiclos;
  final int nivelAcadId;
  final int tipoEvaluacionId;
  final int estadoId;
  final int entidadId;
  final int tipoInformeSiagieId;
  final bool toogle;
  final int tipoProgramaId;
  final int tipoMatriculaId;
  ProgramasEducativoData(
      {@required this.programaEduId,
      this.nombre,
      this.nroCiclos,
      this.nivelAcadId,
      this.tipoEvaluacionId,
      this.estadoId,
      this.entidadId,
      this.tipoInformeSiagieId,
      this.toogle,
      this.tipoProgramaId,
      this.tipoMatriculaId});
  factory ProgramasEducativoData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return ProgramasEducativoData(
      programaEduId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}programa_edu_id']),
      nombre:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}nombre']),
      nroCiclos: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}nro_ciclos']),
      nivelAcadId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}nivel_acad_id']),
      tipoEvaluacionId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}tipo_evaluacion_id']),
      estadoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}estado_id']),
      entidadId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}entidad_id']),
      tipoInformeSiagieId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}tipo_informe_siagie_id']),
      toogle:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}toogle']),
      tipoProgramaId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}tipo_programa_id']),
      tipoMatriculaId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}tipo_matricula_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || programaEduId != null) {
      map['programa_edu_id'] = Variable<int>(programaEduId);
    }
    if (!nullToAbsent || nombre != null) {
      map['nombre'] = Variable<String>(nombre);
    }
    if (!nullToAbsent || nroCiclos != null) {
      map['nro_ciclos'] = Variable<String>(nroCiclos);
    }
    if (!nullToAbsent || nivelAcadId != null) {
      map['nivel_acad_id'] = Variable<int>(nivelAcadId);
    }
    if (!nullToAbsent || tipoEvaluacionId != null) {
      map['tipo_evaluacion_id'] = Variable<int>(tipoEvaluacionId);
    }
    if (!nullToAbsent || estadoId != null) {
      map['estado_id'] = Variable<int>(estadoId);
    }
    if (!nullToAbsent || entidadId != null) {
      map['entidad_id'] = Variable<int>(entidadId);
    }
    if (!nullToAbsent || tipoInformeSiagieId != null) {
      map['tipo_informe_siagie_id'] = Variable<int>(tipoInformeSiagieId);
    }
    if (!nullToAbsent || toogle != null) {
      map['toogle'] = Variable<bool>(toogle);
    }
    if (!nullToAbsent || tipoProgramaId != null) {
      map['tipo_programa_id'] = Variable<int>(tipoProgramaId);
    }
    if (!nullToAbsent || tipoMatriculaId != null) {
      map['tipo_matricula_id'] = Variable<int>(tipoMatriculaId);
    }
    return map;
  }

  ProgramasEducativoCompanion toCompanion(bool nullToAbsent) {
    return ProgramasEducativoCompanion(
      programaEduId: programaEduId == null && nullToAbsent
          ? const Value.absent()
          : Value(programaEduId),
      nombre:
          nombre == null && nullToAbsent ? const Value.absent() : Value(nombre),
      nroCiclos: nroCiclos == null && nullToAbsent
          ? const Value.absent()
          : Value(nroCiclos),
      nivelAcadId: nivelAcadId == null && nullToAbsent
          ? const Value.absent()
          : Value(nivelAcadId),
      tipoEvaluacionId: tipoEvaluacionId == null && nullToAbsent
          ? const Value.absent()
          : Value(tipoEvaluacionId),
      estadoId: estadoId == null && nullToAbsent
          ? const Value.absent()
          : Value(estadoId),
      entidadId: entidadId == null && nullToAbsent
          ? const Value.absent()
          : Value(entidadId),
      tipoInformeSiagieId: tipoInformeSiagieId == null && nullToAbsent
          ? const Value.absent()
          : Value(tipoInformeSiagieId),
      toogle:
          toogle == null && nullToAbsent ? const Value.absent() : Value(toogle),
      tipoProgramaId: tipoProgramaId == null && nullToAbsent
          ? const Value.absent()
          : Value(tipoProgramaId),
      tipoMatriculaId: tipoMatriculaId == null && nullToAbsent
          ? const Value.absent()
          : Value(tipoMatriculaId),
    );
  }

  factory ProgramasEducativoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ProgramasEducativoData(
      programaEduId: serializer.fromJson<int>(json['programaEduId']),
      nombre: serializer.fromJson<String>(json['nombre']),
      nroCiclos: serializer.fromJson<String>(json['nroCiclos']),
      nivelAcadId: serializer.fromJson<int>(json['nivelAcadId']),
      tipoEvaluacionId: serializer.fromJson<int>(json['tipoEvaluacionId']),
      estadoId: serializer.fromJson<int>(json['estadoId']),
      entidadId: serializer.fromJson<int>(json['entidadId']),
      tipoInformeSiagieId:
          serializer.fromJson<int>(json['tipoInformeSiagieId']),
      toogle: serializer.fromJson<bool>(json['toogle']),
      tipoProgramaId: serializer.fromJson<int>(json['tipoProgramaId']),
      tipoMatriculaId: serializer.fromJson<int>(json['tipoMatriculaId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'programaEduId': serializer.toJson<int>(programaEduId),
      'nombre': serializer.toJson<String>(nombre),
      'nroCiclos': serializer.toJson<String>(nroCiclos),
      'nivelAcadId': serializer.toJson<int>(nivelAcadId),
      'tipoEvaluacionId': serializer.toJson<int>(tipoEvaluacionId),
      'estadoId': serializer.toJson<int>(estadoId),
      'entidadId': serializer.toJson<int>(entidadId),
      'tipoInformeSiagieId': serializer.toJson<int>(tipoInformeSiagieId),
      'toogle': serializer.toJson<bool>(toogle),
      'tipoProgramaId': serializer.toJson<int>(tipoProgramaId),
      'tipoMatriculaId': serializer.toJson<int>(tipoMatriculaId),
    };
  }

  ProgramasEducativoData copyWith(
          {int programaEduId,
          String nombre,
          String nroCiclos,
          int nivelAcadId,
          int tipoEvaluacionId,
          int estadoId,
          int entidadId,
          int tipoInformeSiagieId,
          bool toogle,
          int tipoProgramaId,
          int tipoMatriculaId}) =>
      ProgramasEducativoData(
        programaEduId: programaEduId ?? this.programaEduId,
        nombre: nombre ?? this.nombre,
        nroCiclos: nroCiclos ?? this.nroCiclos,
        nivelAcadId: nivelAcadId ?? this.nivelAcadId,
        tipoEvaluacionId: tipoEvaluacionId ?? this.tipoEvaluacionId,
        estadoId: estadoId ?? this.estadoId,
        entidadId: entidadId ?? this.entidadId,
        tipoInformeSiagieId: tipoInformeSiagieId ?? this.tipoInformeSiagieId,
        toogle: toogle ?? this.toogle,
        tipoProgramaId: tipoProgramaId ?? this.tipoProgramaId,
        tipoMatriculaId: tipoMatriculaId ?? this.tipoMatriculaId,
      );
  @override
  String toString() {
    return (StringBuffer('ProgramasEducativoData(')
          ..write('programaEduId: $programaEduId, ')
          ..write('nombre: $nombre, ')
          ..write('nroCiclos: $nroCiclos, ')
          ..write('nivelAcadId: $nivelAcadId, ')
          ..write('tipoEvaluacionId: $tipoEvaluacionId, ')
          ..write('estadoId: $estadoId, ')
          ..write('entidadId: $entidadId, ')
          ..write('tipoInformeSiagieId: $tipoInformeSiagieId, ')
          ..write('toogle: $toogle, ')
          ..write('tipoProgramaId: $tipoProgramaId, ')
          ..write('tipoMatriculaId: $tipoMatriculaId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      programaEduId.hashCode,
      $mrjc(
          nombre.hashCode,
          $mrjc(
              nroCiclos.hashCode,
              $mrjc(
                  nivelAcadId.hashCode,
                  $mrjc(
                      tipoEvaluacionId.hashCode,
                      $mrjc(
                          estadoId.hashCode,
                          $mrjc(
                              entidadId.hashCode,
                              $mrjc(
                                  tipoInformeSiagieId.hashCode,
                                  $mrjc(
                                      toogle.hashCode,
                                      $mrjc(tipoProgramaId.hashCode,
                                          tipoMatriculaId.hashCode)))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ProgramasEducativoData &&
          other.programaEduId == this.programaEduId &&
          other.nombre == this.nombre &&
          other.nroCiclos == this.nroCiclos &&
          other.nivelAcadId == this.nivelAcadId &&
          other.tipoEvaluacionId == this.tipoEvaluacionId &&
          other.estadoId == this.estadoId &&
          other.entidadId == this.entidadId &&
          other.tipoInformeSiagieId == this.tipoInformeSiagieId &&
          other.toogle == this.toogle &&
          other.tipoProgramaId == this.tipoProgramaId &&
          other.tipoMatriculaId == this.tipoMatriculaId);
}

class ProgramasEducativoCompanion
    extends UpdateCompanion<ProgramasEducativoData> {
  final Value<int> programaEduId;
  final Value<String> nombre;
  final Value<String> nroCiclos;
  final Value<int> nivelAcadId;
  final Value<int> tipoEvaluacionId;
  final Value<int> estadoId;
  final Value<int> entidadId;
  final Value<int> tipoInformeSiagieId;
  final Value<bool> toogle;
  final Value<int> tipoProgramaId;
  final Value<int> tipoMatriculaId;
  const ProgramasEducativoCompanion({
    this.programaEduId = const Value.absent(),
    this.nombre = const Value.absent(),
    this.nroCiclos = const Value.absent(),
    this.nivelAcadId = const Value.absent(),
    this.tipoEvaluacionId = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.entidadId = const Value.absent(),
    this.tipoInformeSiagieId = const Value.absent(),
    this.toogle = const Value.absent(),
    this.tipoProgramaId = const Value.absent(),
    this.tipoMatriculaId = const Value.absent(),
  });
  ProgramasEducativoCompanion.insert({
    this.programaEduId = const Value.absent(),
    this.nombre = const Value.absent(),
    this.nroCiclos = const Value.absent(),
    this.nivelAcadId = const Value.absent(),
    this.tipoEvaluacionId = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.entidadId = const Value.absent(),
    this.tipoInformeSiagieId = const Value.absent(),
    this.toogle = const Value.absent(),
    this.tipoProgramaId = const Value.absent(),
    this.tipoMatriculaId = const Value.absent(),
  });
  static Insertable<ProgramasEducativoData> custom({
    Expression<int> programaEduId,
    Expression<String> nombre,
    Expression<String> nroCiclos,
    Expression<int> nivelAcadId,
    Expression<int> tipoEvaluacionId,
    Expression<int> estadoId,
    Expression<int> entidadId,
    Expression<int> tipoInformeSiagieId,
    Expression<bool> toogle,
    Expression<int> tipoProgramaId,
    Expression<int> tipoMatriculaId,
  }) {
    return RawValuesInsertable({
      if (programaEduId != null) 'programa_edu_id': programaEduId,
      if (nombre != null) 'nombre': nombre,
      if (nroCiclos != null) 'nro_ciclos': nroCiclos,
      if (nivelAcadId != null) 'nivel_acad_id': nivelAcadId,
      if (tipoEvaluacionId != null) 'tipo_evaluacion_id': tipoEvaluacionId,
      if (estadoId != null) 'estado_id': estadoId,
      if (entidadId != null) 'entidad_id': entidadId,
      if (tipoInformeSiagieId != null)
        'tipo_informe_siagie_id': tipoInformeSiagieId,
      if (toogle != null) 'toogle': toogle,
      if (tipoProgramaId != null) 'tipo_programa_id': tipoProgramaId,
      if (tipoMatriculaId != null) 'tipo_matricula_id': tipoMatriculaId,
    });
  }

  ProgramasEducativoCompanion copyWith(
      {Value<int> programaEduId,
      Value<String> nombre,
      Value<String> nroCiclos,
      Value<int> nivelAcadId,
      Value<int> tipoEvaluacionId,
      Value<int> estadoId,
      Value<int> entidadId,
      Value<int> tipoInformeSiagieId,
      Value<bool> toogle,
      Value<int> tipoProgramaId,
      Value<int> tipoMatriculaId}) {
    return ProgramasEducativoCompanion(
      programaEduId: programaEduId ?? this.programaEduId,
      nombre: nombre ?? this.nombre,
      nroCiclos: nroCiclos ?? this.nroCiclos,
      nivelAcadId: nivelAcadId ?? this.nivelAcadId,
      tipoEvaluacionId: tipoEvaluacionId ?? this.tipoEvaluacionId,
      estadoId: estadoId ?? this.estadoId,
      entidadId: entidadId ?? this.entidadId,
      tipoInformeSiagieId: tipoInformeSiagieId ?? this.tipoInformeSiagieId,
      toogle: toogle ?? this.toogle,
      tipoProgramaId: tipoProgramaId ?? this.tipoProgramaId,
      tipoMatriculaId: tipoMatriculaId ?? this.tipoMatriculaId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (programaEduId.present) {
      map['programa_edu_id'] = Variable<int>(programaEduId.value);
    }
    if (nombre.present) {
      map['nombre'] = Variable<String>(nombre.value);
    }
    if (nroCiclos.present) {
      map['nro_ciclos'] = Variable<String>(nroCiclos.value);
    }
    if (nivelAcadId.present) {
      map['nivel_acad_id'] = Variable<int>(nivelAcadId.value);
    }
    if (tipoEvaluacionId.present) {
      map['tipo_evaluacion_id'] = Variable<int>(tipoEvaluacionId.value);
    }
    if (estadoId.present) {
      map['estado_id'] = Variable<int>(estadoId.value);
    }
    if (entidadId.present) {
      map['entidad_id'] = Variable<int>(entidadId.value);
    }
    if (tipoInformeSiagieId.present) {
      map['tipo_informe_siagie_id'] = Variable<int>(tipoInformeSiagieId.value);
    }
    if (toogle.present) {
      map['toogle'] = Variable<bool>(toogle.value);
    }
    if (tipoProgramaId.present) {
      map['tipo_programa_id'] = Variable<int>(tipoProgramaId.value);
    }
    if (tipoMatriculaId.present) {
      map['tipo_matricula_id'] = Variable<int>(tipoMatriculaId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProgramasEducativoCompanion(')
          ..write('programaEduId: $programaEduId, ')
          ..write('nombre: $nombre, ')
          ..write('nroCiclos: $nroCiclos, ')
          ..write('nivelAcadId: $nivelAcadId, ')
          ..write('tipoEvaluacionId: $tipoEvaluacionId, ')
          ..write('estadoId: $estadoId, ')
          ..write('entidadId: $entidadId, ')
          ..write('tipoInformeSiagieId: $tipoInformeSiagieId, ')
          ..write('toogle: $toogle, ')
          ..write('tipoProgramaId: $tipoProgramaId, ')
          ..write('tipoMatriculaId: $tipoMatriculaId')
          ..write(')'))
        .toString();
  }
}

class $ProgramasEducativoTable extends ProgramasEducativo
    with TableInfo<$ProgramasEducativoTable, ProgramasEducativoData> {
  final GeneratedDatabase _db;
  final String _alias;
  $ProgramasEducativoTable(this._db, [this._alias]);
  final VerificationMeta _programaEduIdMeta =
      const VerificationMeta('programaEduId');
  GeneratedIntColumn _programaEduId;
  @override
  GeneratedIntColumn get programaEduId =>
      _programaEduId ??= _constructProgramaEduId();
  GeneratedIntColumn _constructProgramaEduId() {
    return GeneratedIntColumn(
      'programa_edu_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nombreMeta = const VerificationMeta('nombre');
  GeneratedTextColumn _nombre;
  @override
  GeneratedTextColumn get nombre => _nombre ??= _constructNombre();
  GeneratedTextColumn _constructNombre() {
    return GeneratedTextColumn(
      'nombre',
      $tableName,
      true,
    );
  }

  final VerificationMeta _nroCiclosMeta = const VerificationMeta('nroCiclos');
  GeneratedTextColumn _nroCiclos;
  @override
  GeneratedTextColumn get nroCiclos => _nroCiclos ??= _constructNroCiclos();
  GeneratedTextColumn _constructNroCiclos() {
    return GeneratedTextColumn(
      'nro_ciclos',
      $tableName,
      true,
    );
  }

  final VerificationMeta _nivelAcadIdMeta =
      const VerificationMeta('nivelAcadId');
  GeneratedIntColumn _nivelAcadId;
  @override
  GeneratedIntColumn get nivelAcadId =>
      _nivelAcadId ??= _constructNivelAcadId();
  GeneratedIntColumn _constructNivelAcadId() {
    return GeneratedIntColumn(
      'nivel_acad_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tipoEvaluacionIdMeta =
      const VerificationMeta('tipoEvaluacionId');
  GeneratedIntColumn _tipoEvaluacionId;
  @override
  GeneratedIntColumn get tipoEvaluacionId =>
      _tipoEvaluacionId ??= _constructTipoEvaluacionId();
  GeneratedIntColumn _constructTipoEvaluacionId() {
    return GeneratedIntColumn(
      'tipo_evaluacion_id',
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

  final VerificationMeta _entidadIdMeta = const VerificationMeta('entidadId');
  GeneratedIntColumn _entidadId;
  @override
  GeneratedIntColumn get entidadId => _entidadId ??= _constructEntidadId();
  GeneratedIntColumn _constructEntidadId() {
    return GeneratedIntColumn(
      'entidad_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tipoInformeSiagieIdMeta =
      const VerificationMeta('tipoInformeSiagieId');
  GeneratedIntColumn _tipoInformeSiagieId;
  @override
  GeneratedIntColumn get tipoInformeSiagieId =>
      _tipoInformeSiagieId ??= _constructTipoInformeSiagieId();
  GeneratedIntColumn _constructTipoInformeSiagieId() {
    return GeneratedIntColumn(
      'tipo_informe_siagie_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _toogleMeta = const VerificationMeta('toogle');
  GeneratedBoolColumn _toogle;
  @override
  GeneratedBoolColumn get toogle => _toogle ??= _constructToogle();
  GeneratedBoolColumn _constructToogle() {
    return GeneratedBoolColumn(
      'toogle',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tipoProgramaIdMeta =
      const VerificationMeta('tipoProgramaId');
  GeneratedIntColumn _tipoProgramaId;
  @override
  GeneratedIntColumn get tipoProgramaId =>
      _tipoProgramaId ??= _constructTipoProgramaId();
  GeneratedIntColumn _constructTipoProgramaId() {
    return GeneratedIntColumn(
      'tipo_programa_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tipoMatriculaIdMeta =
      const VerificationMeta('tipoMatriculaId');
  GeneratedIntColumn _tipoMatriculaId;
  @override
  GeneratedIntColumn get tipoMatriculaId =>
      _tipoMatriculaId ??= _constructTipoMatriculaId();
  GeneratedIntColumn _constructTipoMatriculaId() {
    return GeneratedIntColumn(
      'tipo_matricula_id',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        programaEduId,
        nombre,
        nroCiclos,
        nivelAcadId,
        tipoEvaluacionId,
        estadoId,
        entidadId,
        tipoInformeSiagieId,
        toogle,
        tipoProgramaId,
        tipoMatriculaId
      ];
  @override
  $ProgramasEducativoTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'programas_educativo';
  @override
  final String actualTableName = 'programas_educativo';
  @override
  VerificationContext validateIntegrity(
      Insertable<ProgramasEducativoData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('programa_edu_id')) {
      context.handle(
          _programaEduIdMeta,
          programaEduId.isAcceptableOrUnknown(
              data['programa_edu_id'], _programaEduIdMeta));
    }
    if (data.containsKey('nombre')) {
      context.handle(_nombreMeta,
          nombre.isAcceptableOrUnknown(data['nombre'], _nombreMeta));
    }
    if (data.containsKey('nro_ciclos')) {
      context.handle(_nroCiclosMeta,
          nroCiclos.isAcceptableOrUnknown(data['nro_ciclos'], _nroCiclosMeta));
    }
    if (data.containsKey('nivel_acad_id')) {
      context.handle(
          _nivelAcadIdMeta,
          nivelAcadId.isAcceptableOrUnknown(
              data['nivel_acad_id'], _nivelAcadIdMeta));
    }
    if (data.containsKey('tipo_evaluacion_id')) {
      context.handle(
          _tipoEvaluacionIdMeta,
          tipoEvaluacionId.isAcceptableOrUnknown(
              data['tipo_evaluacion_id'], _tipoEvaluacionIdMeta));
    }
    if (data.containsKey('estado_id')) {
      context.handle(_estadoIdMeta,
          estadoId.isAcceptableOrUnknown(data['estado_id'], _estadoIdMeta));
    }
    if (data.containsKey('entidad_id')) {
      context.handle(_entidadIdMeta,
          entidadId.isAcceptableOrUnknown(data['entidad_id'], _entidadIdMeta));
    }
    if (data.containsKey('tipo_informe_siagie_id')) {
      context.handle(
          _tipoInformeSiagieIdMeta,
          tipoInformeSiagieId.isAcceptableOrUnknown(
              data['tipo_informe_siagie_id'], _tipoInformeSiagieIdMeta));
    }
    if (data.containsKey('toogle')) {
      context.handle(_toogleMeta,
          toogle.isAcceptableOrUnknown(data['toogle'], _toogleMeta));
    }
    if (data.containsKey('tipo_programa_id')) {
      context.handle(
          _tipoProgramaIdMeta,
          tipoProgramaId.isAcceptableOrUnknown(
              data['tipo_programa_id'], _tipoProgramaIdMeta));
    }
    if (data.containsKey('tipo_matricula_id')) {
      context.handle(
          _tipoMatriculaIdMeta,
          tipoMatriculaId.isAcceptableOrUnknown(
              data['tipo_matricula_id'], _tipoMatriculaIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {programaEduId};
  @override
  ProgramasEducativoData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ProgramasEducativoData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ProgramasEducativoTable createAlias(String alias) {
    return $ProgramasEducativoTable(_db, alias);
  }
}

class PlanEstudioData extends DataClass implements Insertable<PlanEstudioData> {
  final int planEstudiosId;
  final int programaEduId;
  final String nombrePlan;
  final String aliasPlan;
  final int estadoId;
  final String nroResolucion;
  final String fechaResolucion;
  PlanEstudioData(
      {@required this.planEstudiosId,
      this.programaEduId,
      this.nombrePlan,
      this.aliasPlan,
      this.estadoId,
      this.nroResolucion,
      this.fechaResolucion});
  factory PlanEstudioData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return PlanEstudioData(
      planEstudiosId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}plan_estudios_id']),
      programaEduId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}programa_edu_id']),
      nombrePlan: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}nombre_plan']),
      aliasPlan: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}alias_plan']),
      estadoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}estado_id']),
      nroResolucion: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}nro_resolucion']),
      fechaResolucion: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}fecha_resolucion']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || planEstudiosId != null) {
      map['plan_estudios_id'] = Variable<int>(planEstudiosId);
    }
    if (!nullToAbsent || programaEduId != null) {
      map['programa_edu_id'] = Variable<int>(programaEduId);
    }
    if (!nullToAbsent || nombrePlan != null) {
      map['nombre_plan'] = Variable<String>(nombrePlan);
    }
    if (!nullToAbsent || aliasPlan != null) {
      map['alias_plan'] = Variable<String>(aliasPlan);
    }
    if (!nullToAbsent || estadoId != null) {
      map['estado_id'] = Variable<int>(estadoId);
    }
    if (!nullToAbsent || nroResolucion != null) {
      map['nro_resolucion'] = Variable<String>(nroResolucion);
    }
    if (!nullToAbsent || fechaResolucion != null) {
      map['fecha_resolucion'] = Variable<String>(fechaResolucion);
    }
    return map;
  }

  PlanEstudioCompanion toCompanion(bool nullToAbsent) {
    return PlanEstudioCompanion(
      planEstudiosId: planEstudiosId == null && nullToAbsent
          ? const Value.absent()
          : Value(planEstudiosId),
      programaEduId: programaEduId == null && nullToAbsent
          ? const Value.absent()
          : Value(programaEduId),
      nombrePlan: nombrePlan == null && nullToAbsent
          ? const Value.absent()
          : Value(nombrePlan),
      aliasPlan: aliasPlan == null && nullToAbsent
          ? const Value.absent()
          : Value(aliasPlan),
      estadoId: estadoId == null && nullToAbsent
          ? const Value.absent()
          : Value(estadoId),
      nroResolucion: nroResolucion == null && nullToAbsent
          ? const Value.absent()
          : Value(nroResolucion),
      fechaResolucion: fechaResolucion == null && nullToAbsent
          ? const Value.absent()
          : Value(fechaResolucion),
    );
  }

  factory PlanEstudioData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return PlanEstudioData(
      planEstudiosId: serializer.fromJson<int>(json['planEstudiosId']),
      programaEduId: serializer.fromJson<int>(json['programaEduId']),
      nombrePlan: serializer.fromJson<String>(json['nombrePlan']),
      aliasPlan: serializer.fromJson<String>(json['aliasPlan']),
      estadoId: serializer.fromJson<int>(json['estadoId']),
      nroResolucion: serializer.fromJson<String>(json['nroResolucion']),
      fechaResolucion: serializer.fromJson<String>(json['fechaResolucion']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'planEstudiosId': serializer.toJson<int>(planEstudiosId),
      'programaEduId': serializer.toJson<int>(programaEduId),
      'nombrePlan': serializer.toJson<String>(nombrePlan),
      'aliasPlan': serializer.toJson<String>(aliasPlan),
      'estadoId': serializer.toJson<int>(estadoId),
      'nroResolucion': serializer.toJson<String>(nroResolucion),
      'fechaResolucion': serializer.toJson<String>(fechaResolucion),
    };
  }

  PlanEstudioData copyWith(
          {int planEstudiosId,
          int programaEduId,
          String nombrePlan,
          String aliasPlan,
          int estadoId,
          String nroResolucion,
          String fechaResolucion}) =>
      PlanEstudioData(
        planEstudiosId: planEstudiosId ?? this.planEstudiosId,
        programaEduId: programaEduId ?? this.programaEduId,
        nombrePlan: nombrePlan ?? this.nombrePlan,
        aliasPlan: aliasPlan ?? this.aliasPlan,
        estadoId: estadoId ?? this.estadoId,
        nroResolucion: nroResolucion ?? this.nroResolucion,
        fechaResolucion: fechaResolucion ?? this.fechaResolucion,
      );
  @override
  String toString() {
    return (StringBuffer('PlanEstudioData(')
          ..write('planEstudiosId: $planEstudiosId, ')
          ..write('programaEduId: $programaEduId, ')
          ..write('nombrePlan: $nombrePlan, ')
          ..write('aliasPlan: $aliasPlan, ')
          ..write('estadoId: $estadoId, ')
          ..write('nroResolucion: $nroResolucion, ')
          ..write('fechaResolucion: $fechaResolucion')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      planEstudiosId.hashCode,
      $mrjc(
          programaEduId.hashCode,
          $mrjc(
              nombrePlan.hashCode,
              $mrjc(
                  aliasPlan.hashCode,
                  $mrjc(
                      estadoId.hashCode,
                      $mrjc(nroResolucion.hashCode,
                          fechaResolucion.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is PlanEstudioData &&
          other.planEstudiosId == this.planEstudiosId &&
          other.programaEduId == this.programaEduId &&
          other.nombrePlan == this.nombrePlan &&
          other.aliasPlan == this.aliasPlan &&
          other.estadoId == this.estadoId &&
          other.nroResolucion == this.nroResolucion &&
          other.fechaResolucion == this.fechaResolucion);
}

class PlanEstudioCompanion extends UpdateCompanion<PlanEstudioData> {
  final Value<int> planEstudiosId;
  final Value<int> programaEduId;
  final Value<String> nombrePlan;
  final Value<String> aliasPlan;
  final Value<int> estadoId;
  final Value<String> nroResolucion;
  final Value<String> fechaResolucion;
  const PlanEstudioCompanion({
    this.planEstudiosId = const Value.absent(),
    this.programaEduId = const Value.absent(),
    this.nombrePlan = const Value.absent(),
    this.aliasPlan = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.nroResolucion = const Value.absent(),
    this.fechaResolucion = const Value.absent(),
  });
  PlanEstudioCompanion.insert({
    this.planEstudiosId = const Value.absent(),
    this.programaEduId = const Value.absent(),
    this.nombrePlan = const Value.absent(),
    this.aliasPlan = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.nroResolucion = const Value.absent(),
    this.fechaResolucion = const Value.absent(),
  });
  static Insertable<PlanEstudioData> custom({
    Expression<int> planEstudiosId,
    Expression<int> programaEduId,
    Expression<String> nombrePlan,
    Expression<String> aliasPlan,
    Expression<int> estadoId,
    Expression<String> nroResolucion,
    Expression<String> fechaResolucion,
  }) {
    return RawValuesInsertable({
      if (planEstudiosId != null) 'plan_estudios_id': planEstudiosId,
      if (programaEduId != null) 'programa_edu_id': programaEduId,
      if (nombrePlan != null) 'nombre_plan': nombrePlan,
      if (aliasPlan != null) 'alias_plan': aliasPlan,
      if (estadoId != null) 'estado_id': estadoId,
      if (nroResolucion != null) 'nro_resolucion': nroResolucion,
      if (fechaResolucion != null) 'fecha_resolucion': fechaResolucion,
    });
  }

  PlanEstudioCompanion copyWith(
      {Value<int> planEstudiosId,
      Value<int> programaEduId,
      Value<String> nombrePlan,
      Value<String> aliasPlan,
      Value<int> estadoId,
      Value<String> nroResolucion,
      Value<String> fechaResolucion}) {
    return PlanEstudioCompanion(
      planEstudiosId: planEstudiosId ?? this.planEstudiosId,
      programaEduId: programaEduId ?? this.programaEduId,
      nombrePlan: nombrePlan ?? this.nombrePlan,
      aliasPlan: aliasPlan ?? this.aliasPlan,
      estadoId: estadoId ?? this.estadoId,
      nroResolucion: nroResolucion ?? this.nroResolucion,
      fechaResolucion: fechaResolucion ?? this.fechaResolucion,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (planEstudiosId.present) {
      map['plan_estudios_id'] = Variable<int>(planEstudiosId.value);
    }
    if (programaEduId.present) {
      map['programa_edu_id'] = Variable<int>(programaEduId.value);
    }
    if (nombrePlan.present) {
      map['nombre_plan'] = Variable<String>(nombrePlan.value);
    }
    if (aliasPlan.present) {
      map['alias_plan'] = Variable<String>(aliasPlan.value);
    }
    if (estadoId.present) {
      map['estado_id'] = Variable<int>(estadoId.value);
    }
    if (nroResolucion.present) {
      map['nro_resolucion'] = Variable<String>(nroResolucion.value);
    }
    if (fechaResolucion.present) {
      map['fecha_resolucion'] = Variable<String>(fechaResolucion.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PlanEstudioCompanion(')
          ..write('planEstudiosId: $planEstudiosId, ')
          ..write('programaEduId: $programaEduId, ')
          ..write('nombrePlan: $nombrePlan, ')
          ..write('aliasPlan: $aliasPlan, ')
          ..write('estadoId: $estadoId, ')
          ..write('nroResolucion: $nroResolucion, ')
          ..write('fechaResolucion: $fechaResolucion')
          ..write(')'))
        .toString();
  }
}

class $PlanEstudioTable extends PlanEstudio
    with TableInfo<$PlanEstudioTable, PlanEstudioData> {
  final GeneratedDatabase _db;
  final String _alias;
  $PlanEstudioTable(this._db, [this._alias]);
  final VerificationMeta _planEstudiosIdMeta =
      const VerificationMeta('planEstudiosId');
  GeneratedIntColumn _planEstudiosId;
  @override
  GeneratedIntColumn get planEstudiosId =>
      _planEstudiosId ??= _constructPlanEstudiosId();
  GeneratedIntColumn _constructPlanEstudiosId() {
    return GeneratedIntColumn(
      'plan_estudios_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _programaEduIdMeta =
      const VerificationMeta('programaEduId');
  GeneratedIntColumn _programaEduId;
  @override
  GeneratedIntColumn get programaEduId =>
      _programaEduId ??= _constructProgramaEduId();
  GeneratedIntColumn _constructProgramaEduId() {
    return GeneratedIntColumn(
      'programa_edu_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _nombrePlanMeta = const VerificationMeta('nombrePlan');
  GeneratedTextColumn _nombrePlan;
  @override
  GeneratedTextColumn get nombrePlan => _nombrePlan ??= _constructNombrePlan();
  GeneratedTextColumn _constructNombrePlan() {
    return GeneratedTextColumn(
      'nombre_plan',
      $tableName,
      true,
    );
  }

  final VerificationMeta _aliasPlanMeta = const VerificationMeta('aliasPlan');
  GeneratedTextColumn _aliasPlan;
  @override
  GeneratedTextColumn get aliasPlan => _aliasPlan ??= _constructAliasPlan();
  GeneratedTextColumn _constructAliasPlan() {
    return GeneratedTextColumn(
      'alias_plan',
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

  final VerificationMeta _nroResolucionMeta =
      const VerificationMeta('nroResolucion');
  GeneratedTextColumn _nroResolucion;
  @override
  GeneratedTextColumn get nroResolucion =>
      _nroResolucion ??= _constructNroResolucion();
  GeneratedTextColumn _constructNroResolucion() {
    return GeneratedTextColumn(
      'nro_resolucion',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fechaResolucionMeta =
      const VerificationMeta('fechaResolucion');
  GeneratedTextColumn _fechaResolucion;
  @override
  GeneratedTextColumn get fechaResolucion =>
      _fechaResolucion ??= _constructFechaResolucion();
  GeneratedTextColumn _constructFechaResolucion() {
    return GeneratedTextColumn(
      'fecha_resolucion',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        planEstudiosId,
        programaEduId,
        nombrePlan,
        aliasPlan,
        estadoId,
        nroResolucion,
        fechaResolucion
      ];
  @override
  $PlanEstudioTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'plan_estudio';
  @override
  final String actualTableName = 'plan_estudio';
  @override
  VerificationContext validateIntegrity(Insertable<PlanEstudioData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('plan_estudios_id')) {
      context.handle(
          _planEstudiosIdMeta,
          planEstudiosId.isAcceptableOrUnknown(
              data['plan_estudios_id'], _planEstudiosIdMeta));
    }
    if (data.containsKey('programa_edu_id')) {
      context.handle(
          _programaEduIdMeta,
          programaEduId.isAcceptableOrUnknown(
              data['programa_edu_id'], _programaEduIdMeta));
    }
    if (data.containsKey('nombre_plan')) {
      context.handle(
          _nombrePlanMeta,
          nombrePlan.isAcceptableOrUnknown(
              data['nombre_plan'], _nombrePlanMeta));
    }
    if (data.containsKey('alias_plan')) {
      context.handle(_aliasPlanMeta,
          aliasPlan.isAcceptableOrUnknown(data['alias_plan'], _aliasPlanMeta));
    }
    if (data.containsKey('estado_id')) {
      context.handle(_estadoIdMeta,
          estadoId.isAcceptableOrUnknown(data['estado_id'], _estadoIdMeta));
    }
    if (data.containsKey('nro_resolucion')) {
      context.handle(
          _nroResolucionMeta,
          nroResolucion.isAcceptableOrUnknown(
              data['nro_resolucion'], _nroResolucionMeta));
    }
    if (data.containsKey('fecha_resolucion')) {
      context.handle(
          _fechaResolucionMeta,
          fechaResolucion.isAcceptableOrUnknown(
              data['fecha_resolucion'], _fechaResolucionMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {planEstudiosId};
  @override
  PlanEstudioData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return PlanEstudioData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $PlanEstudioTable createAlias(String alias) {
    return $PlanEstudioTable(_db, alias);
  }
}

class PlanCurso extends DataClass implements Insertable<PlanCurso> {
  final int planCursoId;
  final int cursoId;
  final int periodoId;
  final int planEstudiosId;
  PlanCurso(
      {@required this.planCursoId,
      this.cursoId,
      this.periodoId,
      this.planEstudiosId});
  factory PlanCurso.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    return PlanCurso(
      planCursoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}plan_curso_id']),
      cursoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}curso_id']),
      periodoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}periodo_id']),
      planEstudiosId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}plan_estudios_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || planCursoId != null) {
      map['plan_curso_id'] = Variable<int>(planCursoId);
    }
    if (!nullToAbsent || cursoId != null) {
      map['curso_id'] = Variable<int>(cursoId);
    }
    if (!nullToAbsent || periodoId != null) {
      map['periodo_id'] = Variable<int>(periodoId);
    }
    if (!nullToAbsent || planEstudiosId != null) {
      map['plan_estudios_id'] = Variable<int>(planEstudiosId);
    }
    return map;
  }

  PlanCursosCompanion toCompanion(bool nullToAbsent) {
    return PlanCursosCompanion(
      planCursoId: planCursoId == null && nullToAbsent
          ? const Value.absent()
          : Value(planCursoId),
      cursoId: cursoId == null && nullToAbsent
          ? const Value.absent()
          : Value(cursoId),
      periodoId: periodoId == null && nullToAbsent
          ? const Value.absent()
          : Value(periodoId),
      planEstudiosId: planEstudiosId == null && nullToAbsent
          ? const Value.absent()
          : Value(planEstudiosId),
    );
  }

  factory PlanCurso.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return PlanCurso(
      planCursoId: serializer.fromJson<int>(json['planCursoId']),
      cursoId: serializer.fromJson<int>(json['cursoId']),
      periodoId: serializer.fromJson<int>(json['periodoId']),
      planEstudiosId: serializer.fromJson<int>(json['planEstudiosId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'planCursoId': serializer.toJson<int>(planCursoId),
      'cursoId': serializer.toJson<int>(cursoId),
      'periodoId': serializer.toJson<int>(periodoId),
      'planEstudiosId': serializer.toJson<int>(planEstudiosId),
    };
  }

  PlanCurso copyWith(
          {int planCursoId, int cursoId, int periodoId, int planEstudiosId}) =>
      PlanCurso(
        planCursoId: planCursoId ?? this.planCursoId,
        cursoId: cursoId ?? this.cursoId,
        periodoId: periodoId ?? this.periodoId,
        planEstudiosId: planEstudiosId ?? this.planEstudiosId,
      );
  @override
  String toString() {
    return (StringBuffer('PlanCurso(')
          ..write('planCursoId: $planCursoId, ')
          ..write('cursoId: $cursoId, ')
          ..write('periodoId: $periodoId, ')
          ..write('planEstudiosId: $planEstudiosId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      planCursoId.hashCode,
      $mrjc(cursoId.hashCode,
          $mrjc(periodoId.hashCode, planEstudiosId.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is PlanCurso &&
          other.planCursoId == this.planCursoId &&
          other.cursoId == this.cursoId &&
          other.periodoId == this.periodoId &&
          other.planEstudiosId == this.planEstudiosId);
}

class PlanCursosCompanion extends UpdateCompanion<PlanCurso> {
  final Value<int> planCursoId;
  final Value<int> cursoId;
  final Value<int> periodoId;
  final Value<int> planEstudiosId;
  const PlanCursosCompanion({
    this.planCursoId = const Value.absent(),
    this.cursoId = const Value.absent(),
    this.periodoId = const Value.absent(),
    this.planEstudiosId = const Value.absent(),
  });
  PlanCursosCompanion.insert({
    this.planCursoId = const Value.absent(),
    this.cursoId = const Value.absent(),
    this.periodoId = const Value.absent(),
    this.planEstudiosId = const Value.absent(),
  });
  static Insertable<PlanCurso> custom({
    Expression<int> planCursoId,
    Expression<int> cursoId,
    Expression<int> periodoId,
    Expression<int> planEstudiosId,
  }) {
    return RawValuesInsertable({
      if (planCursoId != null) 'plan_curso_id': planCursoId,
      if (cursoId != null) 'curso_id': cursoId,
      if (periodoId != null) 'periodo_id': periodoId,
      if (planEstudiosId != null) 'plan_estudios_id': planEstudiosId,
    });
  }

  PlanCursosCompanion copyWith(
      {Value<int> planCursoId,
      Value<int> cursoId,
      Value<int> periodoId,
      Value<int> planEstudiosId}) {
    return PlanCursosCompanion(
      planCursoId: planCursoId ?? this.planCursoId,
      cursoId: cursoId ?? this.cursoId,
      periodoId: periodoId ?? this.periodoId,
      planEstudiosId: planEstudiosId ?? this.planEstudiosId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (planCursoId.present) {
      map['plan_curso_id'] = Variable<int>(planCursoId.value);
    }
    if (cursoId.present) {
      map['curso_id'] = Variable<int>(cursoId.value);
    }
    if (periodoId.present) {
      map['periodo_id'] = Variable<int>(periodoId.value);
    }
    if (planEstudiosId.present) {
      map['plan_estudios_id'] = Variable<int>(planEstudiosId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PlanCursosCompanion(')
          ..write('planCursoId: $planCursoId, ')
          ..write('cursoId: $cursoId, ')
          ..write('periodoId: $periodoId, ')
          ..write('planEstudiosId: $planEstudiosId')
          ..write(')'))
        .toString();
  }
}

class $PlanCursosTable extends PlanCursos
    with TableInfo<$PlanCursosTable, PlanCurso> {
  final GeneratedDatabase _db;
  final String _alias;
  $PlanCursosTable(this._db, [this._alias]);
  final VerificationMeta _planCursoIdMeta =
      const VerificationMeta('planCursoId');
  GeneratedIntColumn _planCursoId;
  @override
  GeneratedIntColumn get planCursoId =>
      _planCursoId ??= _constructPlanCursoId();
  GeneratedIntColumn _constructPlanCursoId() {
    return GeneratedIntColumn(
      'plan_curso_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _cursoIdMeta = const VerificationMeta('cursoId');
  GeneratedIntColumn _cursoId;
  @override
  GeneratedIntColumn get cursoId => _cursoId ??= _constructCursoId();
  GeneratedIntColumn _constructCursoId() {
    return GeneratedIntColumn(
      'curso_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _periodoIdMeta = const VerificationMeta('periodoId');
  GeneratedIntColumn _periodoId;
  @override
  GeneratedIntColumn get periodoId => _periodoId ??= _constructPeriodoId();
  GeneratedIntColumn _constructPeriodoId() {
    return GeneratedIntColumn(
      'periodo_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _planEstudiosIdMeta =
      const VerificationMeta('planEstudiosId');
  GeneratedIntColumn _planEstudiosId;
  @override
  GeneratedIntColumn get planEstudiosId =>
      _planEstudiosId ??= _constructPlanEstudiosId();
  GeneratedIntColumn _constructPlanEstudiosId() {
    return GeneratedIntColumn(
      'plan_estudios_id',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [planCursoId, cursoId, periodoId, planEstudiosId];
  @override
  $PlanCursosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'plan_cursos';
  @override
  final String actualTableName = 'plan_cursos';
  @override
  VerificationContext validateIntegrity(Insertable<PlanCurso> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('plan_curso_id')) {
      context.handle(
          _planCursoIdMeta,
          planCursoId.isAcceptableOrUnknown(
              data['plan_curso_id'], _planCursoIdMeta));
    }
    if (data.containsKey('curso_id')) {
      context.handle(_cursoIdMeta,
          cursoId.isAcceptableOrUnknown(data['curso_id'], _cursoIdMeta));
    }
    if (data.containsKey('periodo_id')) {
      context.handle(_periodoIdMeta,
          periodoId.isAcceptableOrUnknown(data['periodo_id'], _periodoIdMeta));
    }
    if (data.containsKey('plan_estudios_id')) {
      context.handle(
          _planEstudiosIdMeta,
          planEstudiosId.isAcceptableOrUnknown(
              data['plan_estudios_id'], _planEstudiosIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {planCursoId};
  @override
  PlanCurso map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return PlanCurso.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $PlanCursosTable createAlias(String alias) {
    return $PlanCursosTable(_db, alias);
  }
}

class CargaCursoData extends DataClass implements Insertable<CargaCursoData> {
  final int cargaCursoId;
  final int planCursoId;
  final int empleadoId;
  final int cargaAcademicaId;
  final int complejo;
  final int evaluable;
  final int idempleado;
  final int idTipoHora;
  final String descripcion;
  final DateTime fechaInicio;
  final DateTime fechafin;
  final String modo;
  final int estado;
  final int anioAcademicoId;
  final int aulaId;
  final int grupoId;
  final int idPlanEstudio;
  final int idPlanEstudioVersion;
  final int CapacidadVacanteP;
  final int CapacidadVacanteD;
  CargaCursoData(
      {@required this.cargaCursoId,
      this.planCursoId,
      this.empleadoId,
      this.cargaAcademicaId,
      this.complejo,
      this.evaluable,
      this.idempleado,
      this.idTipoHora,
      this.descripcion,
      this.fechaInicio,
      this.fechafin,
      this.modo,
      this.estado,
      this.anioAcademicoId,
      this.aulaId,
      this.grupoId,
      this.idPlanEstudio,
      this.idPlanEstudioVersion,
      this.CapacidadVacanteP,
      this.CapacidadVacanteD});
  factory CargaCursoData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return CargaCursoData(
      cargaCursoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}carga_curso_id']),
      planCursoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}plan_curso_id']),
      empleadoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}empleado_id']),
      cargaAcademicaId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}carga_academica_id']),
      complejo:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}complejo']),
      evaluable:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}evaluable']),
      idempleado:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}idempleado']),
      idTipoHora: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_tipo_hora']),
      descripcion: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}descripcion']),
      fechaInicio: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}fecha_inicio']),
      fechafin: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}fechafin']),
      modo: stringType.mapFromDatabaseResponse(data['${effectivePrefix}modo']),
      estado: intType.mapFromDatabaseResponse(data['${effectivePrefix}estado']),
      anioAcademicoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}anio_academico_id']),
      aulaId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}aula_id']),
      grupoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}grupo_id']),
      idPlanEstudio: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_plan_estudio']),
      idPlanEstudioVersion: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}id_plan_estudio_version']),
      CapacidadVacanteP: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}capacidad_vacante_p']),
      CapacidadVacanteD: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}capacidad_vacante_d']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || cargaCursoId != null) {
      map['carga_curso_id'] = Variable<int>(cargaCursoId);
    }
    if (!nullToAbsent || planCursoId != null) {
      map['plan_curso_id'] = Variable<int>(planCursoId);
    }
    if (!nullToAbsent || empleadoId != null) {
      map['empleado_id'] = Variable<int>(empleadoId);
    }
    if (!nullToAbsent || cargaAcademicaId != null) {
      map['carga_academica_id'] = Variable<int>(cargaAcademicaId);
    }
    if (!nullToAbsent || complejo != null) {
      map['complejo'] = Variable<int>(complejo);
    }
    if (!nullToAbsent || evaluable != null) {
      map['evaluable'] = Variable<int>(evaluable);
    }
    if (!nullToAbsent || idempleado != null) {
      map['idempleado'] = Variable<int>(idempleado);
    }
    if (!nullToAbsent || idTipoHora != null) {
      map['id_tipo_hora'] = Variable<int>(idTipoHora);
    }
    if (!nullToAbsent || descripcion != null) {
      map['descripcion'] = Variable<String>(descripcion);
    }
    if (!nullToAbsent || fechaInicio != null) {
      map['fecha_inicio'] = Variable<DateTime>(fechaInicio);
    }
    if (!nullToAbsent || fechafin != null) {
      map['fechafin'] = Variable<DateTime>(fechafin);
    }
    if (!nullToAbsent || modo != null) {
      map['modo'] = Variable<String>(modo);
    }
    if (!nullToAbsent || estado != null) {
      map['estado'] = Variable<int>(estado);
    }
    if (!nullToAbsent || anioAcademicoId != null) {
      map['anio_academico_id'] = Variable<int>(anioAcademicoId);
    }
    if (!nullToAbsent || aulaId != null) {
      map['aula_id'] = Variable<int>(aulaId);
    }
    if (!nullToAbsent || grupoId != null) {
      map['grupo_id'] = Variable<int>(grupoId);
    }
    if (!nullToAbsent || idPlanEstudio != null) {
      map['id_plan_estudio'] = Variable<int>(idPlanEstudio);
    }
    if (!nullToAbsent || idPlanEstudioVersion != null) {
      map['id_plan_estudio_version'] = Variable<int>(idPlanEstudioVersion);
    }
    if (!nullToAbsent || CapacidadVacanteP != null) {
      map['capacidad_vacante_p'] = Variable<int>(CapacidadVacanteP);
    }
    if (!nullToAbsent || CapacidadVacanteD != null) {
      map['capacidad_vacante_d'] = Variable<int>(CapacidadVacanteD);
    }
    return map;
  }

  CargaCursoCompanion toCompanion(bool nullToAbsent) {
    return CargaCursoCompanion(
      cargaCursoId: cargaCursoId == null && nullToAbsent
          ? const Value.absent()
          : Value(cargaCursoId),
      planCursoId: planCursoId == null && nullToAbsent
          ? const Value.absent()
          : Value(planCursoId),
      empleadoId: empleadoId == null && nullToAbsent
          ? const Value.absent()
          : Value(empleadoId),
      cargaAcademicaId: cargaAcademicaId == null && nullToAbsent
          ? const Value.absent()
          : Value(cargaAcademicaId),
      complejo: complejo == null && nullToAbsent
          ? const Value.absent()
          : Value(complejo),
      evaluable: evaluable == null && nullToAbsent
          ? const Value.absent()
          : Value(evaluable),
      idempleado: idempleado == null && nullToAbsent
          ? const Value.absent()
          : Value(idempleado),
      idTipoHora: idTipoHora == null && nullToAbsent
          ? const Value.absent()
          : Value(idTipoHora),
      descripcion: descripcion == null && nullToAbsent
          ? const Value.absent()
          : Value(descripcion),
      fechaInicio: fechaInicio == null && nullToAbsent
          ? const Value.absent()
          : Value(fechaInicio),
      fechafin: fechafin == null && nullToAbsent
          ? const Value.absent()
          : Value(fechafin),
      modo: modo == null && nullToAbsent ? const Value.absent() : Value(modo),
      estado:
          estado == null && nullToAbsent ? const Value.absent() : Value(estado),
      anioAcademicoId: anioAcademicoId == null && nullToAbsent
          ? const Value.absent()
          : Value(anioAcademicoId),
      aulaId:
          aulaId == null && nullToAbsent ? const Value.absent() : Value(aulaId),
      grupoId: grupoId == null && nullToAbsent
          ? const Value.absent()
          : Value(grupoId),
      idPlanEstudio: idPlanEstudio == null && nullToAbsent
          ? const Value.absent()
          : Value(idPlanEstudio),
      idPlanEstudioVersion: idPlanEstudioVersion == null && nullToAbsent
          ? const Value.absent()
          : Value(idPlanEstudioVersion),
      CapacidadVacanteP: CapacidadVacanteP == null && nullToAbsent
          ? const Value.absent()
          : Value(CapacidadVacanteP),
      CapacidadVacanteD: CapacidadVacanteD == null && nullToAbsent
          ? const Value.absent()
          : Value(CapacidadVacanteD),
    );
  }

  factory CargaCursoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return CargaCursoData(
      cargaCursoId: serializer.fromJson<int>(json['cargaCursoId']),
      planCursoId: serializer.fromJson<int>(json['planCursoId']),
      empleadoId: serializer.fromJson<int>(json['empleadoId']),
      cargaAcademicaId: serializer.fromJson<int>(json['cargaAcademicaId']),
      complejo: serializer.fromJson<int>(json['complejo']),
      evaluable: serializer.fromJson<int>(json['evaluable']),
      idempleado: serializer.fromJson<int>(json['idempleado']),
      idTipoHora: serializer.fromJson<int>(json['idTipoHora']),
      descripcion: serializer.fromJson<String>(json['descripcion']),
      fechaInicio: serializer.fromJson<DateTime>(json['fechaInicio']),
      fechafin: serializer.fromJson<DateTime>(json['fechafin']),
      modo: serializer.fromJson<String>(json['modo']),
      estado: serializer.fromJson<int>(json['estado']),
      anioAcademicoId: serializer.fromJson<int>(json['anioAcademicoId']),
      aulaId: serializer.fromJson<int>(json['aulaId']),
      grupoId: serializer.fromJson<int>(json['grupoId']),
      idPlanEstudio: serializer.fromJson<int>(json['idPlanEstudio']),
      idPlanEstudioVersion:
          serializer.fromJson<int>(json['idPlanEstudioVersion']),
      CapacidadVacanteP: serializer.fromJson<int>(json['CapacidadVacanteP']),
      CapacidadVacanteD: serializer.fromJson<int>(json['CapacidadVacanteD']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'cargaCursoId': serializer.toJson<int>(cargaCursoId),
      'planCursoId': serializer.toJson<int>(planCursoId),
      'empleadoId': serializer.toJson<int>(empleadoId),
      'cargaAcademicaId': serializer.toJson<int>(cargaAcademicaId),
      'complejo': serializer.toJson<int>(complejo),
      'evaluable': serializer.toJson<int>(evaluable),
      'idempleado': serializer.toJson<int>(idempleado),
      'idTipoHora': serializer.toJson<int>(idTipoHora),
      'descripcion': serializer.toJson<String>(descripcion),
      'fechaInicio': serializer.toJson<DateTime>(fechaInicio),
      'fechafin': serializer.toJson<DateTime>(fechafin),
      'modo': serializer.toJson<String>(modo),
      'estado': serializer.toJson<int>(estado),
      'anioAcademicoId': serializer.toJson<int>(anioAcademicoId),
      'aulaId': serializer.toJson<int>(aulaId),
      'grupoId': serializer.toJson<int>(grupoId),
      'idPlanEstudio': serializer.toJson<int>(idPlanEstudio),
      'idPlanEstudioVersion': serializer.toJson<int>(idPlanEstudioVersion),
      'CapacidadVacanteP': serializer.toJson<int>(CapacidadVacanteP),
      'CapacidadVacanteD': serializer.toJson<int>(CapacidadVacanteD),
    };
  }

  CargaCursoData copyWith(
          {int cargaCursoId,
          int planCursoId,
          int empleadoId,
          int cargaAcademicaId,
          int complejo,
          int evaluable,
          int idempleado,
          int idTipoHora,
          String descripcion,
          DateTime fechaInicio,
          DateTime fechafin,
          String modo,
          int estado,
          int anioAcademicoId,
          int aulaId,
          int grupoId,
          int idPlanEstudio,
          int idPlanEstudioVersion,
          int CapacidadVacanteP,
          int CapacidadVacanteD}) =>
      CargaCursoData(
        cargaCursoId: cargaCursoId ?? this.cargaCursoId,
        planCursoId: planCursoId ?? this.planCursoId,
        empleadoId: empleadoId ?? this.empleadoId,
        cargaAcademicaId: cargaAcademicaId ?? this.cargaAcademicaId,
        complejo: complejo ?? this.complejo,
        evaluable: evaluable ?? this.evaluable,
        idempleado: idempleado ?? this.idempleado,
        idTipoHora: idTipoHora ?? this.idTipoHora,
        descripcion: descripcion ?? this.descripcion,
        fechaInicio: fechaInicio ?? this.fechaInicio,
        fechafin: fechafin ?? this.fechafin,
        modo: modo ?? this.modo,
        estado: estado ?? this.estado,
        anioAcademicoId: anioAcademicoId ?? this.anioAcademicoId,
        aulaId: aulaId ?? this.aulaId,
        grupoId: grupoId ?? this.grupoId,
        idPlanEstudio: idPlanEstudio ?? this.idPlanEstudio,
        idPlanEstudioVersion: idPlanEstudioVersion ?? this.idPlanEstudioVersion,
        CapacidadVacanteP: CapacidadVacanteP ?? this.CapacidadVacanteP,
        CapacidadVacanteD: CapacidadVacanteD ?? this.CapacidadVacanteD,
      );
  @override
  String toString() {
    return (StringBuffer('CargaCursoData(')
          ..write('cargaCursoId: $cargaCursoId, ')
          ..write('planCursoId: $planCursoId, ')
          ..write('empleadoId: $empleadoId, ')
          ..write('cargaAcademicaId: $cargaAcademicaId, ')
          ..write('complejo: $complejo, ')
          ..write('evaluable: $evaluable, ')
          ..write('idempleado: $idempleado, ')
          ..write('idTipoHora: $idTipoHora, ')
          ..write('descripcion: $descripcion, ')
          ..write('fechaInicio: $fechaInicio, ')
          ..write('fechafin: $fechafin, ')
          ..write('modo: $modo, ')
          ..write('estado: $estado, ')
          ..write('anioAcademicoId: $anioAcademicoId, ')
          ..write('aulaId: $aulaId, ')
          ..write('grupoId: $grupoId, ')
          ..write('idPlanEstudio: $idPlanEstudio, ')
          ..write('idPlanEstudioVersion: $idPlanEstudioVersion, ')
          ..write('CapacidadVacanteP: $CapacidadVacanteP, ')
          ..write('CapacidadVacanteD: $CapacidadVacanteD')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      cargaCursoId.hashCode,
      $mrjc(
          planCursoId.hashCode,
          $mrjc(
              empleadoId.hashCode,
              $mrjc(
                  cargaAcademicaId.hashCode,
                  $mrjc(
                      complejo.hashCode,
                      $mrjc(
                          evaluable.hashCode,
                          $mrjc(
                              idempleado.hashCode,
                              $mrjc(
                                  idTipoHora.hashCode,
                                  $mrjc(
                                      descripcion.hashCode,
                                      $mrjc(
                                          fechaInicio.hashCode,
                                          $mrjc(
                                              fechafin.hashCode,
                                              $mrjc(
                                                  modo.hashCode,
                                                  $mrjc(
                                                      estado.hashCode,
                                                      $mrjc(
                                                          anioAcademicoId
                                                              .hashCode,
                                                          $mrjc(
                                                              aulaId.hashCode,
                                                              $mrjc(
                                                                  grupoId
                                                                      .hashCode,
                                                                  $mrjc(
                                                                      idPlanEstudio
                                                                          .hashCode,
                                                                      $mrjc(
                                                                          idPlanEstudioVersion
                                                                              .hashCode,
                                                                          $mrjc(
                                                                              CapacidadVacanteP.hashCode,
                                                                              CapacidadVacanteD.hashCode))))))))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is CargaCursoData &&
          other.cargaCursoId == this.cargaCursoId &&
          other.planCursoId == this.planCursoId &&
          other.empleadoId == this.empleadoId &&
          other.cargaAcademicaId == this.cargaAcademicaId &&
          other.complejo == this.complejo &&
          other.evaluable == this.evaluable &&
          other.idempleado == this.idempleado &&
          other.idTipoHora == this.idTipoHora &&
          other.descripcion == this.descripcion &&
          other.fechaInicio == this.fechaInicio &&
          other.fechafin == this.fechafin &&
          other.modo == this.modo &&
          other.estado == this.estado &&
          other.anioAcademicoId == this.anioAcademicoId &&
          other.aulaId == this.aulaId &&
          other.grupoId == this.grupoId &&
          other.idPlanEstudio == this.idPlanEstudio &&
          other.idPlanEstudioVersion == this.idPlanEstudioVersion &&
          other.CapacidadVacanteP == this.CapacidadVacanteP &&
          other.CapacidadVacanteD == this.CapacidadVacanteD);
}

class CargaCursoCompanion extends UpdateCompanion<CargaCursoData> {
  final Value<int> cargaCursoId;
  final Value<int> planCursoId;
  final Value<int> empleadoId;
  final Value<int> cargaAcademicaId;
  final Value<int> complejo;
  final Value<int> evaluable;
  final Value<int> idempleado;
  final Value<int> idTipoHora;
  final Value<String> descripcion;
  final Value<DateTime> fechaInicio;
  final Value<DateTime> fechafin;
  final Value<String> modo;
  final Value<int> estado;
  final Value<int> anioAcademicoId;
  final Value<int> aulaId;
  final Value<int> grupoId;
  final Value<int> idPlanEstudio;
  final Value<int> idPlanEstudioVersion;
  final Value<int> CapacidadVacanteP;
  final Value<int> CapacidadVacanteD;
  const CargaCursoCompanion({
    this.cargaCursoId = const Value.absent(),
    this.planCursoId = const Value.absent(),
    this.empleadoId = const Value.absent(),
    this.cargaAcademicaId = const Value.absent(),
    this.complejo = const Value.absent(),
    this.evaluable = const Value.absent(),
    this.idempleado = const Value.absent(),
    this.idTipoHora = const Value.absent(),
    this.descripcion = const Value.absent(),
    this.fechaInicio = const Value.absent(),
    this.fechafin = const Value.absent(),
    this.modo = const Value.absent(),
    this.estado = const Value.absent(),
    this.anioAcademicoId = const Value.absent(),
    this.aulaId = const Value.absent(),
    this.grupoId = const Value.absent(),
    this.idPlanEstudio = const Value.absent(),
    this.idPlanEstudioVersion = const Value.absent(),
    this.CapacidadVacanteP = const Value.absent(),
    this.CapacidadVacanteD = const Value.absent(),
  });
  CargaCursoCompanion.insert({
    this.cargaCursoId = const Value.absent(),
    this.planCursoId = const Value.absent(),
    this.empleadoId = const Value.absent(),
    this.cargaAcademicaId = const Value.absent(),
    this.complejo = const Value.absent(),
    this.evaluable = const Value.absent(),
    this.idempleado = const Value.absent(),
    this.idTipoHora = const Value.absent(),
    this.descripcion = const Value.absent(),
    this.fechaInicio = const Value.absent(),
    this.fechafin = const Value.absent(),
    this.modo = const Value.absent(),
    this.estado = const Value.absent(),
    this.anioAcademicoId = const Value.absent(),
    this.aulaId = const Value.absent(),
    this.grupoId = const Value.absent(),
    this.idPlanEstudio = const Value.absent(),
    this.idPlanEstudioVersion = const Value.absent(),
    this.CapacidadVacanteP = const Value.absent(),
    this.CapacidadVacanteD = const Value.absent(),
  });
  static Insertable<CargaCursoData> custom({
    Expression<int> cargaCursoId,
    Expression<int> planCursoId,
    Expression<int> empleadoId,
    Expression<int> cargaAcademicaId,
    Expression<int> complejo,
    Expression<int> evaluable,
    Expression<int> idempleado,
    Expression<int> idTipoHora,
    Expression<String> descripcion,
    Expression<DateTime> fechaInicio,
    Expression<DateTime> fechafin,
    Expression<String> modo,
    Expression<int> estado,
    Expression<int> anioAcademicoId,
    Expression<int> aulaId,
    Expression<int> grupoId,
    Expression<int> idPlanEstudio,
    Expression<int> idPlanEstudioVersion,
    Expression<int> CapacidadVacanteP,
    Expression<int> CapacidadVacanteD,
  }) {
    return RawValuesInsertable({
      if (cargaCursoId != null) 'carga_curso_id': cargaCursoId,
      if (planCursoId != null) 'plan_curso_id': planCursoId,
      if (empleadoId != null) 'empleado_id': empleadoId,
      if (cargaAcademicaId != null) 'carga_academica_id': cargaAcademicaId,
      if (complejo != null) 'complejo': complejo,
      if (evaluable != null) 'evaluable': evaluable,
      if (idempleado != null) 'idempleado': idempleado,
      if (idTipoHora != null) 'id_tipo_hora': idTipoHora,
      if (descripcion != null) 'descripcion': descripcion,
      if (fechaInicio != null) 'fecha_inicio': fechaInicio,
      if (fechafin != null) 'fechafin': fechafin,
      if (modo != null) 'modo': modo,
      if (estado != null) 'estado': estado,
      if (anioAcademicoId != null) 'anio_academico_id': anioAcademicoId,
      if (aulaId != null) 'aula_id': aulaId,
      if (grupoId != null) 'grupo_id': grupoId,
      if (idPlanEstudio != null) 'id_plan_estudio': idPlanEstudio,
      if (idPlanEstudioVersion != null)
        'id_plan_estudio_version': idPlanEstudioVersion,
      if (CapacidadVacanteP != null) 'capacidad_vacante_p': CapacidadVacanteP,
      if (CapacidadVacanteD != null) 'capacidad_vacante_d': CapacidadVacanteD,
    });
  }

  CargaCursoCompanion copyWith(
      {Value<int> cargaCursoId,
      Value<int> planCursoId,
      Value<int> empleadoId,
      Value<int> cargaAcademicaId,
      Value<int> complejo,
      Value<int> evaluable,
      Value<int> idempleado,
      Value<int> idTipoHora,
      Value<String> descripcion,
      Value<DateTime> fechaInicio,
      Value<DateTime> fechafin,
      Value<String> modo,
      Value<int> estado,
      Value<int> anioAcademicoId,
      Value<int> aulaId,
      Value<int> grupoId,
      Value<int> idPlanEstudio,
      Value<int> idPlanEstudioVersion,
      Value<int> CapacidadVacanteP,
      Value<int> CapacidadVacanteD}) {
    return CargaCursoCompanion(
      cargaCursoId: cargaCursoId ?? this.cargaCursoId,
      planCursoId: planCursoId ?? this.planCursoId,
      empleadoId: empleadoId ?? this.empleadoId,
      cargaAcademicaId: cargaAcademicaId ?? this.cargaAcademicaId,
      complejo: complejo ?? this.complejo,
      evaluable: evaluable ?? this.evaluable,
      idempleado: idempleado ?? this.idempleado,
      idTipoHora: idTipoHora ?? this.idTipoHora,
      descripcion: descripcion ?? this.descripcion,
      fechaInicio: fechaInicio ?? this.fechaInicio,
      fechafin: fechafin ?? this.fechafin,
      modo: modo ?? this.modo,
      estado: estado ?? this.estado,
      anioAcademicoId: anioAcademicoId ?? this.anioAcademicoId,
      aulaId: aulaId ?? this.aulaId,
      grupoId: grupoId ?? this.grupoId,
      idPlanEstudio: idPlanEstudio ?? this.idPlanEstudio,
      idPlanEstudioVersion: idPlanEstudioVersion ?? this.idPlanEstudioVersion,
      CapacidadVacanteP: CapacidadVacanteP ?? this.CapacidadVacanteP,
      CapacidadVacanteD: CapacidadVacanteD ?? this.CapacidadVacanteD,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (cargaCursoId.present) {
      map['carga_curso_id'] = Variable<int>(cargaCursoId.value);
    }
    if (planCursoId.present) {
      map['plan_curso_id'] = Variable<int>(planCursoId.value);
    }
    if (empleadoId.present) {
      map['empleado_id'] = Variable<int>(empleadoId.value);
    }
    if (cargaAcademicaId.present) {
      map['carga_academica_id'] = Variable<int>(cargaAcademicaId.value);
    }
    if (complejo.present) {
      map['complejo'] = Variable<int>(complejo.value);
    }
    if (evaluable.present) {
      map['evaluable'] = Variable<int>(evaluable.value);
    }
    if (idempleado.present) {
      map['idempleado'] = Variable<int>(idempleado.value);
    }
    if (idTipoHora.present) {
      map['id_tipo_hora'] = Variable<int>(idTipoHora.value);
    }
    if (descripcion.present) {
      map['descripcion'] = Variable<String>(descripcion.value);
    }
    if (fechaInicio.present) {
      map['fecha_inicio'] = Variable<DateTime>(fechaInicio.value);
    }
    if (fechafin.present) {
      map['fechafin'] = Variable<DateTime>(fechafin.value);
    }
    if (modo.present) {
      map['modo'] = Variable<String>(modo.value);
    }
    if (estado.present) {
      map['estado'] = Variable<int>(estado.value);
    }
    if (anioAcademicoId.present) {
      map['anio_academico_id'] = Variable<int>(anioAcademicoId.value);
    }
    if (aulaId.present) {
      map['aula_id'] = Variable<int>(aulaId.value);
    }
    if (grupoId.present) {
      map['grupo_id'] = Variable<int>(grupoId.value);
    }
    if (idPlanEstudio.present) {
      map['id_plan_estudio'] = Variable<int>(idPlanEstudio.value);
    }
    if (idPlanEstudioVersion.present) {
      map['id_plan_estudio_version'] =
          Variable<int>(idPlanEstudioVersion.value);
    }
    if (CapacidadVacanteP.present) {
      map['capacidad_vacante_p'] = Variable<int>(CapacidadVacanteP.value);
    }
    if (CapacidadVacanteD.present) {
      map['capacidad_vacante_d'] = Variable<int>(CapacidadVacanteD.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CargaCursoCompanion(')
          ..write('cargaCursoId: $cargaCursoId, ')
          ..write('planCursoId: $planCursoId, ')
          ..write('empleadoId: $empleadoId, ')
          ..write('cargaAcademicaId: $cargaAcademicaId, ')
          ..write('complejo: $complejo, ')
          ..write('evaluable: $evaluable, ')
          ..write('idempleado: $idempleado, ')
          ..write('idTipoHora: $idTipoHora, ')
          ..write('descripcion: $descripcion, ')
          ..write('fechaInicio: $fechaInicio, ')
          ..write('fechafin: $fechafin, ')
          ..write('modo: $modo, ')
          ..write('estado: $estado, ')
          ..write('anioAcademicoId: $anioAcademicoId, ')
          ..write('aulaId: $aulaId, ')
          ..write('grupoId: $grupoId, ')
          ..write('idPlanEstudio: $idPlanEstudio, ')
          ..write('idPlanEstudioVersion: $idPlanEstudioVersion, ')
          ..write('CapacidadVacanteP: $CapacidadVacanteP, ')
          ..write('CapacidadVacanteD: $CapacidadVacanteD')
          ..write(')'))
        .toString();
  }
}

class $CargaCursoTable extends CargaCurso
    with TableInfo<$CargaCursoTable, CargaCursoData> {
  final GeneratedDatabase _db;
  final String _alias;
  $CargaCursoTable(this._db, [this._alias]);
  final VerificationMeta _cargaCursoIdMeta =
      const VerificationMeta('cargaCursoId');
  GeneratedIntColumn _cargaCursoId;
  @override
  GeneratedIntColumn get cargaCursoId =>
      _cargaCursoId ??= _constructCargaCursoId();
  GeneratedIntColumn _constructCargaCursoId() {
    return GeneratedIntColumn(
      'carga_curso_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _planCursoIdMeta =
      const VerificationMeta('planCursoId');
  GeneratedIntColumn _planCursoId;
  @override
  GeneratedIntColumn get planCursoId =>
      _planCursoId ??= _constructPlanCursoId();
  GeneratedIntColumn _constructPlanCursoId() {
    return GeneratedIntColumn(
      'plan_curso_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _empleadoIdMeta = const VerificationMeta('empleadoId');
  GeneratedIntColumn _empleadoId;
  @override
  GeneratedIntColumn get empleadoId => _empleadoId ??= _constructEmpleadoId();
  GeneratedIntColumn _constructEmpleadoId() {
    return GeneratedIntColumn(
      'empleado_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _cargaAcademicaIdMeta =
      const VerificationMeta('cargaAcademicaId');
  GeneratedIntColumn _cargaAcademicaId;
  @override
  GeneratedIntColumn get cargaAcademicaId =>
      _cargaAcademicaId ??= _constructCargaAcademicaId();
  GeneratedIntColumn _constructCargaAcademicaId() {
    return GeneratedIntColumn(
      'carga_academica_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _complejoMeta = const VerificationMeta('complejo');
  GeneratedIntColumn _complejo;
  @override
  GeneratedIntColumn get complejo => _complejo ??= _constructComplejo();
  GeneratedIntColumn _constructComplejo() {
    return GeneratedIntColumn(
      'complejo',
      $tableName,
      true,
    );
  }

  final VerificationMeta _evaluableMeta = const VerificationMeta('evaluable');
  GeneratedIntColumn _evaluable;
  @override
  GeneratedIntColumn get evaluable => _evaluable ??= _constructEvaluable();
  GeneratedIntColumn _constructEvaluable() {
    return GeneratedIntColumn(
      'evaluable',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idempleadoMeta = const VerificationMeta('idempleado');
  GeneratedIntColumn _idempleado;
  @override
  GeneratedIntColumn get idempleado => _idempleado ??= _constructIdempleado();
  GeneratedIntColumn _constructIdempleado() {
    return GeneratedIntColumn(
      'idempleado',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idTipoHoraMeta = const VerificationMeta('idTipoHora');
  GeneratedIntColumn _idTipoHora;
  @override
  GeneratedIntColumn get idTipoHora => _idTipoHora ??= _constructIdTipoHora();
  GeneratedIntColumn _constructIdTipoHora() {
    return GeneratedIntColumn(
      'id_tipo_hora',
      $tableName,
      true,
    );
  }

  final VerificationMeta _descripcionMeta =
      const VerificationMeta('descripcion');
  GeneratedTextColumn _descripcion;
  @override
  GeneratedTextColumn get descripcion =>
      _descripcion ??= _constructDescripcion();
  GeneratedTextColumn _constructDescripcion() {
    return GeneratedTextColumn(
      'descripcion',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fechaInicioMeta =
      const VerificationMeta('fechaInicio');
  GeneratedDateTimeColumn _fechaInicio;
  @override
  GeneratedDateTimeColumn get fechaInicio =>
      _fechaInicio ??= _constructFechaInicio();
  GeneratedDateTimeColumn _constructFechaInicio() {
    return GeneratedDateTimeColumn(
      'fecha_inicio',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fechafinMeta = const VerificationMeta('fechafin');
  GeneratedDateTimeColumn _fechafin;
  @override
  GeneratedDateTimeColumn get fechafin => _fechafin ??= _constructFechafin();
  GeneratedDateTimeColumn _constructFechafin() {
    return GeneratedDateTimeColumn(
      'fechafin',
      $tableName,
      true,
    );
  }

  final VerificationMeta _modoMeta = const VerificationMeta('modo');
  GeneratedTextColumn _modo;
  @override
  GeneratedTextColumn get modo => _modo ??= _constructModo();
  GeneratedTextColumn _constructModo() {
    return GeneratedTextColumn(
      'modo',
      $tableName,
      true,
    );
  }

  final VerificationMeta _estadoMeta = const VerificationMeta('estado');
  GeneratedIntColumn _estado;
  @override
  GeneratedIntColumn get estado => _estado ??= _constructEstado();
  GeneratedIntColumn _constructEstado() {
    return GeneratedIntColumn(
      'estado',
      $tableName,
      true,
    );
  }

  final VerificationMeta _anioAcademicoIdMeta =
      const VerificationMeta('anioAcademicoId');
  GeneratedIntColumn _anioAcademicoId;
  @override
  GeneratedIntColumn get anioAcademicoId =>
      _anioAcademicoId ??= _constructAnioAcademicoId();
  GeneratedIntColumn _constructAnioAcademicoId() {
    return GeneratedIntColumn(
      'anio_academico_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _aulaIdMeta = const VerificationMeta('aulaId');
  GeneratedIntColumn _aulaId;
  @override
  GeneratedIntColumn get aulaId => _aulaId ??= _constructAulaId();
  GeneratedIntColumn _constructAulaId() {
    return GeneratedIntColumn(
      'aula_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _grupoIdMeta = const VerificationMeta('grupoId');
  GeneratedIntColumn _grupoId;
  @override
  GeneratedIntColumn get grupoId => _grupoId ??= _constructGrupoId();
  GeneratedIntColumn _constructGrupoId() {
    return GeneratedIntColumn(
      'grupo_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idPlanEstudioMeta =
      const VerificationMeta('idPlanEstudio');
  GeneratedIntColumn _idPlanEstudio;
  @override
  GeneratedIntColumn get idPlanEstudio =>
      _idPlanEstudio ??= _constructIdPlanEstudio();
  GeneratedIntColumn _constructIdPlanEstudio() {
    return GeneratedIntColumn(
      'id_plan_estudio',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idPlanEstudioVersionMeta =
      const VerificationMeta('idPlanEstudioVersion');
  GeneratedIntColumn _idPlanEstudioVersion;
  @override
  GeneratedIntColumn get idPlanEstudioVersion =>
      _idPlanEstudioVersion ??= _constructIdPlanEstudioVersion();
  GeneratedIntColumn _constructIdPlanEstudioVersion() {
    return GeneratedIntColumn(
      'id_plan_estudio_version',
      $tableName,
      true,
    );
  }

  final VerificationMeta _CapacidadVacantePMeta =
      const VerificationMeta('CapacidadVacanteP');
  GeneratedIntColumn _CapacidadVacanteP;
  @override
  GeneratedIntColumn get CapacidadVacanteP =>
      _CapacidadVacanteP ??= _constructCapacidadVacanteP();
  GeneratedIntColumn _constructCapacidadVacanteP() {
    return GeneratedIntColumn(
      'capacidad_vacante_p',
      $tableName,
      true,
    );
  }

  final VerificationMeta _CapacidadVacanteDMeta =
      const VerificationMeta('CapacidadVacanteD');
  GeneratedIntColumn _CapacidadVacanteD;
  @override
  GeneratedIntColumn get CapacidadVacanteD =>
      _CapacidadVacanteD ??= _constructCapacidadVacanteD();
  GeneratedIntColumn _constructCapacidadVacanteD() {
    return GeneratedIntColumn(
      'capacidad_vacante_d',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        cargaCursoId,
        planCursoId,
        empleadoId,
        cargaAcademicaId,
        complejo,
        evaluable,
        idempleado,
        idTipoHora,
        descripcion,
        fechaInicio,
        fechafin,
        modo,
        estado,
        anioAcademicoId,
        aulaId,
        grupoId,
        idPlanEstudio,
        idPlanEstudioVersion,
        CapacidadVacanteP,
        CapacidadVacanteD
      ];
  @override
  $CargaCursoTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'carga_curso';
  @override
  final String actualTableName = 'carga_curso';
  @override
  VerificationContext validateIntegrity(Insertable<CargaCursoData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('carga_curso_id')) {
      context.handle(
          _cargaCursoIdMeta,
          cargaCursoId.isAcceptableOrUnknown(
              data['carga_curso_id'], _cargaCursoIdMeta));
    }
    if (data.containsKey('plan_curso_id')) {
      context.handle(
          _planCursoIdMeta,
          planCursoId.isAcceptableOrUnknown(
              data['plan_curso_id'], _planCursoIdMeta));
    }
    if (data.containsKey('empleado_id')) {
      context.handle(
          _empleadoIdMeta,
          empleadoId.isAcceptableOrUnknown(
              data['empleado_id'], _empleadoIdMeta));
    }
    if (data.containsKey('carga_academica_id')) {
      context.handle(
          _cargaAcademicaIdMeta,
          cargaAcademicaId.isAcceptableOrUnknown(
              data['carga_academica_id'], _cargaAcademicaIdMeta));
    }
    if (data.containsKey('complejo')) {
      context.handle(_complejoMeta,
          complejo.isAcceptableOrUnknown(data['complejo'], _complejoMeta));
    }
    if (data.containsKey('evaluable')) {
      context.handle(_evaluableMeta,
          evaluable.isAcceptableOrUnknown(data['evaluable'], _evaluableMeta));
    }
    if (data.containsKey('idempleado')) {
      context.handle(
          _idempleadoMeta,
          idempleado.isAcceptableOrUnknown(
              data['idempleado'], _idempleadoMeta));
    }
    if (data.containsKey('id_tipo_hora')) {
      context.handle(
          _idTipoHoraMeta,
          idTipoHora.isAcceptableOrUnknown(
              data['id_tipo_hora'], _idTipoHoraMeta));
    }
    if (data.containsKey('descripcion')) {
      context.handle(
          _descripcionMeta,
          descripcion.isAcceptableOrUnknown(
              data['descripcion'], _descripcionMeta));
    }
    if (data.containsKey('fecha_inicio')) {
      context.handle(
          _fechaInicioMeta,
          fechaInicio.isAcceptableOrUnknown(
              data['fecha_inicio'], _fechaInicioMeta));
    }
    if (data.containsKey('fechafin')) {
      context.handle(_fechafinMeta,
          fechafin.isAcceptableOrUnknown(data['fechafin'], _fechafinMeta));
    }
    if (data.containsKey('modo')) {
      context.handle(
          _modoMeta, modo.isAcceptableOrUnknown(data['modo'], _modoMeta));
    }
    if (data.containsKey('estado')) {
      context.handle(_estadoMeta,
          estado.isAcceptableOrUnknown(data['estado'], _estadoMeta));
    }
    if (data.containsKey('anio_academico_id')) {
      context.handle(
          _anioAcademicoIdMeta,
          anioAcademicoId.isAcceptableOrUnknown(
              data['anio_academico_id'], _anioAcademicoIdMeta));
    }
    if (data.containsKey('aula_id')) {
      context.handle(_aulaIdMeta,
          aulaId.isAcceptableOrUnknown(data['aula_id'], _aulaIdMeta));
    }
    if (data.containsKey('grupo_id')) {
      context.handle(_grupoIdMeta,
          grupoId.isAcceptableOrUnknown(data['grupo_id'], _grupoIdMeta));
    }
    if (data.containsKey('id_plan_estudio')) {
      context.handle(
          _idPlanEstudioMeta,
          idPlanEstudio.isAcceptableOrUnknown(
              data['id_plan_estudio'], _idPlanEstudioMeta));
    }
    if (data.containsKey('id_plan_estudio_version')) {
      context.handle(
          _idPlanEstudioVersionMeta,
          idPlanEstudioVersion.isAcceptableOrUnknown(
              data['id_plan_estudio_version'], _idPlanEstudioVersionMeta));
    }
    if (data.containsKey('capacidad_vacante_p')) {
      context.handle(
          _CapacidadVacantePMeta,
          CapacidadVacanteP.isAcceptableOrUnknown(
              data['capacidad_vacante_p'], _CapacidadVacantePMeta));
    }
    if (data.containsKey('capacidad_vacante_d')) {
      context.handle(
          _CapacidadVacanteDMeta,
          CapacidadVacanteD.isAcceptableOrUnknown(
              data['capacidad_vacante_d'], _CapacidadVacanteDMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {cargaCursoId};
  @override
  CargaCursoData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return CargaCursoData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $CargaCursoTable createAlias(String alias) {
    return $CargaCursoTable(_db, alias);
  }
}

class DetalleContratoAcadData extends DataClass
    implements Insertable<DetalleContratoAcadData> {
  final int idContratoDetAcad;
  final int idContrato;
  final int cargaCursoId;
  final int cargaAcademicaId;
  final String notaPromedio;
  final String escala;
  final int anioAcademicoId;
  final int idNivelAcademico;
  final int cursoId;
  final int grupoId;
  final int aulaId;
  DetalleContratoAcadData(
      {@required this.idContratoDetAcad,
      this.idContrato,
      this.cargaCursoId,
      this.cargaAcademicaId,
      this.notaPromedio,
      this.escala,
      this.anioAcademicoId,
      this.idNivelAcademico,
      this.cursoId,
      this.grupoId,
      this.aulaId});
  factory DetalleContratoAcadData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return DetalleContratoAcadData(
      idContratoDetAcad: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}id_contrato_det_acad']),
      idContrato: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_contrato']),
      cargaCursoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}carga_curso_id']),
      cargaAcademicaId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}carga_academica_id']),
      notaPromedio: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}nota_promedio']),
      escala:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}escala']),
      anioAcademicoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}anio_academico_id']),
      idNivelAcademico: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}id_nivel_academico']),
      cursoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}curso_id']),
      grupoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}grupo_id']),
      aulaId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}aula_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || idContratoDetAcad != null) {
      map['id_contrato_det_acad'] = Variable<int>(idContratoDetAcad);
    }
    if (!nullToAbsent || idContrato != null) {
      map['id_contrato'] = Variable<int>(idContrato);
    }
    if (!nullToAbsent || cargaCursoId != null) {
      map['carga_curso_id'] = Variable<int>(cargaCursoId);
    }
    if (!nullToAbsent || cargaAcademicaId != null) {
      map['carga_academica_id'] = Variable<int>(cargaAcademicaId);
    }
    if (!nullToAbsent || notaPromedio != null) {
      map['nota_promedio'] = Variable<String>(notaPromedio);
    }
    if (!nullToAbsent || escala != null) {
      map['escala'] = Variable<String>(escala);
    }
    if (!nullToAbsent || anioAcademicoId != null) {
      map['anio_academico_id'] = Variable<int>(anioAcademicoId);
    }
    if (!nullToAbsent || idNivelAcademico != null) {
      map['id_nivel_academico'] = Variable<int>(idNivelAcademico);
    }
    if (!nullToAbsent || cursoId != null) {
      map['curso_id'] = Variable<int>(cursoId);
    }
    if (!nullToAbsent || grupoId != null) {
      map['grupo_id'] = Variable<int>(grupoId);
    }
    if (!nullToAbsent || aulaId != null) {
      map['aula_id'] = Variable<int>(aulaId);
    }
    return map;
  }

  DetalleContratoAcadCompanion toCompanion(bool nullToAbsent) {
    return DetalleContratoAcadCompanion(
      idContratoDetAcad: idContratoDetAcad == null && nullToAbsent
          ? const Value.absent()
          : Value(idContratoDetAcad),
      idContrato: idContrato == null && nullToAbsent
          ? const Value.absent()
          : Value(idContrato),
      cargaCursoId: cargaCursoId == null && nullToAbsent
          ? const Value.absent()
          : Value(cargaCursoId),
      cargaAcademicaId: cargaAcademicaId == null && nullToAbsent
          ? const Value.absent()
          : Value(cargaAcademicaId),
      notaPromedio: notaPromedio == null && nullToAbsent
          ? const Value.absent()
          : Value(notaPromedio),
      escala:
          escala == null && nullToAbsent ? const Value.absent() : Value(escala),
      anioAcademicoId: anioAcademicoId == null && nullToAbsent
          ? const Value.absent()
          : Value(anioAcademicoId),
      idNivelAcademico: idNivelAcademico == null && nullToAbsent
          ? const Value.absent()
          : Value(idNivelAcademico),
      cursoId: cursoId == null && nullToAbsent
          ? const Value.absent()
          : Value(cursoId),
      grupoId: grupoId == null && nullToAbsent
          ? const Value.absent()
          : Value(grupoId),
      aulaId:
          aulaId == null && nullToAbsent ? const Value.absent() : Value(aulaId),
    );
  }

  factory DetalleContratoAcadData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return DetalleContratoAcadData(
      idContratoDetAcad: serializer.fromJson<int>(json['idContratoDetAcad']),
      idContrato: serializer.fromJson<int>(json['idContrato']),
      cargaCursoId: serializer.fromJson<int>(json['cargaCursoId']),
      cargaAcademicaId: serializer.fromJson<int>(json['cargaAcademicaId']),
      notaPromedio: serializer.fromJson<String>(json['notaPromedio']),
      escala: serializer.fromJson<String>(json['escala']),
      anioAcademicoId: serializer.fromJson<int>(json['anioAcademicoId']),
      idNivelAcademico: serializer.fromJson<int>(json['idNivelAcademico']),
      cursoId: serializer.fromJson<int>(json['cursoId']),
      grupoId: serializer.fromJson<int>(json['grupoId']),
      aulaId: serializer.fromJson<int>(json['aulaId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idContratoDetAcad': serializer.toJson<int>(idContratoDetAcad),
      'idContrato': serializer.toJson<int>(idContrato),
      'cargaCursoId': serializer.toJson<int>(cargaCursoId),
      'cargaAcademicaId': serializer.toJson<int>(cargaAcademicaId),
      'notaPromedio': serializer.toJson<String>(notaPromedio),
      'escala': serializer.toJson<String>(escala),
      'anioAcademicoId': serializer.toJson<int>(anioAcademicoId),
      'idNivelAcademico': serializer.toJson<int>(idNivelAcademico),
      'cursoId': serializer.toJson<int>(cursoId),
      'grupoId': serializer.toJson<int>(grupoId),
      'aulaId': serializer.toJson<int>(aulaId),
    };
  }

  DetalleContratoAcadData copyWith(
          {int idContratoDetAcad,
          int idContrato,
          int cargaCursoId,
          int cargaAcademicaId,
          String notaPromedio,
          String escala,
          int anioAcademicoId,
          int idNivelAcademico,
          int cursoId,
          int grupoId,
          int aulaId}) =>
      DetalleContratoAcadData(
        idContratoDetAcad: idContratoDetAcad ?? this.idContratoDetAcad,
        idContrato: idContrato ?? this.idContrato,
        cargaCursoId: cargaCursoId ?? this.cargaCursoId,
        cargaAcademicaId: cargaAcademicaId ?? this.cargaAcademicaId,
        notaPromedio: notaPromedio ?? this.notaPromedio,
        escala: escala ?? this.escala,
        anioAcademicoId: anioAcademicoId ?? this.anioAcademicoId,
        idNivelAcademico: idNivelAcademico ?? this.idNivelAcademico,
        cursoId: cursoId ?? this.cursoId,
        grupoId: grupoId ?? this.grupoId,
        aulaId: aulaId ?? this.aulaId,
      );
  @override
  String toString() {
    return (StringBuffer('DetalleContratoAcadData(')
          ..write('idContratoDetAcad: $idContratoDetAcad, ')
          ..write('idContrato: $idContrato, ')
          ..write('cargaCursoId: $cargaCursoId, ')
          ..write('cargaAcademicaId: $cargaAcademicaId, ')
          ..write('notaPromedio: $notaPromedio, ')
          ..write('escala: $escala, ')
          ..write('anioAcademicoId: $anioAcademicoId, ')
          ..write('idNivelAcademico: $idNivelAcademico, ')
          ..write('cursoId: $cursoId, ')
          ..write('grupoId: $grupoId, ')
          ..write('aulaId: $aulaId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      idContratoDetAcad.hashCode,
      $mrjc(
          idContrato.hashCode,
          $mrjc(
              cargaCursoId.hashCode,
              $mrjc(
                  cargaAcademicaId.hashCode,
                  $mrjc(
                      notaPromedio.hashCode,
                      $mrjc(
                          escala.hashCode,
                          $mrjc(
                              anioAcademicoId.hashCode,
                              $mrjc(
                                  idNivelAcademico.hashCode,
                                  $mrjc(
                                      cursoId.hashCode,
                                      $mrjc(grupoId.hashCode,
                                          aulaId.hashCode)))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is DetalleContratoAcadData &&
          other.idContratoDetAcad == this.idContratoDetAcad &&
          other.idContrato == this.idContrato &&
          other.cargaCursoId == this.cargaCursoId &&
          other.cargaAcademicaId == this.cargaAcademicaId &&
          other.notaPromedio == this.notaPromedio &&
          other.escala == this.escala &&
          other.anioAcademicoId == this.anioAcademicoId &&
          other.idNivelAcademico == this.idNivelAcademico &&
          other.cursoId == this.cursoId &&
          other.grupoId == this.grupoId &&
          other.aulaId == this.aulaId);
}

class DetalleContratoAcadCompanion
    extends UpdateCompanion<DetalleContratoAcadData> {
  final Value<int> idContratoDetAcad;
  final Value<int> idContrato;
  final Value<int> cargaCursoId;
  final Value<int> cargaAcademicaId;
  final Value<String> notaPromedio;
  final Value<String> escala;
  final Value<int> anioAcademicoId;
  final Value<int> idNivelAcademico;
  final Value<int> cursoId;
  final Value<int> grupoId;
  final Value<int> aulaId;
  const DetalleContratoAcadCompanion({
    this.idContratoDetAcad = const Value.absent(),
    this.idContrato = const Value.absent(),
    this.cargaCursoId = const Value.absent(),
    this.cargaAcademicaId = const Value.absent(),
    this.notaPromedio = const Value.absent(),
    this.escala = const Value.absent(),
    this.anioAcademicoId = const Value.absent(),
    this.idNivelAcademico = const Value.absent(),
    this.cursoId = const Value.absent(),
    this.grupoId = const Value.absent(),
    this.aulaId = const Value.absent(),
  });
  DetalleContratoAcadCompanion.insert({
    this.idContratoDetAcad = const Value.absent(),
    this.idContrato = const Value.absent(),
    this.cargaCursoId = const Value.absent(),
    this.cargaAcademicaId = const Value.absent(),
    this.notaPromedio = const Value.absent(),
    this.escala = const Value.absent(),
    this.anioAcademicoId = const Value.absent(),
    this.idNivelAcademico = const Value.absent(),
    this.cursoId = const Value.absent(),
    this.grupoId = const Value.absent(),
    this.aulaId = const Value.absent(),
  });
  static Insertable<DetalleContratoAcadData> custom({
    Expression<int> idContratoDetAcad,
    Expression<int> idContrato,
    Expression<int> cargaCursoId,
    Expression<int> cargaAcademicaId,
    Expression<String> notaPromedio,
    Expression<String> escala,
    Expression<int> anioAcademicoId,
    Expression<int> idNivelAcademico,
    Expression<int> cursoId,
    Expression<int> grupoId,
    Expression<int> aulaId,
  }) {
    return RawValuesInsertable({
      if (idContratoDetAcad != null) 'id_contrato_det_acad': idContratoDetAcad,
      if (idContrato != null) 'id_contrato': idContrato,
      if (cargaCursoId != null) 'carga_curso_id': cargaCursoId,
      if (cargaAcademicaId != null) 'carga_academica_id': cargaAcademicaId,
      if (notaPromedio != null) 'nota_promedio': notaPromedio,
      if (escala != null) 'escala': escala,
      if (anioAcademicoId != null) 'anio_academico_id': anioAcademicoId,
      if (idNivelAcademico != null) 'id_nivel_academico': idNivelAcademico,
      if (cursoId != null) 'curso_id': cursoId,
      if (grupoId != null) 'grupo_id': grupoId,
      if (aulaId != null) 'aula_id': aulaId,
    });
  }

  DetalleContratoAcadCompanion copyWith(
      {Value<int> idContratoDetAcad,
      Value<int> idContrato,
      Value<int> cargaCursoId,
      Value<int> cargaAcademicaId,
      Value<String> notaPromedio,
      Value<String> escala,
      Value<int> anioAcademicoId,
      Value<int> idNivelAcademico,
      Value<int> cursoId,
      Value<int> grupoId,
      Value<int> aulaId}) {
    return DetalleContratoAcadCompanion(
      idContratoDetAcad: idContratoDetAcad ?? this.idContratoDetAcad,
      idContrato: idContrato ?? this.idContrato,
      cargaCursoId: cargaCursoId ?? this.cargaCursoId,
      cargaAcademicaId: cargaAcademicaId ?? this.cargaAcademicaId,
      notaPromedio: notaPromedio ?? this.notaPromedio,
      escala: escala ?? this.escala,
      anioAcademicoId: anioAcademicoId ?? this.anioAcademicoId,
      idNivelAcademico: idNivelAcademico ?? this.idNivelAcademico,
      cursoId: cursoId ?? this.cursoId,
      grupoId: grupoId ?? this.grupoId,
      aulaId: aulaId ?? this.aulaId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idContratoDetAcad.present) {
      map['id_contrato_det_acad'] = Variable<int>(idContratoDetAcad.value);
    }
    if (idContrato.present) {
      map['id_contrato'] = Variable<int>(idContrato.value);
    }
    if (cargaCursoId.present) {
      map['carga_curso_id'] = Variable<int>(cargaCursoId.value);
    }
    if (cargaAcademicaId.present) {
      map['carga_academica_id'] = Variable<int>(cargaAcademicaId.value);
    }
    if (notaPromedio.present) {
      map['nota_promedio'] = Variable<String>(notaPromedio.value);
    }
    if (escala.present) {
      map['escala'] = Variable<String>(escala.value);
    }
    if (anioAcademicoId.present) {
      map['anio_academico_id'] = Variable<int>(anioAcademicoId.value);
    }
    if (idNivelAcademico.present) {
      map['id_nivel_academico'] = Variable<int>(idNivelAcademico.value);
    }
    if (cursoId.present) {
      map['curso_id'] = Variable<int>(cursoId.value);
    }
    if (grupoId.present) {
      map['grupo_id'] = Variable<int>(grupoId.value);
    }
    if (aulaId.present) {
      map['aula_id'] = Variable<int>(aulaId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DetalleContratoAcadCompanion(')
          ..write('idContratoDetAcad: $idContratoDetAcad, ')
          ..write('idContrato: $idContrato, ')
          ..write('cargaCursoId: $cargaCursoId, ')
          ..write('cargaAcademicaId: $cargaAcademicaId, ')
          ..write('notaPromedio: $notaPromedio, ')
          ..write('escala: $escala, ')
          ..write('anioAcademicoId: $anioAcademicoId, ')
          ..write('idNivelAcademico: $idNivelAcademico, ')
          ..write('cursoId: $cursoId, ')
          ..write('grupoId: $grupoId, ')
          ..write('aulaId: $aulaId')
          ..write(')'))
        .toString();
  }
}

class $DetalleContratoAcadTable extends DetalleContratoAcad
    with TableInfo<$DetalleContratoAcadTable, DetalleContratoAcadData> {
  final GeneratedDatabase _db;
  final String _alias;
  $DetalleContratoAcadTable(this._db, [this._alias]);
  final VerificationMeta _idContratoDetAcadMeta =
      const VerificationMeta('idContratoDetAcad');
  GeneratedIntColumn _idContratoDetAcad;
  @override
  GeneratedIntColumn get idContratoDetAcad =>
      _idContratoDetAcad ??= _constructIdContratoDetAcad();
  GeneratedIntColumn _constructIdContratoDetAcad() {
    return GeneratedIntColumn(
      'id_contrato_det_acad',
      $tableName,
      false,
    );
  }

  final VerificationMeta _idContratoMeta = const VerificationMeta('idContrato');
  GeneratedIntColumn _idContrato;
  @override
  GeneratedIntColumn get idContrato => _idContrato ??= _constructIdContrato();
  GeneratedIntColumn _constructIdContrato() {
    return GeneratedIntColumn(
      'id_contrato',
      $tableName,
      true,
    );
  }

  final VerificationMeta _cargaCursoIdMeta =
      const VerificationMeta('cargaCursoId');
  GeneratedIntColumn _cargaCursoId;
  @override
  GeneratedIntColumn get cargaCursoId =>
      _cargaCursoId ??= _constructCargaCursoId();
  GeneratedIntColumn _constructCargaCursoId() {
    return GeneratedIntColumn(
      'carga_curso_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _cargaAcademicaIdMeta =
      const VerificationMeta('cargaAcademicaId');
  GeneratedIntColumn _cargaAcademicaId;
  @override
  GeneratedIntColumn get cargaAcademicaId =>
      _cargaAcademicaId ??= _constructCargaAcademicaId();
  GeneratedIntColumn _constructCargaAcademicaId() {
    return GeneratedIntColumn(
      'carga_academica_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _notaPromedioMeta =
      const VerificationMeta('notaPromedio');
  GeneratedTextColumn _notaPromedio;
  @override
  GeneratedTextColumn get notaPromedio =>
      _notaPromedio ??= _constructNotaPromedio();
  GeneratedTextColumn _constructNotaPromedio() {
    return GeneratedTextColumn(
      'nota_promedio',
      $tableName,
      true,
    );
  }

  final VerificationMeta _escalaMeta = const VerificationMeta('escala');
  GeneratedTextColumn _escala;
  @override
  GeneratedTextColumn get escala => _escala ??= _constructEscala();
  GeneratedTextColumn _constructEscala() {
    return GeneratedTextColumn(
      'escala',
      $tableName,
      true,
    );
  }

  final VerificationMeta _anioAcademicoIdMeta =
      const VerificationMeta('anioAcademicoId');
  GeneratedIntColumn _anioAcademicoId;
  @override
  GeneratedIntColumn get anioAcademicoId =>
      _anioAcademicoId ??= _constructAnioAcademicoId();
  GeneratedIntColumn _constructAnioAcademicoId() {
    return GeneratedIntColumn(
      'anio_academico_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idNivelAcademicoMeta =
      const VerificationMeta('idNivelAcademico');
  GeneratedIntColumn _idNivelAcademico;
  @override
  GeneratedIntColumn get idNivelAcademico =>
      _idNivelAcademico ??= _constructIdNivelAcademico();
  GeneratedIntColumn _constructIdNivelAcademico() {
    return GeneratedIntColumn(
      'id_nivel_academico',
      $tableName,
      true,
    );
  }

  final VerificationMeta _cursoIdMeta = const VerificationMeta('cursoId');
  GeneratedIntColumn _cursoId;
  @override
  GeneratedIntColumn get cursoId => _cursoId ??= _constructCursoId();
  GeneratedIntColumn _constructCursoId() {
    return GeneratedIntColumn(
      'curso_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _grupoIdMeta = const VerificationMeta('grupoId');
  GeneratedIntColumn _grupoId;
  @override
  GeneratedIntColumn get grupoId => _grupoId ??= _constructGrupoId();
  GeneratedIntColumn _constructGrupoId() {
    return GeneratedIntColumn(
      'grupo_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _aulaIdMeta = const VerificationMeta('aulaId');
  GeneratedIntColumn _aulaId;
  @override
  GeneratedIntColumn get aulaId => _aulaId ??= _constructAulaId();
  GeneratedIntColumn _constructAulaId() {
    return GeneratedIntColumn(
      'aula_id',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        idContratoDetAcad,
        idContrato,
        cargaCursoId,
        cargaAcademicaId,
        notaPromedio,
        escala,
        anioAcademicoId,
        idNivelAcademico,
        cursoId,
        grupoId,
        aulaId
      ];
  @override
  $DetalleContratoAcadTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'detalle_contrato_acad';
  @override
  final String actualTableName = 'detalle_contrato_acad';
  @override
  VerificationContext validateIntegrity(
      Insertable<DetalleContratoAcadData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_contrato_det_acad')) {
      context.handle(
          _idContratoDetAcadMeta,
          idContratoDetAcad.isAcceptableOrUnknown(
              data['id_contrato_det_acad'], _idContratoDetAcadMeta));
    }
    if (data.containsKey('id_contrato')) {
      context.handle(
          _idContratoMeta,
          idContrato.isAcceptableOrUnknown(
              data['id_contrato'], _idContratoMeta));
    }
    if (data.containsKey('carga_curso_id')) {
      context.handle(
          _cargaCursoIdMeta,
          cargaCursoId.isAcceptableOrUnknown(
              data['carga_curso_id'], _cargaCursoIdMeta));
    }
    if (data.containsKey('carga_academica_id')) {
      context.handle(
          _cargaAcademicaIdMeta,
          cargaAcademicaId.isAcceptableOrUnknown(
              data['carga_academica_id'], _cargaAcademicaIdMeta));
    }
    if (data.containsKey('nota_promedio')) {
      context.handle(
          _notaPromedioMeta,
          notaPromedio.isAcceptableOrUnknown(
              data['nota_promedio'], _notaPromedioMeta));
    }
    if (data.containsKey('escala')) {
      context.handle(_escalaMeta,
          escala.isAcceptableOrUnknown(data['escala'], _escalaMeta));
    }
    if (data.containsKey('anio_academico_id')) {
      context.handle(
          _anioAcademicoIdMeta,
          anioAcademicoId.isAcceptableOrUnknown(
              data['anio_academico_id'], _anioAcademicoIdMeta));
    }
    if (data.containsKey('id_nivel_academico')) {
      context.handle(
          _idNivelAcademicoMeta,
          idNivelAcademico.isAcceptableOrUnknown(
              data['id_nivel_academico'], _idNivelAcademicoMeta));
    }
    if (data.containsKey('curso_id')) {
      context.handle(_cursoIdMeta,
          cursoId.isAcceptableOrUnknown(data['curso_id'], _cursoIdMeta));
    }
    if (data.containsKey('grupo_id')) {
      context.handle(_grupoIdMeta,
          grupoId.isAcceptableOrUnknown(data['grupo_id'], _grupoIdMeta));
    }
    if (data.containsKey('aula_id')) {
      context.handle(_aulaIdMeta,
          aulaId.isAcceptableOrUnknown(data['aula_id'], _aulaIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idContratoDetAcad};
  @override
  DetalleContratoAcadData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return DetalleContratoAcadData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $DetalleContratoAcadTable createAlias(String alias) {
    return $DetalleContratoAcadTable(_db, alias);
  }
}

class ContratoData extends DataClass implements Insertable<ContratoData> {
  final int idContrato;
  final int personaId;
  final int idAnioAcademico;
  final int nroHno;
  final int nivelAcaId;
  final int seccionId;
  final int periodoId;
  final int vigente;
  final int estadoId;
  final int apoderadoId;
  ContratoData(
      {@required this.idContrato,
      this.personaId,
      this.idAnioAcademico,
      this.nroHno,
      this.nivelAcaId,
      this.seccionId,
      this.periodoId,
      this.vigente,
      this.estadoId,
      this.apoderadoId});
  factory ContratoData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    return ContratoData(
      idContrato: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_contrato']),
      personaId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}persona_id']),
      idAnioAcademico: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_anio_academico']),
      nroHno:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}nro_hno']),
      nivelAcaId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}nivel_aca_id']),
      seccionId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}seccion_id']),
      periodoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}periodo_id']),
      vigente:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}vigente']),
      estadoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}estado_id']),
      apoderadoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}apoderado_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || idContrato != null) {
      map['id_contrato'] = Variable<int>(idContrato);
    }
    if (!nullToAbsent || personaId != null) {
      map['persona_id'] = Variable<int>(personaId);
    }
    if (!nullToAbsent || idAnioAcademico != null) {
      map['id_anio_academico'] = Variable<int>(idAnioAcademico);
    }
    if (!nullToAbsent || nroHno != null) {
      map['nro_hno'] = Variable<int>(nroHno);
    }
    if (!nullToAbsent || nivelAcaId != null) {
      map['nivel_aca_id'] = Variable<int>(nivelAcaId);
    }
    if (!nullToAbsent || seccionId != null) {
      map['seccion_id'] = Variable<int>(seccionId);
    }
    if (!nullToAbsent || periodoId != null) {
      map['periodo_id'] = Variable<int>(periodoId);
    }
    if (!nullToAbsent || vigente != null) {
      map['vigente'] = Variable<int>(vigente);
    }
    if (!nullToAbsent || estadoId != null) {
      map['estado_id'] = Variable<int>(estadoId);
    }
    if (!nullToAbsent || apoderadoId != null) {
      map['apoderado_id'] = Variable<int>(apoderadoId);
    }
    return map;
  }

  ContratoCompanion toCompanion(bool nullToAbsent) {
    return ContratoCompanion(
      idContrato: idContrato == null && nullToAbsent
          ? const Value.absent()
          : Value(idContrato),
      personaId: personaId == null && nullToAbsent
          ? const Value.absent()
          : Value(personaId),
      idAnioAcademico: idAnioAcademico == null && nullToAbsent
          ? const Value.absent()
          : Value(idAnioAcademico),
      nroHno:
          nroHno == null && nullToAbsent ? const Value.absent() : Value(nroHno),
      nivelAcaId: nivelAcaId == null && nullToAbsent
          ? const Value.absent()
          : Value(nivelAcaId),
      seccionId: seccionId == null && nullToAbsent
          ? const Value.absent()
          : Value(seccionId),
      periodoId: periodoId == null && nullToAbsent
          ? const Value.absent()
          : Value(periodoId),
      vigente: vigente == null && nullToAbsent
          ? const Value.absent()
          : Value(vigente),
      estadoId: estadoId == null && nullToAbsent
          ? const Value.absent()
          : Value(estadoId),
      apoderadoId: apoderadoId == null && nullToAbsent
          ? const Value.absent()
          : Value(apoderadoId),
    );
  }

  factory ContratoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ContratoData(
      idContrato: serializer.fromJson<int>(json['idContrato']),
      personaId: serializer.fromJson<int>(json['personaId']),
      idAnioAcademico: serializer.fromJson<int>(json['idAnioAcademico']),
      nroHno: serializer.fromJson<int>(json['nroHno']),
      nivelAcaId: serializer.fromJson<int>(json['nivelAcaId']),
      seccionId: serializer.fromJson<int>(json['seccionId']),
      periodoId: serializer.fromJson<int>(json['periodoId']),
      vigente: serializer.fromJson<int>(json['vigente']),
      estadoId: serializer.fromJson<int>(json['estadoId']),
      apoderadoId: serializer.fromJson<int>(json['apoderadoId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idContrato': serializer.toJson<int>(idContrato),
      'personaId': serializer.toJson<int>(personaId),
      'idAnioAcademico': serializer.toJson<int>(idAnioAcademico),
      'nroHno': serializer.toJson<int>(nroHno),
      'nivelAcaId': serializer.toJson<int>(nivelAcaId),
      'seccionId': serializer.toJson<int>(seccionId),
      'periodoId': serializer.toJson<int>(periodoId),
      'vigente': serializer.toJson<int>(vigente),
      'estadoId': serializer.toJson<int>(estadoId),
      'apoderadoId': serializer.toJson<int>(apoderadoId),
    };
  }

  ContratoData copyWith(
          {int idContrato,
          int personaId,
          int idAnioAcademico,
          int nroHno,
          int nivelAcaId,
          int seccionId,
          int periodoId,
          int vigente,
          int estadoId,
          int apoderadoId}) =>
      ContratoData(
        idContrato: idContrato ?? this.idContrato,
        personaId: personaId ?? this.personaId,
        idAnioAcademico: idAnioAcademico ?? this.idAnioAcademico,
        nroHno: nroHno ?? this.nroHno,
        nivelAcaId: nivelAcaId ?? this.nivelAcaId,
        seccionId: seccionId ?? this.seccionId,
        periodoId: periodoId ?? this.periodoId,
        vigente: vigente ?? this.vigente,
        estadoId: estadoId ?? this.estadoId,
        apoderadoId: apoderadoId ?? this.apoderadoId,
      );
  @override
  String toString() {
    return (StringBuffer('ContratoData(')
          ..write('idContrato: $idContrato, ')
          ..write('personaId: $personaId, ')
          ..write('idAnioAcademico: $idAnioAcademico, ')
          ..write('nroHno: $nroHno, ')
          ..write('nivelAcaId: $nivelAcaId, ')
          ..write('seccionId: $seccionId, ')
          ..write('periodoId: $periodoId, ')
          ..write('vigente: $vigente, ')
          ..write('estadoId: $estadoId, ')
          ..write('apoderadoId: $apoderadoId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      idContrato.hashCode,
      $mrjc(
          personaId.hashCode,
          $mrjc(
              idAnioAcademico.hashCode,
              $mrjc(
                  nroHno.hashCode,
                  $mrjc(
                      nivelAcaId.hashCode,
                      $mrjc(
                          seccionId.hashCode,
                          $mrjc(
                              periodoId.hashCode,
                              $mrjc(
                                  vigente.hashCode,
                                  $mrjc(estadoId.hashCode,
                                      apoderadoId.hashCode))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ContratoData &&
          other.idContrato == this.idContrato &&
          other.personaId == this.personaId &&
          other.idAnioAcademico == this.idAnioAcademico &&
          other.nroHno == this.nroHno &&
          other.nivelAcaId == this.nivelAcaId &&
          other.seccionId == this.seccionId &&
          other.periodoId == this.periodoId &&
          other.vigente == this.vigente &&
          other.estadoId == this.estadoId &&
          other.apoderadoId == this.apoderadoId);
}

class ContratoCompanion extends UpdateCompanion<ContratoData> {
  final Value<int> idContrato;
  final Value<int> personaId;
  final Value<int> idAnioAcademico;
  final Value<int> nroHno;
  final Value<int> nivelAcaId;
  final Value<int> seccionId;
  final Value<int> periodoId;
  final Value<int> vigente;
  final Value<int> estadoId;
  final Value<int> apoderadoId;
  const ContratoCompanion({
    this.idContrato = const Value.absent(),
    this.personaId = const Value.absent(),
    this.idAnioAcademico = const Value.absent(),
    this.nroHno = const Value.absent(),
    this.nivelAcaId = const Value.absent(),
    this.seccionId = const Value.absent(),
    this.periodoId = const Value.absent(),
    this.vigente = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.apoderadoId = const Value.absent(),
  });
  ContratoCompanion.insert({
    this.idContrato = const Value.absent(),
    this.personaId = const Value.absent(),
    this.idAnioAcademico = const Value.absent(),
    this.nroHno = const Value.absent(),
    this.nivelAcaId = const Value.absent(),
    this.seccionId = const Value.absent(),
    this.periodoId = const Value.absent(),
    this.vigente = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.apoderadoId = const Value.absent(),
  });
  static Insertable<ContratoData> custom({
    Expression<int> idContrato,
    Expression<int> personaId,
    Expression<int> idAnioAcademico,
    Expression<int> nroHno,
    Expression<int> nivelAcaId,
    Expression<int> seccionId,
    Expression<int> periodoId,
    Expression<int> vigente,
    Expression<int> estadoId,
    Expression<int> apoderadoId,
  }) {
    return RawValuesInsertable({
      if (idContrato != null) 'id_contrato': idContrato,
      if (personaId != null) 'persona_id': personaId,
      if (idAnioAcademico != null) 'id_anio_academico': idAnioAcademico,
      if (nroHno != null) 'nro_hno': nroHno,
      if (nivelAcaId != null) 'nivel_aca_id': nivelAcaId,
      if (seccionId != null) 'seccion_id': seccionId,
      if (periodoId != null) 'periodo_id': periodoId,
      if (vigente != null) 'vigente': vigente,
      if (estadoId != null) 'estado_id': estadoId,
      if (apoderadoId != null) 'apoderado_id': apoderadoId,
    });
  }

  ContratoCompanion copyWith(
      {Value<int> idContrato,
      Value<int> personaId,
      Value<int> idAnioAcademico,
      Value<int> nroHno,
      Value<int> nivelAcaId,
      Value<int> seccionId,
      Value<int> periodoId,
      Value<int> vigente,
      Value<int> estadoId,
      Value<int> apoderadoId}) {
    return ContratoCompanion(
      idContrato: idContrato ?? this.idContrato,
      personaId: personaId ?? this.personaId,
      idAnioAcademico: idAnioAcademico ?? this.idAnioAcademico,
      nroHno: nroHno ?? this.nroHno,
      nivelAcaId: nivelAcaId ?? this.nivelAcaId,
      seccionId: seccionId ?? this.seccionId,
      periodoId: periodoId ?? this.periodoId,
      vigente: vigente ?? this.vigente,
      estadoId: estadoId ?? this.estadoId,
      apoderadoId: apoderadoId ?? this.apoderadoId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idContrato.present) {
      map['id_contrato'] = Variable<int>(idContrato.value);
    }
    if (personaId.present) {
      map['persona_id'] = Variable<int>(personaId.value);
    }
    if (idAnioAcademico.present) {
      map['id_anio_academico'] = Variable<int>(idAnioAcademico.value);
    }
    if (nroHno.present) {
      map['nro_hno'] = Variable<int>(nroHno.value);
    }
    if (nivelAcaId.present) {
      map['nivel_aca_id'] = Variable<int>(nivelAcaId.value);
    }
    if (seccionId.present) {
      map['seccion_id'] = Variable<int>(seccionId.value);
    }
    if (periodoId.present) {
      map['periodo_id'] = Variable<int>(periodoId.value);
    }
    if (vigente.present) {
      map['vigente'] = Variable<int>(vigente.value);
    }
    if (estadoId.present) {
      map['estado_id'] = Variable<int>(estadoId.value);
    }
    if (apoderadoId.present) {
      map['apoderado_id'] = Variable<int>(apoderadoId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ContratoCompanion(')
          ..write('idContrato: $idContrato, ')
          ..write('personaId: $personaId, ')
          ..write('idAnioAcademico: $idAnioAcademico, ')
          ..write('nroHno: $nroHno, ')
          ..write('nivelAcaId: $nivelAcaId, ')
          ..write('seccionId: $seccionId, ')
          ..write('periodoId: $periodoId, ')
          ..write('vigente: $vigente, ')
          ..write('estadoId: $estadoId, ')
          ..write('apoderadoId: $apoderadoId')
          ..write(')'))
        .toString();
  }
}

class $ContratoTable extends Contrato
    with TableInfo<$ContratoTable, ContratoData> {
  final GeneratedDatabase _db;
  final String _alias;
  $ContratoTable(this._db, [this._alias]);
  final VerificationMeta _idContratoMeta = const VerificationMeta('idContrato');
  GeneratedIntColumn _idContrato;
  @override
  GeneratedIntColumn get idContrato => _idContrato ??= _constructIdContrato();
  GeneratedIntColumn _constructIdContrato() {
    return GeneratedIntColumn(
      'id_contrato',
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

  final VerificationMeta _idAnioAcademicoMeta =
      const VerificationMeta('idAnioAcademico');
  GeneratedIntColumn _idAnioAcademico;
  @override
  GeneratedIntColumn get idAnioAcademico =>
      _idAnioAcademico ??= _constructIdAnioAcademico();
  GeneratedIntColumn _constructIdAnioAcademico() {
    return GeneratedIntColumn(
      'id_anio_academico',
      $tableName,
      true,
    );
  }

  final VerificationMeta _nroHnoMeta = const VerificationMeta('nroHno');
  GeneratedIntColumn _nroHno;
  @override
  GeneratedIntColumn get nroHno => _nroHno ??= _constructNroHno();
  GeneratedIntColumn _constructNroHno() {
    return GeneratedIntColumn(
      'nro_hno',
      $tableName,
      true,
    );
  }

  final VerificationMeta _nivelAcaIdMeta = const VerificationMeta('nivelAcaId');
  GeneratedIntColumn _nivelAcaId;
  @override
  GeneratedIntColumn get nivelAcaId => _nivelAcaId ??= _constructNivelAcaId();
  GeneratedIntColumn _constructNivelAcaId() {
    return GeneratedIntColumn(
      'nivel_aca_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _seccionIdMeta = const VerificationMeta('seccionId');
  GeneratedIntColumn _seccionId;
  @override
  GeneratedIntColumn get seccionId => _seccionId ??= _constructSeccionId();
  GeneratedIntColumn _constructSeccionId() {
    return GeneratedIntColumn(
      'seccion_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _periodoIdMeta = const VerificationMeta('periodoId');
  GeneratedIntColumn _periodoId;
  @override
  GeneratedIntColumn get periodoId => _periodoId ??= _constructPeriodoId();
  GeneratedIntColumn _constructPeriodoId() {
    return GeneratedIntColumn(
      'periodo_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _vigenteMeta = const VerificationMeta('vigente');
  GeneratedIntColumn _vigente;
  @override
  GeneratedIntColumn get vigente => _vigente ??= _constructVigente();
  GeneratedIntColumn _constructVigente() {
    return GeneratedIntColumn(
      'vigente',
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

  final VerificationMeta _apoderadoIdMeta =
      const VerificationMeta('apoderadoId');
  GeneratedIntColumn _apoderadoId;
  @override
  GeneratedIntColumn get apoderadoId =>
      _apoderadoId ??= _constructApoderadoId();
  GeneratedIntColumn _constructApoderadoId() {
    return GeneratedIntColumn(
      'apoderado_id',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        idContrato,
        personaId,
        idAnioAcademico,
        nroHno,
        nivelAcaId,
        seccionId,
        periodoId,
        vigente,
        estadoId,
        apoderadoId
      ];
  @override
  $ContratoTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'contrato';
  @override
  final String actualTableName = 'contrato';
  @override
  VerificationContext validateIntegrity(Insertable<ContratoData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_contrato')) {
      context.handle(
          _idContratoMeta,
          idContrato.isAcceptableOrUnknown(
              data['id_contrato'], _idContratoMeta));
    }
    if (data.containsKey('persona_id')) {
      context.handle(_personaIdMeta,
          personaId.isAcceptableOrUnknown(data['persona_id'], _personaIdMeta));
    }
    if (data.containsKey('id_anio_academico')) {
      context.handle(
          _idAnioAcademicoMeta,
          idAnioAcademico.isAcceptableOrUnknown(
              data['id_anio_academico'], _idAnioAcademicoMeta));
    }
    if (data.containsKey('nro_hno')) {
      context.handle(_nroHnoMeta,
          nroHno.isAcceptableOrUnknown(data['nro_hno'], _nroHnoMeta));
    }
    if (data.containsKey('nivel_aca_id')) {
      context.handle(
          _nivelAcaIdMeta,
          nivelAcaId.isAcceptableOrUnknown(
              data['nivel_aca_id'], _nivelAcaIdMeta));
    }
    if (data.containsKey('seccion_id')) {
      context.handle(_seccionIdMeta,
          seccionId.isAcceptableOrUnknown(data['seccion_id'], _seccionIdMeta));
    }
    if (data.containsKey('periodo_id')) {
      context.handle(_periodoIdMeta,
          periodoId.isAcceptableOrUnknown(data['periodo_id'], _periodoIdMeta));
    }
    if (data.containsKey('vigente')) {
      context.handle(_vigenteMeta,
          vigente.isAcceptableOrUnknown(data['vigente'], _vigenteMeta));
    }
    if (data.containsKey('estado_id')) {
      context.handle(_estadoIdMeta,
          estadoId.isAcceptableOrUnknown(data['estado_id'], _estadoIdMeta));
    }
    if (data.containsKey('apoderado_id')) {
      context.handle(
          _apoderadoIdMeta,
          apoderadoId.isAcceptableOrUnknown(
              data['apoderado_id'], _apoderadoIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idContrato};
  @override
  ContratoData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ContratoData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ContratoTable createAlias(String alias) {
    return $ContratoTable(_db, alias);
  }
}

class CalendarioAcademicoData extends DataClass
    implements Insertable<CalendarioAcademicoData> {
  final int calendarioAcademicoId;
  final int programaEduId;
  final int idAnioAcademico;
  final int estadoId;
  CalendarioAcademicoData(
      {@required this.calendarioAcademicoId,
      this.programaEduId,
      this.idAnioAcademico,
      this.estadoId});
  factory CalendarioAcademicoData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    return CalendarioAcademicoData(
      calendarioAcademicoId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}calendario_academico_id']),
      programaEduId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}programa_edu_id']),
      idAnioAcademico: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_anio_academico']),
      estadoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}estado_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || calendarioAcademicoId != null) {
      map['calendario_academico_id'] = Variable<int>(calendarioAcademicoId);
    }
    if (!nullToAbsent || programaEduId != null) {
      map['programa_edu_id'] = Variable<int>(programaEduId);
    }
    if (!nullToAbsent || idAnioAcademico != null) {
      map['id_anio_academico'] = Variable<int>(idAnioAcademico);
    }
    if (!nullToAbsent || estadoId != null) {
      map['estado_id'] = Variable<int>(estadoId);
    }
    return map;
  }

  CalendarioAcademicoCompanion toCompanion(bool nullToAbsent) {
    return CalendarioAcademicoCompanion(
      calendarioAcademicoId: calendarioAcademicoId == null && nullToAbsent
          ? const Value.absent()
          : Value(calendarioAcademicoId),
      programaEduId: programaEduId == null && nullToAbsent
          ? const Value.absent()
          : Value(programaEduId),
      idAnioAcademico: idAnioAcademico == null && nullToAbsent
          ? const Value.absent()
          : Value(idAnioAcademico),
      estadoId: estadoId == null && nullToAbsent
          ? const Value.absent()
          : Value(estadoId),
    );
  }

  factory CalendarioAcademicoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return CalendarioAcademicoData(
      calendarioAcademicoId:
          serializer.fromJson<int>(json['calendarioAcademicoId']),
      programaEduId: serializer.fromJson<int>(json['programaEduId']),
      idAnioAcademico: serializer.fromJson<int>(json['idAnioAcademico']),
      estadoId: serializer.fromJson<int>(json['estadoId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'calendarioAcademicoId': serializer.toJson<int>(calendarioAcademicoId),
      'programaEduId': serializer.toJson<int>(programaEduId),
      'idAnioAcademico': serializer.toJson<int>(idAnioAcademico),
      'estadoId': serializer.toJson<int>(estadoId),
    };
  }

  CalendarioAcademicoData copyWith(
          {int calendarioAcademicoId,
          int programaEduId,
          int idAnioAcademico,
          int estadoId}) =>
      CalendarioAcademicoData(
        calendarioAcademicoId:
            calendarioAcademicoId ?? this.calendarioAcademicoId,
        programaEduId: programaEduId ?? this.programaEduId,
        idAnioAcademico: idAnioAcademico ?? this.idAnioAcademico,
        estadoId: estadoId ?? this.estadoId,
      );
  @override
  String toString() {
    return (StringBuffer('CalendarioAcademicoData(')
          ..write('calendarioAcademicoId: $calendarioAcademicoId, ')
          ..write('programaEduId: $programaEduId, ')
          ..write('idAnioAcademico: $idAnioAcademico, ')
          ..write('estadoId: $estadoId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      calendarioAcademicoId.hashCode,
      $mrjc(programaEduId.hashCode,
          $mrjc(idAnioAcademico.hashCode, estadoId.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is CalendarioAcademicoData &&
          other.calendarioAcademicoId == this.calendarioAcademicoId &&
          other.programaEduId == this.programaEduId &&
          other.idAnioAcademico == this.idAnioAcademico &&
          other.estadoId == this.estadoId);
}

class CalendarioAcademicoCompanion
    extends UpdateCompanion<CalendarioAcademicoData> {
  final Value<int> calendarioAcademicoId;
  final Value<int> programaEduId;
  final Value<int> idAnioAcademico;
  final Value<int> estadoId;
  const CalendarioAcademicoCompanion({
    this.calendarioAcademicoId = const Value.absent(),
    this.programaEduId = const Value.absent(),
    this.idAnioAcademico = const Value.absent(),
    this.estadoId = const Value.absent(),
  });
  CalendarioAcademicoCompanion.insert({
    this.calendarioAcademicoId = const Value.absent(),
    this.programaEduId = const Value.absent(),
    this.idAnioAcademico = const Value.absent(),
    this.estadoId = const Value.absent(),
  });
  static Insertable<CalendarioAcademicoData> custom({
    Expression<int> calendarioAcademicoId,
    Expression<int> programaEduId,
    Expression<int> idAnioAcademico,
    Expression<int> estadoId,
  }) {
    return RawValuesInsertable({
      if (calendarioAcademicoId != null)
        'calendario_academico_id': calendarioAcademicoId,
      if (programaEduId != null) 'programa_edu_id': programaEduId,
      if (idAnioAcademico != null) 'id_anio_academico': idAnioAcademico,
      if (estadoId != null) 'estado_id': estadoId,
    });
  }

  CalendarioAcademicoCompanion copyWith(
      {Value<int> calendarioAcademicoId,
      Value<int> programaEduId,
      Value<int> idAnioAcademico,
      Value<int> estadoId}) {
    return CalendarioAcademicoCompanion(
      calendarioAcademicoId:
          calendarioAcademicoId ?? this.calendarioAcademicoId,
      programaEduId: programaEduId ?? this.programaEduId,
      idAnioAcademico: idAnioAcademico ?? this.idAnioAcademico,
      estadoId: estadoId ?? this.estadoId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (calendarioAcademicoId.present) {
      map['calendario_academico_id'] =
          Variable<int>(calendarioAcademicoId.value);
    }
    if (programaEduId.present) {
      map['programa_edu_id'] = Variable<int>(programaEduId.value);
    }
    if (idAnioAcademico.present) {
      map['id_anio_academico'] = Variable<int>(idAnioAcademico.value);
    }
    if (estadoId.present) {
      map['estado_id'] = Variable<int>(estadoId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CalendarioAcademicoCompanion(')
          ..write('calendarioAcademicoId: $calendarioAcademicoId, ')
          ..write('programaEduId: $programaEduId, ')
          ..write('idAnioAcademico: $idAnioAcademico, ')
          ..write('estadoId: $estadoId')
          ..write(')'))
        .toString();
  }
}

class $CalendarioAcademicoTable extends CalendarioAcademico
    with TableInfo<$CalendarioAcademicoTable, CalendarioAcademicoData> {
  final GeneratedDatabase _db;
  final String _alias;
  $CalendarioAcademicoTable(this._db, [this._alias]);
  final VerificationMeta _calendarioAcademicoIdMeta =
      const VerificationMeta('calendarioAcademicoId');
  GeneratedIntColumn _calendarioAcademicoId;
  @override
  GeneratedIntColumn get calendarioAcademicoId =>
      _calendarioAcademicoId ??= _constructCalendarioAcademicoId();
  GeneratedIntColumn _constructCalendarioAcademicoId() {
    return GeneratedIntColumn(
      'calendario_academico_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _programaEduIdMeta =
      const VerificationMeta('programaEduId');
  GeneratedIntColumn _programaEduId;
  @override
  GeneratedIntColumn get programaEduId =>
      _programaEduId ??= _constructProgramaEduId();
  GeneratedIntColumn _constructProgramaEduId() {
    return GeneratedIntColumn(
      'programa_edu_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idAnioAcademicoMeta =
      const VerificationMeta('idAnioAcademico');
  GeneratedIntColumn _idAnioAcademico;
  @override
  GeneratedIntColumn get idAnioAcademico =>
      _idAnioAcademico ??= _constructIdAnioAcademico();
  GeneratedIntColumn _constructIdAnioAcademico() {
    return GeneratedIntColumn(
      'id_anio_academico',
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

  @override
  List<GeneratedColumn> get $columns =>
      [calendarioAcademicoId, programaEduId, idAnioAcademico, estadoId];
  @override
  $CalendarioAcademicoTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'calendario_academico';
  @override
  final String actualTableName = 'calendario_academico';
  @override
  VerificationContext validateIntegrity(
      Insertable<CalendarioAcademicoData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('calendario_academico_id')) {
      context.handle(
          _calendarioAcademicoIdMeta,
          calendarioAcademicoId.isAcceptableOrUnknown(
              data['calendario_academico_id'], _calendarioAcademicoIdMeta));
    }
    if (data.containsKey('programa_edu_id')) {
      context.handle(
          _programaEduIdMeta,
          programaEduId.isAcceptableOrUnknown(
              data['programa_edu_id'], _programaEduIdMeta));
    }
    if (data.containsKey('id_anio_academico')) {
      context.handle(
          _idAnioAcademicoMeta,
          idAnioAcademico.isAcceptableOrUnknown(
              data['id_anio_academico'], _idAnioAcademicoMeta));
    }
    if (data.containsKey('estado_id')) {
      context.handle(_estadoIdMeta,
          estadoId.isAcceptableOrUnknown(data['estado_id'], _estadoIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {calendarioAcademicoId};
  @override
  CalendarioAcademicoData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return CalendarioAcademicoData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $CalendarioAcademicoTable createAlias(String alias) {
    return $CalendarioAcademicoTable(_db, alias);
  }
}

class CalendarioPeriodoData extends DataClass
    implements Insertable<CalendarioPeriodoData> {
  final int calendarioPeriodoId;
  final DateTime fechaInicio;
  final DateTime fechaFin;
  final int calendarioAcademicoId;
  final int tipoId;
  final int estadoId;
  final int diazPlazo;
  CalendarioPeriodoData(
      {@required this.calendarioPeriodoId,
      this.fechaInicio,
      this.fechaFin,
      this.calendarioAcademicoId,
      this.tipoId,
      this.estadoId,
      this.diazPlazo});
  factory CalendarioPeriodoData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return CalendarioPeriodoData(
      calendarioPeriodoId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}calendario_periodo_id']),
      fechaInicio: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}fecha_inicio']),
      fechaFin: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}fecha_fin']),
      calendarioAcademicoId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}calendario_academico_id']),
      tipoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}tipo_id']),
      estadoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}estado_id']),
      diazPlazo:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}diaz_plazo']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || calendarioPeriodoId != null) {
      map['calendario_periodo_id'] = Variable<int>(calendarioPeriodoId);
    }
    if (!nullToAbsent || fechaInicio != null) {
      map['fecha_inicio'] = Variable<DateTime>(fechaInicio);
    }
    if (!nullToAbsent || fechaFin != null) {
      map['fecha_fin'] = Variable<DateTime>(fechaFin);
    }
    if (!nullToAbsent || calendarioAcademicoId != null) {
      map['calendario_academico_id'] = Variable<int>(calendarioAcademicoId);
    }
    if (!nullToAbsent || tipoId != null) {
      map['tipo_id'] = Variable<int>(tipoId);
    }
    if (!nullToAbsent || estadoId != null) {
      map['estado_id'] = Variable<int>(estadoId);
    }
    if (!nullToAbsent || diazPlazo != null) {
      map['diaz_plazo'] = Variable<int>(diazPlazo);
    }
    return map;
  }

  CalendarioPeriodoCompanion toCompanion(bool nullToAbsent) {
    return CalendarioPeriodoCompanion(
      calendarioPeriodoId: calendarioPeriodoId == null && nullToAbsent
          ? const Value.absent()
          : Value(calendarioPeriodoId),
      fechaInicio: fechaInicio == null && nullToAbsent
          ? const Value.absent()
          : Value(fechaInicio),
      fechaFin: fechaFin == null && nullToAbsent
          ? const Value.absent()
          : Value(fechaFin),
      calendarioAcademicoId: calendarioAcademicoId == null && nullToAbsent
          ? const Value.absent()
          : Value(calendarioAcademicoId),
      tipoId:
          tipoId == null && nullToAbsent ? const Value.absent() : Value(tipoId),
      estadoId: estadoId == null && nullToAbsent
          ? const Value.absent()
          : Value(estadoId),
      diazPlazo: diazPlazo == null && nullToAbsent
          ? const Value.absent()
          : Value(diazPlazo),
    );
  }

  factory CalendarioPeriodoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return CalendarioPeriodoData(
      calendarioPeriodoId:
          serializer.fromJson<int>(json['calendarioPeriodoId']),
      fechaInicio: serializer.fromJson<DateTime>(json['fechaInicio']),
      fechaFin: serializer.fromJson<DateTime>(json['fechaFin']),
      calendarioAcademicoId:
          serializer.fromJson<int>(json['calendarioAcademicoId']),
      tipoId: serializer.fromJson<int>(json['tipoId']),
      estadoId: serializer.fromJson<int>(json['estadoId']),
      diazPlazo: serializer.fromJson<int>(json['diazPlazo']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'calendarioPeriodoId': serializer.toJson<int>(calendarioPeriodoId),
      'fechaInicio': serializer.toJson<DateTime>(fechaInicio),
      'fechaFin': serializer.toJson<DateTime>(fechaFin),
      'calendarioAcademicoId': serializer.toJson<int>(calendarioAcademicoId),
      'tipoId': serializer.toJson<int>(tipoId),
      'estadoId': serializer.toJson<int>(estadoId),
      'diazPlazo': serializer.toJson<int>(diazPlazo),
    };
  }

  CalendarioPeriodoData copyWith(
          {int calendarioPeriodoId,
          DateTime fechaInicio,
          DateTime fechaFin,
          int calendarioAcademicoId,
          int tipoId,
          int estadoId,
          int diazPlazo}) =>
      CalendarioPeriodoData(
        calendarioPeriodoId: calendarioPeriodoId ?? this.calendarioPeriodoId,
        fechaInicio: fechaInicio ?? this.fechaInicio,
        fechaFin: fechaFin ?? this.fechaFin,
        calendarioAcademicoId:
            calendarioAcademicoId ?? this.calendarioAcademicoId,
        tipoId: tipoId ?? this.tipoId,
        estadoId: estadoId ?? this.estadoId,
        diazPlazo: diazPlazo ?? this.diazPlazo,
      );
  @override
  String toString() {
    return (StringBuffer('CalendarioPeriodoData(')
          ..write('calendarioPeriodoId: $calendarioPeriodoId, ')
          ..write('fechaInicio: $fechaInicio, ')
          ..write('fechaFin: $fechaFin, ')
          ..write('calendarioAcademicoId: $calendarioAcademicoId, ')
          ..write('tipoId: $tipoId, ')
          ..write('estadoId: $estadoId, ')
          ..write('diazPlazo: $diazPlazo')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      calendarioPeriodoId.hashCode,
      $mrjc(
          fechaInicio.hashCode,
          $mrjc(
              fechaFin.hashCode,
              $mrjc(
                  calendarioAcademicoId.hashCode,
                  $mrjc(tipoId.hashCode,
                      $mrjc(estadoId.hashCode, diazPlazo.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is CalendarioPeriodoData &&
          other.calendarioPeriodoId == this.calendarioPeriodoId &&
          other.fechaInicio == this.fechaInicio &&
          other.fechaFin == this.fechaFin &&
          other.calendarioAcademicoId == this.calendarioAcademicoId &&
          other.tipoId == this.tipoId &&
          other.estadoId == this.estadoId &&
          other.diazPlazo == this.diazPlazo);
}

class CalendarioPeriodoCompanion
    extends UpdateCompanion<CalendarioPeriodoData> {
  final Value<int> calendarioPeriodoId;
  final Value<DateTime> fechaInicio;
  final Value<DateTime> fechaFin;
  final Value<int> calendarioAcademicoId;
  final Value<int> tipoId;
  final Value<int> estadoId;
  final Value<int> diazPlazo;
  const CalendarioPeriodoCompanion({
    this.calendarioPeriodoId = const Value.absent(),
    this.fechaInicio = const Value.absent(),
    this.fechaFin = const Value.absent(),
    this.calendarioAcademicoId = const Value.absent(),
    this.tipoId = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.diazPlazo = const Value.absent(),
  });
  CalendarioPeriodoCompanion.insert({
    this.calendarioPeriodoId = const Value.absent(),
    this.fechaInicio = const Value.absent(),
    this.fechaFin = const Value.absent(),
    this.calendarioAcademicoId = const Value.absent(),
    this.tipoId = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.diazPlazo = const Value.absent(),
  });
  static Insertable<CalendarioPeriodoData> custom({
    Expression<int> calendarioPeriodoId,
    Expression<DateTime> fechaInicio,
    Expression<DateTime> fechaFin,
    Expression<int> calendarioAcademicoId,
    Expression<int> tipoId,
    Expression<int> estadoId,
    Expression<int> diazPlazo,
  }) {
    return RawValuesInsertable({
      if (calendarioPeriodoId != null)
        'calendario_periodo_id': calendarioPeriodoId,
      if (fechaInicio != null) 'fecha_inicio': fechaInicio,
      if (fechaFin != null) 'fecha_fin': fechaFin,
      if (calendarioAcademicoId != null)
        'calendario_academico_id': calendarioAcademicoId,
      if (tipoId != null) 'tipo_id': tipoId,
      if (estadoId != null) 'estado_id': estadoId,
      if (diazPlazo != null) 'diaz_plazo': diazPlazo,
    });
  }

  CalendarioPeriodoCompanion copyWith(
      {Value<int> calendarioPeriodoId,
      Value<DateTime> fechaInicio,
      Value<DateTime> fechaFin,
      Value<int> calendarioAcademicoId,
      Value<int> tipoId,
      Value<int> estadoId,
      Value<int> diazPlazo}) {
    return CalendarioPeriodoCompanion(
      calendarioPeriodoId: calendarioPeriodoId ?? this.calendarioPeriodoId,
      fechaInicio: fechaInicio ?? this.fechaInicio,
      fechaFin: fechaFin ?? this.fechaFin,
      calendarioAcademicoId:
          calendarioAcademicoId ?? this.calendarioAcademicoId,
      tipoId: tipoId ?? this.tipoId,
      estadoId: estadoId ?? this.estadoId,
      diazPlazo: diazPlazo ?? this.diazPlazo,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (calendarioPeriodoId.present) {
      map['calendario_periodo_id'] = Variable<int>(calendarioPeriodoId.value);
    }
    if (fechaInicio.present) {
      map['fecha_inicio'] = Variable<DateTime>(fechaInicio.value);
    }
    if (fechaFin.present) {
      map['fecha_fin'] = Variable<DateTime>(fechaFin.value);
    }
    if (calendarioAcademicoId.present) {
      map['calendario_academico_id'] =
          Variable<int>(calendarioAcademicoId.value);
    }
    if (tipoId.present) {
      map['tipo_id'] = Variable<int>(tipoId.value);
    }
    if (estadoId.present) {
      map['estado_id'] = Variable<int>(estadoId.value);
    }
    if (diazPlazo.present) {
      map['diaz_plazo'] = Variable<int>(diazPlazo.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CalendarioPeriodoCompanion(')
          ..write('calendarioPeriodoId: $calendarioPeriodoId, ')
          ..write('fechaInicio: $fechaInicio, ')
          ..write('fechaFin: $fechaFin, ')
          ..write('calendarioAcademicoId: $calendarioAcademicoId, ')
          ..write('tipoId: $tipoId, ')
          ..write('estadoId: $estadoId, ')
          ..write('diazPlazo: $diazPlazo')
          ..write(')'))
        .toString();
  }
}

class $CalendarioPeriodoTable extends CalendarioPeriodo
    with TableInfo<$CalendarioPeriodoTable, CalendarioPeriodoData> {
  final GeneratedDatabase _db;
  final String _alias;
  $CalendarioPeriodoTable(this._db, [this._alias]);
  final VerificationMeta _calendarioPeriodoIdMeta =
      const VerificationMeta('calendarioPeriodoId');
  GeneratedIntColumn _calendarioPeriodoId;
  @override
  GeneratedIntColumn get calendarioPeriodoId =>
      _calendarioPeriodoId ??= _constructCalendarioPeriodoId();
  GeneratedIntColumn _constructCalendarioPeriodoId() {
    return GeneratedIntColumn(
      'calendario_periodo_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _fechaInicioMeta =
      const VerificationMeta('fechaInicio');
  GeneratedDateTimeColumn _fechaInicio;
  @override
  GeneratedDateTimeColumn get fechaInicio =>
      _fechaInicio ??= _constructFechaInicio();
  GeneratedDateTimeColumn _constructFechaInicio() {
    return GeneratedDateTimeColumn(
      'fecha_inicio',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fechaFinMeta = const VerificationMeta('fechaFin');
  GeneratedDateTimeColumn _fechaFin;
  @override
  GeneratedDateTimeColumn get fechaFin => _fechaFin ??= _constructFechaFin();
  GeneratedDateTimeColumn _constructFechaFin() {
    return GeneratedDateTimeColumn(
      'fecha_fin',
      $tableName,
      true,
    );
  }

  final VerificationMeta _calendarioAcademicoIdMeta =
      const VerificationMeta('calendarioAcademicoId');
  GeneratedIntColumn _calendarioAcademicoId;
  @override
  GeneratedIntColumn get calendarioAcademicoId =>
      _calendarioAcademicoId ??= _constructCalendarioAcademicoId();
  GeneratedIntColumn _constructCalendarioAcademicoId() {
    return GeneratedIntColumn(
      'calendario_academico_id',
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

  final VerificationMeta _diazPlazoMeta = const VerificationMeta('diazPlazo');
  GeneratedIntColumn _diazPlazo;
  @override
  GeneratedIntColumn get diazPlazo => _diazPlazo ??= _constructDiazPlazo();
  GeneratedIntColumn _constructDiazPlazo() {
    return GeneratedIntColumn(
      'diaz_plazo',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        calendarioPeriodoId,
        fechaInicio,
        fechaFin,
        calendarioAcademicoId,
        tipoId,
        estadoId,
        diazPlazo
      ];
  @override
  $CalendarioPeriodoTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'calendario_periodo';
  @override
  final String actualTableName = 'calendario_periodo';
  @override
  VerificationContext validateIntegrity(
      Insertable<CalendarioPeriodoData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('calendario_periodo_id')) {
      context.handle(
          _calendarioPeriodoIdMeta,
          calendarioPeriodoId.isAcceptableOrUnknown(
              data['calendario_periodo_id'], _calendarioPeriodoIdMeta));
    }
    if (data.containsKey('fecha_inicio')) {
      context.handle(
          _fechaInicioMeta,
          fechaInicio.isAcceptableOrUnknown(
              data['fecha_inicio'], _fechaInicioMeta));
    }
    if (data.containsKey('fecha_fin')) {
      context.handle(_fechaFinMeta,
          fechaFin.isAcceptableOrUnknown(data['fecha_fin'], _fechaFinMeta));
    }
    if (data.containsKey('calendario_academico_id')) {
      context.handle(
          _calendarioAcademicoIdMeta,
          calendarioAcademicoId.isAcceptableOrUnknown(
              data['calendario_academico_id'], _calendarioAcademicoIdMeta));
    }
    if (data.containsKey('tipo_id')) {
      context.handle(_tipoIdMeta,
          tipoId.isAcceptableOrUnknown(data['tipo_id'], _tipoIdMeta));
    }
    if (data.containsKey('estado_id')) {
      context.handle(_estadoIdMeta,
          estadoId.isAcceptableOrUnknown(data['estado_id'], _estadoIdMeta));
    }
    if (data.containsKey('diaz_plazo')) {
      context.handle(_diazPlazoMeta,
          diazPlazo.isAcceptableOrUnknown(data['diaz_plazo'], _diazPlazoMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {calendarioPeriodoId};
  @override
  CalendarioPeriodoData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return CalendarioPeriodoData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $CalendarioPeriodoTable createAlias(String alias) {
    return $CalendarioPeriodoTable(_db, alias);
  }
}

class Tipo extends DataClass implements Insertable<Tipo> {
  final int tipoId;
  final String objeto;
  final String concepto;
  final String nombre;
  final String codigo;
  final int parentId;
  Tipo(
      {@required this.tipoId,
      this.objeto,
      this.concepto,
      this.nombre,
      this.codigo,
      this.parentId});
  factory Tipo.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Tipo(
      tipoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}tipo_id']),
      objeto:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}objeto']),
      concepto: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}concepto']),
      nombre:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}nombre']),
      codigo:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}codigo']),
      parentId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}parent_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || tipoId != null) {
      map['tipo_id'] = Variable<int>(tipoId);
    }
    if (!nullToAbsent || objeto != null) {
      map['objeto'] = Variable<String>(objeto);
    }
    if (!nullToAbsent || concepto != null) {
      map['concepto'] = Variable<String>(concepto);
    }
    if (!nullToAbsent || nombre != null) {
      map['nombre'] = Variable<String>(nombre);
    }
    if (!nullToAbsent || codigo != null) {
      map['codigo'] = Variable<String>(codigo);
    }
    if (!nullToAbsent || parentId != null) {
      map['parent_id'] = Variable<int>(parentId);
    }
    return map;
  }

  TiposCompanion toCompanion(bool nullToAbsent) {
    return TiposCompanion(
      tipoId:
          tipoId == null && nullToAbsent ? const Value.absent() : Value(tipoId),
      objeto:
          objeto == null && nullToAbsent ? const Value.absent() : Value(objeto),
      concepto: concepto == null && nullToAbsent
          ? const Value.absent()
          : Value(concepto),
      nombre:
          nombre == null && nullToAbsent ? const Value.absent() : Value(nombre),
      codigo:
          codigo == null && nullToAbsent ? const Value.absent() : Value(codigo),
      parentId: parentId == null && nullToAbsent
          ? const Value.absent()
          : Value(parentId),
    );
  }

  factory Tipo.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Tipo(
      tipoId: serializer.fromJson<int>(json['tipoId']),
      objeto: serializer.fromJson<String>(json['objeto']),
      concepto: serializer.fromJson<String>(json['concepto']),
      nombre: serializer.fromJson<String>(json['nombre']),
      codigo: serializer.fromJson<String>(json['codigo']),
      parentId: serializer.fromJson<int>(json['parentId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'tipoId': serializer.toJson<int>(tipoId),
      'objeto': serializer.toJson<String>(objeto),
      'concepto': serializer.toJson<String>(concepto),
      'nombre': serializer.toJson<String>(nombre),
      'codigo': serializer.toJson<String>(codigo),
      'parentId': serializer.toJson<int>(parentId),
    };
  }

  Tipo copyWith(
          {int tipoId,
          String objeto,
          String concepto,
          String nombre,
          String codigo,
          int parentId}) =>
      Tipo(
        tipoId: tipoId ?? this.tipoId,
        objeto: objeto ?? this.objeto,
        concepto: concepto ?? this.concepto,
        nombre: nombre ?? this.nombre,
        codigo: codigo ?? this.codigo,
        parentId: parentId ?? this.parentId,
      );
  @override
  String toString() {
    return (StringBuffer('Tipo(')
          ..write('tipoId: $tipoId, ')
          ..write('objeto: $objeto, ')
          ..write('concepto: $concepto, ')
          ..write('nombre: $nombre, ')
          ..write('codigo: $codigo, ')
          ..write('parentId: $parentId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      tipoId.hashCode,
      $mrjc(
          objeto.hashCode,
          $mrjc(
              concepto.hashCode,
              $mrjc(nombre.hashCode,
                  $mrjc(codigo.hashCode, parentId.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Tipo &&
          other.tipoId == this.tipoId &&
          other.objeto == this.objeto &&
          other.concepto == this.concepto &&
          other.nombre == this.nombre &&
          other.codigo == this.codigo &&
          other.parentId == this.parentId);
}

class TiposCompanion extends UpdateCompanion<Tipo> {
  final Value<int> tipoId;
  final Value<String> objeto;
  final Value<String> concepto;
  final Value<String> nombre;
  final Value<String> codigo;
  final Value<int> parentId;
  const TiposCompanion({
    this.tipoId = const Value.absent(),
    this.objeto = const Value.absent(),
    this.concepto = const Value.absent(),
    this.nombre = const Value.absent(),
    this.codigo = const Value.absent(),
    this.parentId = const Value.absent(),
  });
  TiposCompanion.insert({
    this.tipoId = const Value.absent(),
    this.objeto = const Value.absent(),
    this.concepto = const Value.absent(),
    this.nombre = const Value.absent(),
    this.codigo = const Value.absent(),
    this.parentId = const Value.absent(),
  });
  static Insertable<Tipo> custom({
    Expression<int> tipoId,
    Expression<String> objeto,
    Expression<String> concepto,
    Expression<String> nombre,
    Expression<String> codigo,
    Expression<int> parentId,
  }) {
    return RawValuesInsertable({
      if (tipoId != null) 'tipo_id': tipoId,
      if (objeto != null) 'objeto': objeto,
      if (concepto != null) 'concepto': concepto,
      if (nombre != null) 'nombre': nombre,
      if (codigo != null) 'codigo': codigo,
      if (parentId != null) 'parent_id': parentId,
    });
  }

  TiposCompanion copyWith(
      {Value<int> tipoId,
      Value<String> objeto,
      Value<String> concepto,
      Value<String> nombre,
      Value<String> codigo,
      Value<int> parentId}) {
    return TiposCompanion(
      tipoId: tipoId ?? this.tipoId,
      objeto: objeto ?? this.objeto,
      concepto: concepto ?? this.concepto,
      nombre: nombre ?? this.nombre,
      codigo: codigo ?? this.codigo,
      parentId: parentId ?? this.parentId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (tipoId.present) {
      map['tipo_id'] = Variable<int>(tipoId.value);
    }
    if (objeto.present) {
      map['objeto'] = Variable<String>(objeto.value);
    }
    if (concepto.present) {
      map['concepto'] = Variable<String>(concepto.value);
    }
    if (nombre.present) {
      map['nombre'] = Variable<String>(nombre.value);
    }
    if (codigo.present) {
      map['codigo'] = Variable<String>(codigo.value);
    }
    if (parentId.present) {
      map['parent_id'] = Variable<int>(parentId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TiposCompanion(')
          ..write('tipoId: $tipoId, ')
          ..write('objeto: $objeto, ')
          ..write('concepto: $concepto, ')
          ..write('nombre: $nombre, ')
          ..write('codigo: $codigo, ')
          ..write('parentId: $parentId')
          ..write(')'))
        .toString();
  }
}

class $TiposTable extends Tipos with TableInfo<$TiposTable, Tipo> {
  final GeneratedDatabase _db;
  final String _alias;
  $TiposTable(this._db, [this._alias]);
  final VerificationMeta _tipoIdMeta = const VerificationMeta('tipoId');
  GeneratedIntColumn _tipoId;
  @override
  GeneratedIntColumn get tipoId => _tipoId ??= _constructTipoId();
  GeneratedIntColumn _constructTipoId() {
    return GeneratedIntColumn(
      'tipo_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _objetoMeta = const VerificationMeta('objeto');
  GeneratedTextColumn _objeto;
  @override
  GeneratedTextColumn get objeto => _objeto ??= _constructObjeto();
  GeneratedTextColumn _constructObjeto() {
    return GeneratedTextColumn(
      'objeto',
      $tableName,
      true,
    );
  }

  final VerificationMeta _conceptoMeta = const VerificationMeta('concepto');
  GeneratedTextColumn _concepto;
  @override
  GeneratedTextColumn get concepto => _concepto ??= _constructConcepto();
  GeneratedTextColumn _constructConcepto() {
    return GeneratedTextColumn(
      'concepto',
      $tableName,
      true,
    );
  }

  final VerificationMeta _nombreMeta = const VerificationMeta('nombre');
  GeneratedTextColumn _nombre;
  @override
  GeneratedTextColumn get nombre => _nombre ??= _constructNombre();
  GeneratedTextColumn _constructNombre() {
    return GeneratedTextColumn(
      'nombre',
      $tableName,
      true,
    );
  }

  final VerificationMeta _codigoMeta = const VerificationMeta('codigo');
  GeneratedTextColumn _codigo;
  @override
  GeneratedTextColumn get codigo => _codigo ??= _constructCodigo();
  GeneratedTextColumn _constructCodigo() {
    return GeneratedTextColumn(
      'codigo',
      $tableName,
      true,
    );
  }

  final VerificationMeta _parentIdMeta = const VerificationMeta('parentId');
  GeneratedIntColumn _parentId;
  @override
  GeneratedIntColumn get parentId => _parentId ??= _constructParentId();
  GeneratedIntColumn _constructParentId() {
    return GeneratedIntColumn(
      'parent_id',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [tipoId, objeto, concepto, nombre, codigo, parentId];
  @override
  $TiposTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'tipos';
  @override
  final String actualTableName = 'tipos';
  @override
  VerificationContext validateIntegrity(Insertable<Tipo> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('tipo_id')) {
      context.handle(_tipoIdMeta,
          tipoId.isAcceptableOrUnknown(data['tipo_id'], _tipoIdMeta));
    }
    if (data.containsKey('objeto')) {
      context.handle(_objetoMeta,
          objeto.isAcceptableOrUnknown(data['objeto'], _objetoMeta));
    }
    if (data.containsKey('concepto')) {
      context.handle(_conceptoMeta,
          concepto.isAcceptableOrUnknown(data['concepto'], _conceptoMeta));
    }
    if (data.containsKey('nombre')) {
      context.handle(_nombreMeta,
          nombre.isAcceptableOrUnknown(data['nombre'], _nombreMeta));
    }
    if (data.containsKey('codigo')) {
      context.handle(_codigoMeta,
          codigo.isAcceptableOrUnknown(data['codigo'], _codigoMeta));
    }
    if (data.containsKey('parent_id')) {
      context.handle(_parentIdMeta,
          parentId.isAcceptableOrUnknown(data['parent_id'], _parentIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {tipoId};
  @override
  Tipo map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Tipo.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $TiposTable createAlias(String alias) {
    return $TiposTable(_db, alias);
  }
}

class AreasBoletaData extends DataClass implements Insertable<AreasBoletaData> {
  final int rubroEvalResultadoId;
  final String nombre;
  final int tipoConceptoId;
  final int totalHt;
  final int silaboEventoId;
  final String competencia;
  final int tipoNotaId;
  final int tipoFormulaId;
  final int competenciaId;
  final int tipoCompetenciaId;
  final int calendarioPeriodoId;
  final int anioAcademicoId;
  final int programaEducativoId;
  final int periodoId;
  final int seccionId;
  AreasBoletaData(
      {@required this.rubroEvalResultadoId,
      this.nombre,
      this.tipoConceptoId,
      this.totalHt,
      this.silaboEventoId,
      this.competencia,
      this.tipoNotaId,
      this.tipoFormulaId,
      this.competenciaId,
      this.tipoCompetenciaId,
      this.calendarioPeriodoId,
      this.anioAcademicoId,
      this.programaEducativoId,
      this.periodoId,
      this.seccionId});
  factory AreasBoletaData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return AreasBoletaData(
      rubroEvalResultadoId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}rubro_eval_resultado_id']),
      nombre:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}nombre']),
      tipoConceptoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}tipo_concepto_id']),
      totalHt:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}total_ht']),
      silaboEventoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}silabo_evento_id']),
      competencia: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}competencia']),
      tipoNotaId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}tipo_nota_id']),
      tipoFormulaId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}tipo_formula_id']),
      competenciaId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}competencia_id']),
      tipoCompetenciaId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}tipo_competencia_id']),
      calendarioPeriodoId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}calendario_periodo_id']),
      anioAcademicoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}anio_academico_id']),
      programaEducativoId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}programa_educativo_id']),
      periodoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}periodo_id']),
      seccionId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}seccion_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || rubroEvalResultadoId != null) {
      map['rubro_eval_resultado_id'] = Variable<int>(rubroEvalResultadoId);
    }
    if (!nullToAbsent || nombre != null) {
      map['nombre'] = Variable<String>(nombre);
    }
    if (!nullToAbsent || tipoConceptoId != null) {
      map['tipo_concepto_id'] = Variable<int>(tipoConceptoId);
    }
    if (!nullToAbsent || totalHt != null) {
      map['total_ht'] = Variable<int>(totalHt);
    }
    if (!nullToAbsent || silaboEventoId != null) {
      map['silabo_evento_id'] = Variable<int>(silaboEventoId);
    }
    if (!nullToAbsent || competencia != null) {
      map['competencia'] = Variable<String>(competencia);
    }
    if (!nullToAbsent || tipoNotaId != null) {
      map['tipo_nota_id'] = Variable<int>(tipoNotaId);
    }
    if (!nullToAbsent || tipoFormulaId != null) {
      map['tipo_formula_id'] = Variable<int>(tipoFormulaId);
    }
    if (!nullToAbsent || competenciaId != null) {
      map['competencia_id'] = Variable<int>(competenciaId);
    }
    if (!nullToAbsent || tipoCompetenciaId != null) {
      map['tipo_competencia_id'] = Variable<int>(tipoCompetenciaId);
    }
    if (!nullToAbsent || calendarioPeriodoId != null) {
      map['calendario_periodo_id'] = Variable<int>(calendarioPeriodoId);
    }
    if (!nullToAbsent || anioAcademicoId != null) {
      map['anio_academico_id'] = Variable<int>(anioAcademicoId);
    }
    if (!nullToAbsent || programaEducativoId != null) {
      map['programa_educativo_id'] = Variable<int>(programaEducativoId);
    }
    if (!nullToAbsent || periodoId != null) {
      map['periodo_id'] = Variable<int>(periodoId);
    }
    if (!nullToAbsent || seccionId != null) {
      map['seccion_id'] = Variable<int>(seccionId);
    }
    return map;
  }

  AreasBoletaCompanion toCompanion(bool nullToAbsent) {
    return AreasBoletaCompanion(
      rubroEvalResultadoId: rubroEvalResultadoId == null && nullToAbsent
          ? const Value.absent()
          : Value(rubroEvalResultadoId),
      nombre:
          nombre == null && nullToAbsent ? const Value.absent() : Value(nombre),
      tipoConceptoId: tipoConceptoId == null && nullToAbsent
          ? const Value.absent()
          : Value(tipoConceptoId),
      totalHt: totalHt == null && nullToAbsent
          ? const Value.absent()
          : Value(totalHt),
      silaboEventoId: silaboEventoId == null && nullToAbsent
          ? const Value.absent()
          : Value(silaboEventoId),
      competencia: competencia == null && nullToAbsent
          ? const Value.absent()
          : Value(competencia),
      tipoNotaId: tipoNotaId == null && nullToAbsent
          ? const Value.absent()
          : Value(tipoNotaId),
      tipoFormulaId: tipoFormulaId == null && nullToAbsent
          ? const Value.absent()
          : Value(tipoFormulaId),
      competenciaId: competenciaId == null && nullToAbsent
          ? const Value.absent()
          : Value(competenciaId),
      tipoCompetenciaId: tipoCompetenciaId == null && nullToAbsent
          ? const Value.absent()
          : Value(tipoCompetenciaId),
      calendarioPeriodoId: calendarioPeriodoId == null && nullToAbsent
          ? const Value.absent()
          : Value(calendarioPeriodoId),
      anioAcademicoId: anioAcademicoId == null && nullToAbsent
          ? const Value.absent()
          : Value(anioAcademicoId),
      programaEducativoId: programaEducativoId == null && nullToAbsent
          ? const Value.absent()
          : Value(programaEducativoId),
      periodoId: periodoId == null && nullToAbsent
          ? const Value.absent()
          : Value(periodoId),
      seccionId: seccionId == null && nullToAbsent
          ? const Value.absent()
          : Value(seccionId),
    );
  }

  factory AreasBoletaData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return AreasBoletaData(
      rubroEvalResultadoId:
          serializer.fromJson<int>(json['rubroEvalResultadoId']),
      nombre: serializer.fromJson<String>(json['nombre']),
      tipoConceptoId: serializer.fromJson<int>(json['tipoConceptoId']),
      totalHt: serializer.fromJson<int>(json['totalHt']),
      silaboEventoId: serializer.fromJson<int>(json['silaboEventoId']),
      competencia: serializer.fromJson<String>(json['competencia']),
      tipoNotaId: serializer.fromJson<int>(json['tipoNotaId']),
      tipoFormulaId: serializer.fromJson<int>(json['tipoFormulaId']),
      competenciaId: serializer.fromJson<int>(json['competenciaId']),
      tipoCompetenciaId: serializer.fromJson<int>(json['tipoCompetenciaId']),
      calendarioPeriodoId:
          serializer.fromJson<int>(json['calendarioPeriodoId']),
      anioAcademicoId: serializer.fromJson<int>(json['anioAcademicoId']),
      programaEducativoId:
          serializer.fromJson<int>(json['programaEducativoId']),
      periodoId: serializer.fromJson<int>(json['periodoId']),
      seccionId: serializer.fromJson<int>(json['seccionId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'rubroEvalResultadoId': serializer.toJson<int>(rubroEvalResultadoId),
      'nombre': serializer.toJson<String>(nombre),
      'tipoConceptoId': serializer.toJson<int>(tipoConceptoId),
      'totalHt': serializer.toJson<int>(totalHt),
      'silaboEventoId': serializer.toJson<int>(silaboEventoId),
      'competencia': serializer.toJson<String>(competencia),
      'tipoNotaId': serializer.toJson<int>(tipoNotaId),
      'tipoFormulaId': serializer.toJson<int>(tipoFormulaId),
      'competenciaId': serializer.toJson<int>(competenciaId),
      'tipoCompetenciaId': serializer.toJson<int>(tipoCompetenciaId),
      'calendarioPeriodoId': serializer.toJson<int>(calendarioPeriodoId),
      'anioAcademicoId': serializer.toJson<int>(anioAcademicoId),
      'programaEducativoId': serializer.toJson<int>(programaEducativoId),
      'periodoId': serializer.toJson<int>(periodoId),
      'seccionId': serializer.toJson<int>(seccionId),
    };
  }

  AreasBoletaData copyWith(
          {int rubroEvalResultadoId,
          String nombre,
          int tipoConceptoId,
          int totalHt,
          int silaboEventoId,
          String competencia,
          int tipoNotaId,
          int tipoFormulaId,
          int competenciaId,
          int tipoCompetenciaId,
          int calendarioPeriodoId,
          int anioAcademicoId,
          int programaEducativoId,
          int periodoId,
          int seccionId}) =>
      AreasBoletaData(
        rubroEvalResultadoId: rubroEvalResultadoId ?? this.rubroEvalResultadoId,
        nombre: nombre ?? this.nombre,
        tipoConceptoId: tipoConceptoId ?? this.tipoConceptoId,
        totalHt: totalHt ?? this.totalHt,
        silaboEventoId: silaboEventoId ?? this.silaboEventoId,
        competencia: competencia ?? this.competencia,
        tipoNotaId: tipoNotaId ?? this.tipoNotaId,
        tipoFormulaId: tipoFormulaId ?? this.tipoFormulaId,
        competenciaId: competenciaId ?? this.competenciaId,
        tipoCompetenciaId: tipoCompetenciaId ?? this.tipoCompetenciaId,
        calendarioPeriodoId: calendarioPeriodoId ?? this.calendarioPeriodoId,
        anioAcademicoId: anioAcademicoId ?? this.anioAcademicoId,
        programaEducativoId: programaEducativoId ?? this.programaEducativoId,
        periodoId: periodoId ?? this.periodoId,
        seccionId: seccionId ?? this.seccionId,
      );
  @override
  String toString() {
    return (StringBuffer('AreasBoletaData(')
          ..write('rubroEvalResultadoId: $rubroEvalResultadoId, ')
          ..write('nombre: $nombre, ')
          ..write('tipoConceptoId: $tipoConceptoId, ')
          ..write('totalHt: $totalHt, ')
          ..write('silaboEventoId: $silaboEventoId, ')
          ..write('competencia: $competencia, ')
          ..write('tipoNotaId: $tipoNotaId, ')
          ..write('tipoFormulaId: $tipoFormulaId, ')
          ..write('competenciaId: $competenciaId, ')
          ..write('tipoCompetenciaId: $tipoCompetenciaId, ')
          ..write('calendarioPeriodoId: $calendarioPeriodoId, ')
          ..write('anioAcademicoId: $anioAcademicoId, ')
          ..write('programaEducativoId: $programaEducativoId, ')
          ..write('periodoId: $periodoId, ')
          ..write('seccionId: $seccionId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      rubroEvalResultadoId.hashCode,
      $mrjc(
          nombre.hashCode,
          $mrjc(
              tipoConceptoId.hashCode,
              $mrjc(
                  totalHt.hashCode,
                  $mrjc(
                      silaboEventoId.hashCode,
                      $mrjc(
                          competencia.hashCode,
                          $mrjc(
                              tipoNotaId.hashCode,
                              $mrjc(
                                  tipoFormulaId.hashCode,
                                  $mrjc(
                                      competenciaId.hashCode,
                                      $mrjc(
                                          tipoCompetenciaId.hashCode,
                                          $mrjc(
                                              calendarioPeriodoId.hashCode,
                                              $mrjc(
                                                  anioAcademicoId.hashCode,
                                                  $mrjc(
                                                      programaEducativoId
                                                          .hashCode,
                                                      $mrjc(
                                                          periodoId.hashCode,
                                                          seccionId
                                                              .hashCode)))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is AreasBoletaData &&
          other.rubroEvalResultadoId == this.rubroEvalResultadoId &&
          other.nombre == this.nombre &&
          other.tipoConceptoId == this.tipoConceptoId &&
          other.totalHt == this.totalHt &&
          other.silaboEventoId == this.silaboEventoId &&
          other.competencia == this.competencia &&
          other.tipoNotaId == this.tipoNotaId &&
          other.tipoFormulaId == this.tipoFormulaId &&
          other.competenciaId == this.competenciaId &&
          other.tipoCompetenciaId == this.tipoCompetenciaId &&
          other.calendarioPeriodoId == this.calendarioPeriodoId &&
          other.anioAcademicoId == this.anioAcademicoId &&
          other.programaEducativoId == this.programaEducativoId &&
          other.periodoId == this.periodoId &&
          other.seccionId == this.seccionId);
}

class AreasBoletaCompanion extends UpdateCompanion<AreasBoletaData> {
  final Value<int> rubroEvalResultadoId;
  final Value<String> nombre;
  final Value<int> tipoConceptoId;
  final Value<int> totalHt;
  final Value<int> silaboEventoId;
  final Value<String> competencia;
  final Value<int> tipoNotaId;
  final Value<int> tipoFormulaId;
  final Value<int> competenciaId;
  final Value<int> tipoCompetenciaId;
  final Value<int> calendarioPeriodoId;
  final Value<int> anioAcademicoId;
  final Value<int> programaEducativoId;
  final Value<int> periodoId;
  final Value<int> seccionId;
  const AreasBoletaCompanion({
    this.rubroEvalResultadoId = const Value.absent(),
    this.nombre = const Value.absent(),
    this.tipoConceptoId = const Value.absent(),
    this.totalHt = const Value.absent(),
    this.silaboEventoId = const Value.absent(),
    this.competencia = const Value.absent(),
    this.tipoNotaId = const Value.absent(),
    this.tipoFormulaId = const Value.absent(),
    this.competenciaId = const Value.absent(),
    this.tipoCompetenciaId = const Value.absent(),
    this.calendarioPeriodoId = const Value.absent(),
    this.anioAcademicoId = const Value.absent(),
    this.programaEducativoId = const Value.absent(),
    this.periodoId = const Value.absent(),
    this.seccionId = const Value.absent(),
  });
  AreasBoletaCompanion.insert({
    this.rubroEvalResultadoId = const Value.absent(),
    this.nombre = const Value.absent(),
    this.tipoConceptoId = const Value.absent(),
    this.totalHt = const Value.absent(),
    this.silaboEventoId = const Value.absent(),
    this.competencia = const Value.absent(),
    this.tipoNotaId = const Value.absent(),
    this.tipoFormulaId = const Value.absent(),
    this.competenciaId = const Value.absent(),
    this.tipoCompetenciaId = const Value.absent(),
    this.calendarioPeriodoId = const Value.absent(),
    this.anioAcademicoId = const Value.absent(),
    this.programaEducativoId = const Value.absent(),
    this.periodoId = const Value.absent(),
    this.seccionId = const Value.absent(),
  });
  static Insertable<AreasBoletaData> custom({
    Expression<int> rubroEvalResultadoId,
    Expression<String> nombre,
    Expression<int> tipoConceptoId,
    Expression<int> totalHt,
    Expression<int> silaboEventoId,
    Expression<String> competencia,
    Expression<int> tipoNotaId,
    Expression<int> tipoFormulaId,
    Expression<int> competenciaId,
    Expression<int> tipoCompetenciaId,
    Expression<int> calendarioPeriodoId,
    Expression<int> anioAcademicoId,
    Expression<int> programaEducativoId,
    Expression<int> periodoId,
    Expression<int> seccionId,
  }) {
    return RawValuesInsertable({
      if (rubroEvalResultadoId != null)
        'rubro_eval_resultado_id': rubroEvalResultadoId,
      if (nombre != null) 'nombre': nombre,
      if (tipoConceptoId != null) 'tipo_concepto_id': tipoConceptoId,
      if (totalHt != null) 'total_ht': totalHt,
      if (silaboEventoId != null) 'silabo_evento_id': silaboEventoId,
      if (competencia != null) 'competencia': competencia,
      if (tipoNotaId != null) 'tipo_nota_id': tipoNotaId,
      if (tipoFormulaId != null) 'tipo_formula_id': tipoFormulaId,
      if (competenciaId != null) 'competencia_id': competenciaId,
      if (tipoCompetenciaId != null) 'tipo_competencia_id': tipoCompetenciaId,
      if (calendarioPeriodoId != null)
        'calendario_periodo_id': calendarioPeriodoId,
      if (anioAcademicoId != null) 'anio_academico_id': anioAcademicoId,
      if (programaEducativoId != null)
        'programa_educativo_id': programaEducativoId,
      if (periodoId != null) 'periodo_id': periodoId,
      if (seccionId != null) 'seccion_id': seccionId,
    });
  }

  AreasBoletaCompanion copyWith(
      {Value<int> rubroEvalResultadoId,
      Value<String> nombre,
      Value<int> tipoConceptoId,
      Value<int> totalHt,
      Value<int> silaboEventoId,
      Value<String> competencia,
      Value<int> tipoNotaId,
      Value<int> tipoFormulaId,
      Value<int> competenciaId,
      Value<int> tipoCompetenciaId,
      Value<int> calendarioPeriodoId,
      Value<int> anioAcademicoId,
      Value<int> programaEducativoId,
      Value<int> periodoId,
      Value<int> seccionId}) {
    return AreasBoletaCompanion(
      rubroEvalResultadoId: rubroEvalResultadoId ?? this.rubroEvalResultadoId,
      nombre: nombre ?? this.nombre,
      tipoConceptoId: tipoConceptoId ?? this.tipoConceptoId,
      totalHt: totalHt ?? this.totalHt,
      silaboEventoId: silaboEventoId ?? this.silaboEventoId,
      competencia: competencia ?? this.competencia,
      tipoNotaId: tipoNotaId ?? this.tipoNotaId,
      tipoFormulaId: tipoFormulaId ?? this.tipoFormulaId,
      competenciaId: competenciaId ?? this.competenciaId,
      tipoCompetenciaId: tipoCompetenciaId ?? this.tipoCompetenciaId,
      calendarioPeriodoId: calendarioPeriodoId ?? this.calendarioPeriodoId,
      anioAcademicoId: anioAcademicoId ?? this.anioAcademicoId,
      programaEducativoId: programaEducativoId ?? this.programaEducativoId,
      periodoId: periodoId ?? this.periodoId,
      seccionId: seccionId ?? this.seccionId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (rubroEvalResultadoId.present) {
      map['rubro_eval_resultado_id'] =
          Variable<int>(rubroEvalResultadoId.value);
    }
    if (nombre.present) {
      map['nombre'] = Variable<String>(nombre.value);
    }
    if (tipoConceptoId.present) {
      map['tipo_concepto_id'] = Variable<int>(tipoConceptoId.value);
    }
    if (totalHt.present) {
      map['total_ht'] = Variable<int>(totalHt.value);
    }
    if (silaboEventoId.present) {
      map['silabo_evento_id'] = Variable<int>(silaboEventoId.value);
    }
    if (competencia.present) {
      map['competencia'] = Variable<String>(competencia.value);
    }
    if (tipoNotaId.present) {
      map['tipo_nota_id'] = Variable<int>(tipoNotaId.value);
    }
    if (tipoFormulaId.present) {
      map['tipo_formula_id'] = Variable<int>(tipoFormulaId.value);
    }
    if (competenciaId.present) {
      map['competencia_id'] = Variable<int>(competenciaId.value);
    }
    if (tipoCompetenciaId.present) {
      map['tipo_competencia_id'] = Variable<int>(tipoCompetenciaId.value);
    }
    if (calendarioPeriodoId.present) {
      map['calendario_periodo_id'] = Variable<int>(calendarioPeriodoId.value);
    }
    if (anioAcademicoId.present) {
      map['anio_academico_id'] = Variable<int>(anioAcademicoId.value);
    }
    if (programaEducativoId.present) {
      map['programa_educativo_id'] = Variable<int>(programaEducativoId.value);
    }
    if (periodoId.present) {
      map['periodo_id'] = Variable<int>(periodoId.value);
    }
    if (seccionId.present) {
      map['seccion_id'] = Variable<int>(seccionId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AreasBoletaCompanion(')
          ..write('rubroEvalResultadoId: $rubroEvalResultadoId, ')
          ..write('nombre: $nombre, ')
          ..write('tipoConceptoId: $tipoConceptoId, ')
          ..write('totalHt: $totalHt, ')
          ..write('silaboEventoId: $silaboEventoId, ')
          ..write('competencia: $competencia, ')
          ..write('tipoNotaId: $tipoNotaId, ')
          ..write('tipoFormulaId: $tipoFormulaId, ')
          ..write('competenciaId: $competenciaId, ')
          ..write('tipoCompetenciaId: $tipoCompetenciaId, ')
          ..write('calendarioPeriodoId: $calendarioPeriodoId, ')
          ..write('anioAcademicoId: $anioAcademicoId, ')
          ..write('programaEducativoId: $programaEducativoId, ')
          ..write('periodoId: $periodoId, ')
          ..write('seccionId: $seccionId')
          ..write(')'))
        .toString();
  }
}

class $AreasBoletaTable extends AreasBoleta
    with TableInfo<$AreasBoletaTable, AreasBoletaData> {
  final GeneratedDatabase _db;
  final String _alias;
  $AreasBoletaTable(this._db, [this._alias]);
  final VerificationMeta _rubroEvalResultadoIdMeta =
      const VerificationMeta('rubroEvalResultadoId');
  GeneratedIntColumn _rubroEvalResultadoId;
  @override
  GeneratedIntColumn get rubroEvalResultadoId =>
      _rubroEvalResultadoId ??= _constructRubroEvalResultadoId();
  GeneratedIntColumn _constructRubroEvalResultadoId() {
    return GeneratedIntColumn(
      'rubro_eval_resultado_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nombreMeta = const VerificationMeta('nombre');
  GeneratedTextColumn _nombre;
  @override
  GeneratedTextColumn get nombre => _nombre ??= _constructNombre();
  GeneratedTextColumn _constructNombre() {
    return GeneratedTextColumn(
      'nombre',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tipoConceptoIdMeta =
      const VerificationMeta('tipoConceptoId');
  GeneratedIntColumn _tipoConceptoId;
  @override
  GeneratedIntColumn get tipoConceptoId =>
      _tipoConceptoId ??= _constructTipoConceptoId();
  GeneratedIntColumn _constructTipoConceptoId() {
    return GeneratedIntColumn(
      'tipo_concepto_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _totalHtMeta = const VerificationMeta('totalHt');
  GeneratedIntColumn _totalHt;
  @override
  GeneratedIntColumn get totalHt => _totalHt ??= _constructTotalHt();
  GeneratedIntColumn _constructTotalHt() {
    return GeneratedIntColumn(
      'total_ht',
      $tableName,
      true,
    );
  }

  final VerificationMeta _silaboEventoIdMeta =
      const VerificationMeta('silaboEventoId');
  GeneratedIntColumn _silaboEventoId;
  @override
  GeneratedIntColumn get silaboEventoId =>
      _silaboEventoId ??= _constructSilaboEventoId();
  GeneratedIntColumn _constructSilaboEventoId() {
    return GeneratedIntColumn(
      'silabo_evento_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _competenciaMeta =
      const VerificationMeta('competencia');
  GeneratedTextColumn _competencia;
  @override
  GeneratedTextColumn get competencia =>
      _competencia ??= _constructCompetencia();
  GeneratedTextColumn _constructCompetencia() {
    return GeneratedTextColumn(
      'competencia',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tipoNotaIdMeta = const VerificationMeta('tipoNotaId');
  GeneratedIntColumn _tipoNotaId;
  @override
  GeneratedIntColumn get tipoNotaId => _tipoNotaId ??= _constructTipoNotaId();
  GeneratedIntColumn _constructTipoNotaId() {
    return GeneratedIntColumn(
      'tipo_nota_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tipoFormulaIdMeta =
      const VerificationMeta('tipoFormulaId');
  GeneratedIntColumn _tipoFormulaId;
  @override
  GeneratedIntColumn get tipoFormulaId =>
      _tipoFormulaId ??= _constructTipoFormulaId();
  GeneratedIntColumn _constructTipoFormulaId() {
    return GeneratedIntColumn(
      'tipo_formula_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _competenciaIdMeta =
      const VerificationMeta('competenciaId');
  GeneratedIntColumn _competenciaId;
  @override
  GeneratedIntColumn get competenciaId =>
      _competenciaId ??= _constructCompetenciaId();
  GeneratedIntColumn _constructCompetenciaId() {
    return GeneratedIntColumn(
      'competencia_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tipoCompetenciaIdMeta =
      const VerificationMeta('tipoCompetenciaId');
  GeneratedIntColumn _tipoCompetenciaId;
  @override
  GeneratedIntColumn get tipoCompetenciaId =>
      _tipoCompetenciaId ??= _constructTipoCompetenciaId();
  GeneratedIntColumn _constructTipoCompetenciaId() {
    return GeneratedIntColumn(
      'tipo_competencia_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _calendarioPeriodoIdMeta =
      const VerificationMeta('calendarioPeriodoId');
  GeneratedIntColumn _calendarioPeriodoId;
  @override
  GeneratedIntColumn get calendarioPeriodoId =>
      _calendarioPeriodoId ??= _constructCalendarioPeriodoId();
  GeneratedIntColumn _constructCalendarioPeriodoId() {
    return GeneratedIntColumn(
      'calendario_periodo_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _anioAcademicoIdMeta =
      const VerificationMeta('anioAcademicoId');
  GeneratedIntColumn _anioAcademicoId;
  @override
  GeneratedIntColumn get anioAcademicoId =>
      _anioAcademicoId ??= _constructAnioAcademicoId();
  GeneratedIntColumn _constructAnioAcademicoId() {
    return GeneratedIntColumn(
      'anio_academico_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _programaEducativoIdMeta =
      const VerificationMeta('programaEducativoId');
  GeneratedIntColumn _programaEducativoId;
  @override
  GeneratedIntColumn get programaEducativoId =>
      _programaEducativoId ??= _constructProgramaEducativoId();
  GeneratedIntColumn _constructProgramaEducativoId() {
    return GeneratedIntColumn(
      'programa_educativo_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _periodoIdMeta = const VerificationMeta('periodoId');
  GeneratedIntColumn _periodoId;
  @override
  GeneratedIntColumn get periodoId => _periodoId ??= _constructPeriodoId();
  GeneratedIntColumn _constructPeriodoId() {
    return GeneratedIntColumn(
      'periodo_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _seccionIdMeta = const VerificationMeta('seccionId');
  GeneratedIntColumn _seccionId;
  @override
  GeneratedIntColumn get seccionId => _seccionId ??= _constructSeccionId();
  GeneratedIntColumn _constructSeccionId() {
    return GeneratedIntColumn(
      'seccion_id',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        rubroEvalResultadoId,
        nombre,
        tipoConceptoId,
        totalHt,
        silaboEventoId,
        competencia,
        tipoNotaId,
        tipoFormulaId,
        competenciaId,
        tipoCompetenciaId,
        calendarioPeriodoId,
        anioAcademicoId,
        programaEducativoId,
        periodoId,
        seccionId
      ];
  @override
  $AreasBoletaTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'areas_boleta';
  @override
  final String actualTableName = 'areas_boleta';
  @override
  VerificationContext validateIntegrity(Insertable<AreasBoletaData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('rubro_eval_resultado_id')) {
      context.handle(
          _rubroEvalResultadoIdMeta,
          rubroEvalResultadoId.isAcceptableOrUnknown(
              data['rubro_eval_resultado_id'], _rubroEvalResultadoIdMeta));
    }
    if (data.containsKey('nombre')) {
      context.handle(_nombreMeta,
          nombre.isAcceptableOrUnknown(data['nombre'], _nombreMeta));
    }
    if (data.containsKey('tipo_concepto_id')) {
      context.handle(
          _tipoConceptoIdMeta,
          tipoConceptoId.isAcceptableOrUnknown(
              data['tipo_concepto_id'], _tipoConceptoIdMeta));
    }
    if (data.containsKey('total_ht')) {
      context.handle(_totalHtMeta,
          totalHt.isAcceptableOrUnknown(data['total_ht'], _totalHtMeta));
    }
    if (data.containsKey('silabo_evento_id')) {
      context.handle(
          _silaboEventoIdMeta,
          silaboEventoId.isAcceptableOrUnknown(
              data['silabo_evento_id'], _silaboEventoIdMeta));
    }
    if (data.containsKey('competencia')) {
      context.handle(
          _competenciaMeta,
          competencia.isAcceptableOrUnknown(
              data['competencia'], _competenciaMeta));
    }
    if (data.containsKey('tipo_nota_id')) {
      context.handle(
          _tipoNotaIdMeta,
          tipoNotaId.isAcceptableOrUnknown(
              data['tipo_nota_id'], _tipoNotaIdMeta));
    }
    if (data.containsKey('tipo_formula_id')) {
      context.handle(
          _tipoFormulaIdMeta,
          tipoFormulaId.isAcceptableOrUnknown(
              data['tipo_formula_id'], _tipoFormulaIdMeta));
    }
    if (data.containsKey('competencia_id')) {
      context.handle(
          _competenciaIdMeta,
          competenciaId.isAcceptableOrUnknown(
              data['competencia_id'], _competenciaIdMeta));
    }
    if (data.containsKey('tipo_competencia_id')) {
      context.handle(
          _tipoCompetenciaIdMeta,
          tipoCompetenciaId.isAcceptableOrUnknown(
              data['tipo_competencia_id'], _tipoCompetenciaIdMeta));
    }
    if (data.containsKey('calendario_periodo_id')) {
      context.handle(
          _calendarioPeriodoIdMeta,
          calendarioPeriodoId.isAcceptableOrUnknown(
              data['calendario_periodo_id'], _calendarioPeriodoIdMeta));
    }
    if (data.containsKey('anio_academico_id')) {
      context.handle(
          _anioAcademicoIdMeta,
          anioAcademicoId.isAcceptableOrUnknown(
              data['anio_academico_id'], _anioAcademicoIdMeta));
    }
    if (data.containsKey('programa_educativo_id')) {
      context.handle(
          _programaEducativoIdMeta,
          programaEducativoId.isAcceptableOrUnknown(
              data['programa_educativo_id'], _programaEducativoIdMeta));
    }
    if (data.containsKey('periodo_id')) {
      context.handle(_periodoIdMeta,
          periodoId.isAcceptableOrUnknown(data['periodo_id'], _periodoIdMeta));
    }
    if (data.containsKey('seccion_id')) {
      context.handle(_seccionIdMeta,
          seccionId.isAcceptableOrUnknown(data['seccion_id'], _seccionIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {rubroEvalResultadoId};
  @override
  AreasBoletaData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return AreasBoletaData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $AreasBoletaTable createAlias(String alias) {
    return $AreasBoletaTable(_db, alias);
  }
}

class NotasCalendarioBoletaData extends DataClass
    implements Insertable<NotasCalendarioBoletaData> {
  final int evaluacionResultadoId;
  final int rubroEvalResultadoId;
  final int alumnoId;
  final int silaboEventoId;
  final String nota;
  final double peso;
  final String valorTipoNotaId;
  final String tituloNota;
  final int tipoNotaId;
  final int calendarioPeriodoId;
  final String color;
  NotasCalendarioBoletaData(
      {@required this.evaluacionResultadoId,
      this.rubroEvalResultadoId,
      this.alumnoId,
      this.silaboEventoId,
      this.nota,
      this.peso,
      this.valorTipoNotaId,
      this.tituloNota,
      this.tipoNotaId,
      this.calendarioPeriodoId,
      this.color});
  factory NotasCalendarioBoletaData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final doubleType = db.typeSystem.forDartType<double>();
    return NotasCalendarioBoletaData(
      evaluacionResultadoId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}evaluacion_resultado_id']),
      rubroEvalResultadoId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}rubro_eval_resultado_id']),
      alumnoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}alumno_id']),
      silaboEventoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}silabo_evento_id']),
      nota: stringType.mapFromDatabaseResponse(data['${effectivePrefix}nota']),
      peso: doubleType.mapFromDatabaseResponse(data['${effectivePrefix}peso']),
      valorTipoNotaId: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}valor_tipo_nota_id']),
      tituloNota: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}titulo_nota']),
      tipoNotaId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}tipo_nota_id']),
      calendarioPeriodoId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}calendario_periodo_id']),
      color:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}color']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || evaluacionResultadoId != null) {
      map['evaluacion_resultado_id'] = Variable<int>(evaluacionResultadoId);
    }
    if (!nullToAbsent || rubroEvalResultadoId != null) {
      map['rubro_eval_resultado_id'] = Variable<int>(rubroEvalResultadoId);
    }
    if (!nullToAbsent || alumnoId != null) {
      map['alumno_id'] = Variable<int>(alumnoId);
    }
    if (!nullToAbsent || silaboEventoId != null) {
      map['silabo_evento_id'] = Variable<int>(silaboEventoId);
    }
    if (!nullToAbsent || nota != null) {
      map['nota'] = Variable<String>(nota);
    }
    if (!nullToAbsent || peso != null) {
      map['peso'] = Variable<double>(peso);
    }
    if (!nullToAbsent || valorTipoNotaId != null) {
      map['valor_tipo_nota_id'] = Variable<String>(valorTipoNotaId);
    }
    if (!nullToAbsent || tituloNota != null) {
      map['titulo_nota'] = Variable<String>(tituloNota);
    }
    if (!nullToAbsent || tipoNotaId != null) {
      map['tipo_nota_id'] = Variable<int>(tipoNotaId);
    }
    if (!nullToAbsent || calendarioPeriodoId != null) {
      map['calendario_periodo_id'] = Variable<int>(calendarioPeriodoId);
    }
    if (!nullToAbsent || color != null) {
      map['color'] = Variable<String>(color);
    }
    return map;
  }

  NotasCalendarioBoletaCompanion toCompanion(bool nullToAbsent) {
    return NotasCalendarioBoletaCompanion(
      evaluacionResultadoId: evaluacionResultadoId == null && nullToAbsent
          ? const Value.absent()
          : Value(evaluacionResultadoId),
      rubroEvalResultadoId: rubroEvalResultadoId == null && nullToAbsent
          ? const Value.absent()
          : Value(rubroEvalResultadoId),
      alumnoId: alumnoId == null && nullToAbsent
          ? const Value.absent()
          : Value(alumnoId),
      silaboEventoId: silaboEventoId == null && nullToAbsent
          ? const Value.absent()
          : Value(silaboEventoId),
      nota: nota == null && nullToAbsent ? const Value.absent() : Value(nota),
      peso: peso == null && nullToAbsent ? const Value.absent() : Value(peso),
      valorTipoNotaId: valorTipoNotaId == null && nullToAbsent
          ? const Value.absent()
          : Value(valorTipoNotaId),
      tituloNota: tituloNota == null && nullToAbsent
          ? const Value.absent()
          : Value(tituloNota),
      tipoNotaId: tipoNotaId == null && nullToAbsent
          ? const Value.absent()
          : Value(tipoNotaId),
      calendarioPeriodoId: calendarioPeriodoId == null && nullToAbsent
          ? const Value.absent()
          : Value(calendarioPeriodoId),
      color:
          color == null && nullToAbsent ? const Value.absent() : Value(color),
    );
  }

  factory NotasCalendarioBoletaData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return NotasCalendarioBoletaData(
      evaluacionResultadoId:
          serializer.fromJson<int>(json['evaluacionResultadoId']),
      rubroEvalResultadoId:
          serializer.fromJson<int>(json['rubroEvalResultadoId']),
      alumnoId: serializer.fromJson<int>(json['alumnoId']),
      silaboEventoId: serializer.fromJson<int>(json['silaboEventoId']),
      nota: serializer.fromJson<String>(json['nota']),
      peso: serializer.fromJson<double>(json['peso']),
      valorTipoNotaId: serializer.fromJson<String>(json['valorTipoNotaId']),
      tituloNota: serializer.fromJson<String>(json['tituloNota']),
      tipoNotaId: serializer.fromJson<int>(json['tipoNotaId']),
      calendarioPeriodoId:
          serializer.fromJson<int>(json['calendarioPeriodoId']),
      color: serializer.fromJson<String>(json['color']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'evaluacionResultadoId': serializer.toJson<int>(evaluacionResultadoId),
      'rubroEvalResultadoId': serializer.toJson<int>(rubroEvalResultadoId),
      'alumnoId': serializer.toJson<int>(alumnoId),
      'silaboEventoId': serializer.toJson<int>(silaboEventoId),
      'nota': serializer.toJson<String>(nota),
      'peso': serializer.toJson<double>(peso),
      'valorTipoNotaId': serializer.toJson<String>(valorTipoNotaId),
      'tituloNota': serializer.toJson<String>(tituloNota),
      'tipoNotaId': serializer.toJson<int>(tipoNotaId),
      'calendarioPeriodoId': serializer.toJson<int>(calendarioPeriodoId),
      'color': serializer.toJson<String>(color),
    };
  }

  NotasCalendarioBoletaData copyWith(
          {int evaluacionResultadoId,
          int rubroEvalResultadoId,
          int alumnoId,
          int silaboEventoId,
          String nota,
          double peso,
          String valorTipoNotaId,
          String tituloNota,
          int tipoNotaId,
          int calendarioPeriodoId,
          String color}) =>
      NotasCalendarioBoletaData(
        evaluacionResultadoId:
            evaluacionResultadoId ?? this.evaluacionResultadoId,
        rubroEvalResultadoId: rubroEvalResultadoId ?? this.rubroEvalResultadoId,
        alumnoId: alumnoId ?? this.alumnoId,
        silaboEventoId: silaboEventoId ?? this.silaboEventoId,
        nota: nota ?? this.nota,
        peso: peso ?? this.peso,
        valorTipoNotaId: valorTipoNotaId ?? this.valorTipoNotaId,
        tituloNota: tituloNota ?? this.tituloNota,
        tipoNotaId: tipoNotaId ?? this.tipoNotaId,
        calendarioPeriodoId: calendarioPeriodoId ?? this.calendarioPeriodoId,
        color: color ?? this.color,
      );
  @override
  String toString() {
    return (StringBuffer('NotasCalendarioBoletaData(')
          ..write('evaluacionResultadoId: $evaluacionResultadoId, ')
          ..write('rubroEvalResultadoId: $rubroEvalResultadoId, ')
          ..write('alumnoId: $alumnoId, ')
          ..write('silaboEventoId: $silaboEventoId, ')
          ..write('nota: $nota, ')
          ..write('peso: $peso, ')
          ..write('valorTipoNotaId: $valorTipoNotaId, ')
          ..write('tituloNota: $tituloNota, ')
          ..write('tipoNotaId: $tipoNotaId, ')
          ..write('calendarioPeriodoId: $calendarioPeriodoId, ')
          ..write('color: $color')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      evaluacionResultadoId.hashCode,
      $mrjc(
          rubroEvalResultadoId.hashCode,
          $mrjc(
              alumnoId.hashCode,
              $mrjc(
                  silaboEventoId.hashCode,
                  $mrjc(
                      nota.hashCode,
                      $mrjc(
                          peso.hashCode,
                          $mrjc(
                              valorTipoNotaId.hashCode,
                              $mrjc(
                                  tituloNota.hashCode,
                                  $mrjc(
                                      tipoNotaId.hashCode,
                                      $mrjc(calendarioPeriodoId.hashCode,
                                          color.hashCode)))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is NotasCalendarioBoletaData &&
          other.evaluacionResultadoId == this.evaluacionResultadoId &&
          other.rubroEvalResultadoId == this.rubroEvalResultadoId &&
          other.alumnoId == this.alumnoId &&
          other.silaboEventoId == this.silaboEventoId &&
          other.nota == this.nota &&
          other.peso == this.peso &&
          other.valorTipoNotaId == this.valorTipoNotaId &&
          other.tituloNota == this.tituloNota &&
          other.tipoNotaId == this.tipoNotaId &&
          other.calendarioPeriodoId == this.calendarioPeriodoId &&
          other.color == this.color);
}

class NotasCalendarioBoletaCompanion
    extends UpdateCompanion<NotasCalendarioBoletaData> {
  final Value<int> evaluacionResultadoId;
  final Value<int> rubroEvalResultadoId;
  final Value<int> alumnoId;
  final Value<int> silaboEventoId;
  final Value<String> nota;
  final Value<double> peso;
  final Value<String> valorTipoNotaId;
  final Value<String> tituloNota;
  final Value<int> tipoNotaId;
  final Value<int> calendarioPeriodoId;
  final Value<String> color;
  const NotasCalendarioBoletaCompanion({
    this.evaluacionResultadoId = const Value.absent(),
    this.rubroEvalResultadoId = const Value.absent(),
    this.alumnoId = const Value.absent(),
    this.silaboEventoId = const Value.absent(),
    this.nota = const Value.absent(),
    this.peso = const Value.absent(),
    this.valorTipoNotaId = const Value.absent(),
    this.tituloNota = const Value.absent(),
    this.tipoNotaId = const Value.absent(),
    this.calendarioPeriodoId = const Value.absent(),
    this.color = const Value.absent(),
  });
  NotasCalendarioBoletaCompanion.insert({
    this.evaluacionResultadoId = const Value.absent(),
    this.rubroEvalResultadoId = const Value.absent(),
    this.alumnoId = const Value.absent(),
    this.silaboEventoId = const Value.absent(),
    this.nota = const Value.absent(),
    this.peso = const Value.absent(),
    this.valorTipoNotaId = const Value.absent(),
    this.tituloNota = const Value.absent(),
    this.tipoNotaId = const Value.absent(),
    this.calendarioPeriodoId = const Value.absent(),
    this.color = const Value.absent(),
  });
  static Insertable<NotasCalendarioBoletaData> custom({
    Expression<int> evaluacionResultadoId,
    Expression<int> rubroEvalResultadoId,
    Expression<int> alumnoId,
    Expression<int> silaboEventoId,
    Expression<String> nota,
    Expression<double> peso,
    Expression<String> valorTipoNotaId,
    Expression<String> tituloNota,
    Expression<int> tipoNotaId,
    Expression<int> calendarioPeriodoId,
    Expression<String> color,
  }) {
    return RawValuesInsertable({
      if (evaluacionResultadoId != null)
        'evaluacion_resultado_id': evaluacionResultadoId,
      if (rubroEvalResultadoId != null)
        'rubro_eval_resultado_id': rubroEvalResultadoId,
      if (alumnoId != null) 'alumno_id': alumnoId,
      if (silaboEventoId != null) 'silabo_evento_id': silaboEventoId,
      if (nota != null) 'nota': nota,
      if (peso != null) 'peso': peso,
      if (valorTipoNotaId != null) 'valor_tipo_nota_id': valorTipoNotaId,
      if (tituloNota != null) 'titulo_nota': tituloNota,
      if (tipoNotaId != null) 'tipo_nota_id': tipoNotaId,
      if (calendarioPeriodoId != null)
        'calendario_periodo_id': calendarioPeriodoId,
      if (color != null) 'color': color,
    });
  }

  NotasCalendarioBoletaCompanion copyWith(
      {Value<int> evaluacionResultadoId,
      Value<int> rubroEvalResultadoId,
      Value<int> alumnoId,
      Value<int> silaboEventoId,
      Value<String> nota,
      Value<double> peso,
      Value<String> valorTipoNotaId,
      Value<String> tituloNota,
      Value<int> tipoNotaId,
      Value<int> calendarioPeriodoId,
      Value<String> color}) {
    return NotasCalendarioBoletaCompanion(
      evaluacionResultadoId:
          evaluacionResultadoId ?? this.evaluacionResultadoId,
      rubroEvalResultadoId: rubroEvalResultadoId ?? this.rubroEvalResultadoId,
      alumnoId: alumnoId ?? this.alumnoId,
      silaboEventoId: silaboEventoId ?? this.silaboEventoId,
      nota: nota ?? this.nota,
      peso: peso ?? this.peso,
      valorTipoNotaId: valorTipoNotaId ?? this.valorTipoNotaId,
      tituloNota: tituloNota ?? this.tituloNota,
      tipoNotaId: tipoNotaId ?? this.tipoNotaId,
      calendarioPeriodoId: calendarioPeriodoId ?? this.calendarioPeriodoId,
      color: color ?? this.color,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (evaluacionResultadoId.present) {
      map['evaluacion_resultado_id'] =
          Variable<int>(evaluacionResultadoId.value);
    }
    if (rubroEvalResultadoId.present) {
      map['rubro_eval_resultado_id'] =
          Variable<int>(rubroEvalResultadoId.value);
    }
    if (alumnoId.present) {
      map['alumno_id'] = Variable<int>(alumnoId.value);
    }
    if (silaboEventoId.present) {
      map['silabo_evento_id'] = Variable<int>(silaboEventoId.value);
    }
    if (nota.present) {
      map['nota'] = Variable<String>(nota.value);
    }
    if (peso.present) {
      map['peso'] = Variable<double>(peso.value);
    }
    if (valorTipoNotaId.present) {
      map['valor_tipo_nota_id'] = Variable<String>(valorTipoNotaId.value);
    }
    if (tituloNota.present) {
      map['titulo_nota'] = Variable<String>(tituloNota.value);
    }
    if (tipoNotaId.present) {
      map['tipo_nota_id'] = Variable<int>(tipoNotaId.value);
    }
    if (calendarioPeriodoId.present) {
      map['calendario_periodo_id'] = Variable<int>(calendarioPeriodoId.value);
    }
    if (color.present) {
      map['color'] = Variable<String>(color.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NotasCalendarioBoletaCompanion(')
          ..write('evaluacionResultadoId: $evaluacionResultadoId, ')
          ..write('rubroEvalResultadoId: $rubroEvalResultadoId, ')
          ..write('alumnoId: $alumnoId, ')
          ..write('silaboEventoId: $silaboEventoId, ')
          ..write('nota: $nota, ')
          ..write('peso: $peso, ')
          ..write('valorTipoNotaId: $valorTipoNotaId, ')
          ..write('tituloNota: $tituloNota, ')
          ..write('tipoNotaId: $tipoNotaId, ')
          ..write('calendarioPeriodoId: $calendarioPeriodoId, ')
          ..write('color: $color')
          ..write(')'))
        .toString();
  }
}

class $NotasCalendarioBoletaTable extends NotasCalendarioBoleta
    with TableInfo<$NotasCalendarioBoletaTable, NotasCalendarioBoletaData> {
  final GeneratedDatabase _db;
  final String _alias;
  $NotasCalendarioBoletaTable(this._db, [this._alias]);
  final VerificationMeta _evaluacionResultadoIdMeta =
      const VerificationMeta('evaluacionResultadoId');
  GeneratedIntColumn _evaluacionResultadoId;
  @override
  GeneratedIntColumn get evaluacionResultadoId =>
      _evaluacionResultadoId ??= _constructEvaluacionResultadoId();
  GeneratedIntColumn _constructEvaluacionResultadoId() {
    return GeneratedIntColumn(
      'evaluacion_resultado_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _rubroEvalResultadoIdMeta =
      const VerificationMeta('rubroEvalResultadoId');
  GeneratedIntColumn _rubroEvalResultadoId;
  @override
  GeneratedIntColumn get rubroEvalResultadoId =>
      _rubroEvalResultadoId ??= _constructRubroEvalResultadoId();
  GeneratedIntColumn _constructRubroEvalResultadoId() {
    return GeneratedIntColumn(
      'rubro_eval_resultado_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _alumnoIdMeta = const VerificationMeta('alumnoId');
  GeneratedIntColumn _alumnoId;
  @override
  GeneratedIntColumn get alumnoId => _alumnoId ??= _constructAlumnoId();
  GeneratedIntColumn _constructAlumnoId() {
    return GeneratedIntColumn(
      'alumno_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _silaboEventoIdMeta =
      const VerificationMeta('silaboEventoId');
  GeneratedIntColumn _silaboEventoId;
  @override
  GeneratedIntColumn get silaboEventoId =>
      _silaboEventoId ??= _constructSilaboEventoId();
  GeneratedIntColumn _constructSilaboEventoId() {
    return GeneratedIntColumn(
      'silabo_evento_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _notaMeta = const VerificationMeta('nota');
  GeneratedTextColumn _nota;
  @override
  GeneratedTextColumn get nota => _nota ??= _constructNota();
  GeneratedTextColumn _constructNota() {
    return GeneratedTextColumn(
      'nota',
      $tableName,
      true,
    );
  }

  final VerificationMeta _pesoMeta = const VerificationMeta('peso');
  GeneratedRealColumn _peso;
  @override
  GeneratedRealColumn get peso => _peso ??= _constructPeso();
  GeneratedRealColumn _constructPeso() {
    return GeneratedRealColumn(
      'peso',
      $tableName,
      true,
    );
  }

  final VerificationMeta _valorTipoNotaIdMeta =
      const VerificationMeta('valorTipoNotaId');
  GeneratedTextColumn _valorTipoNotaId;
  @override
  GeneratedTextColumn get valorTipoNotaId =>
      _valorTipoNotaId ??= _constructValorTipoNotaId();
  GeneratedTextColumn _constructValorTipoNotaId() {
    return GeneratedTextColumn(
      'valor_tipo_nota_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tituloNotaMeta = const VerificationMeta('tituloNota');
  GeneratedTextColumn _tituloNota;
  @override
  GeneratedTextColumn get tituloNota => _tituloNota ??= _constructTituloNota();
  GeneratedTextColumn _constructTituloNota() {
    return GeneratedTextColumn(
      'titulo_nota',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tipoNotaIdMeta = const VerificationMeta('tipoNotaId');
  GeneratedIntColumn _tipoNotaId;
  @override
  GeneratedIntColumn get tipoNotaId => _tipoNotaId ??= _constructTipoNotaId();
  GeneratedIntColumn _constructTipoNotaId() {
    return GeneratedIntColumn(
      'tipo_nota_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _calendarioPeriodoIdMeta =
      const VerificationMeta('calendarioPeriodoId');
  GeneratedIntColumn _calendarioPeriodoId;
  @override
  GeneratedIntColumn get calendarioPeriodoId =>
      _calendarioPeriodoId ??= _constructCalendarioPeriodoId();
  GeneratedIntColumn _constructCalendarioPeriodoId() {
    return GeneratedIntColumn(
      'calendario_periodo_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _colorMeta = const VerificationMeta('color');
  GeneratedTextColumn _color;
  @override
  GeneratedTextColumn get color => _color ??= _constructColor();
  GeneratedTextColumn _constructColor() {
    return GeneratedTextColumn(
      'color',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        evaluacionResultadoId,
        rubroEvalResultadoId,
        alumnoId,
        silaboEventoId,
        nota,
        peso,
        valorTipoNotaId,
        tituloNota,
        tipoNotaId,
        calendarioPeriodoId,
        color
      ];
  @override
  $NotasCalendarioBoletaTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'notas_calendario_boleta';
  @override
  final String actualTableName = 'notas_calendario_boleta';
  @override
  VerificationContext validateIntegrity(
      Insertable<NotasCalendarioBoletaData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('evaluacion_resultado_id')) {
      context.handle(
          _evaluacionResultadoIdMeta,
          evaluacionResultadoId.isAcceptableOrUnknown(
              data['evaluacion_resultado_id'], _evaluacionResultadoIdMeta));
    }
    if (data.containsKey('rubro_eval_resultado_id')) {
      context.handle(
          _rubroEvalResultadoIdMeta,
          rubroEvalResultadoId.isAcceptableOrUnknown(
              data['rubro_eval_resultado_id'], _rubroEvalResultadoIdMeta));
    }
    if (data.containsKey('alumno_id')) {
      context.handle(_alumnoIdMeta,
          alumnoId.isAcceptableOrUnknown(data['alumno_id'], _alumnoIdMeta));
    }
    if (data.containsKey('silabo_evento_id')) {
      context.handle(
          _silaboEventoIdMeta,
          silaboEventoId.isAcceptableOrUnknown(
              data['silabo_evento_id'], _silaboEventoIdMeta));
    }
    if (data.containsKey('nota')) {
      context.handle(
          _notaMeta, nota.isAcceptableOrUnknown(data['nota'], _notaMeta));
    }
    if (data.containsKey('peso')) {
      context.handle(
          _pesoMeta, peso.isAcceptableOrUnknown(data['peso'], _pesoMeta));
    }
    if (data.containsKey('valor_tipo_nota_id')) {
      context.handle(
          _valorTipoNotaIdMeta,
          valorTipoNotaId.isAcceptableOrUnknown(
              data['valor_tipo_nota_id'], _valorTipoNotaIdMeta));
    }
    if (data.containsKey('titulo_nota')) {
      context.handle(
          _tituloNotaMeta,
          tituloNota.isAcceptableOrUnknown(
              data['titulo_nota'], _tituloNotaMeta));
    }
    if (data.containsKey('tipo_nota_id')) {
      context.handle(
          _tipoNotaIdMeta,
          tipoNotaId.isAcceptableOrUnknown(
              data['tipo_nota_id'], _tipoNotaIdMeta));
    }
    if (data.containsKey('calendario_periodo_id')) {
      context.handle(
          _calendarioPeriodoIdMeta,
          calendarioPeriodoId.isAcceptableOrUnknown(
              data['calendario_periodo_id'], _calendarioPeriodoIdMeta));
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color'], _colorMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {evaluacionResultadoId};
  @override
  NotasCalendarioBoletaData map(Map<String, dynamic> data,
      {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return NotasCalendarioBoletaData.fromData(data, _db,
        prefix: effectivePrefix);
  }

  @override
  $NotasCalendarioBoletaTable createAlias(String alias) {
    return $NotasCalendarioBoletaTable(_db, alias);
  }
}

class ParametrosDisenioData extends DataClass
    implements Insertable<ParametrosDisenioData> {
  final int parametroDisenioId;
  final String objeto;
  final String concepto;
  final String nombre;
  final String path;
  final String color1;
  final String color2;
  final String color3;
  final bool estado;
  ParametrosDisenioData(
      {@required this.parametroDisenioId,
      this.objeto,
      this.concepto,
      this.nombre,
      this.path,
      this.color1,
      this.color2,
      this.color3,
      this.estado});
  factory ParametrosDisenioData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return ParametrosDisenioData(
      parametroDisenioId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}parametro_disenio_id']),
      objeto:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}objeto']),
      concepto: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}concepto']),
      nombre:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}nombre']),
      path: stringType.mapFromDatabaseResponse(data['${effectivePrefix}path']),
      color1:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}color1']),
      color2:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}color2']),
      color3:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}color3']),
      estado:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}estado']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || parametroDisenioId != null) {
      map['parametro_disenio_id'] = Variable<int>(parametroDisenioId);
    }
    if (!nullToAbsent || objeto != null) {
      map['objeto'] = Variable<String>(objeto);
    }
    if (!nullToAbsent || concepto != null) {
      map['concepto'] = Variable<String>(concepto);
    }
    if (!nullToAbsent || nombre != null) {
      map['nombre'] = Variable<String>(nombre);
    }
    if (!nullToAbsent || path != null) {
      map['path'] = Variable<String>(path);
    }
    if (!nullToAbsent || color1 != null) {
      map['color1'] = Variable<String>(color1);
    }
    if (!nullToAbsent || color2 != null) {
      map['color2'] = Variable<String>(color2);
    }
    if (!nullToAbsent || color3 != null) {
      map['color3'] = Variable<String>(color3);
    }
    if (!nullToAbsent || estado != null) {
      map['estado'] = Variable<bool>(estado);
    }
    return map;
  }

  ParametrosDisenioCompanion toCompanion(bool nullToAbsent) {
    return ParametrosDisenioCompanion(
      parametroDisenioId: parametroDisenioId == null && nullToAbsent
          ? const Value.absent()
          : Value(parametroDisenioId),
      objeto:
          objeto == null && nullToAbsent ? const Value.absent() : Value(objeto),
      concepto: concepto == null && nullToAbsent
          ? const Value.absent()
          : Value(concepto),
      nombre:
          nombre == null && nullToAbsent ? const Value.absent() : Value(nombre),
      path: path == null && nullToAbsent ? const Value.absent() : Value(path),
      color1:
          color1 == null && nullToAbsent ? const Value.absent() : Value(color1),
      color2:
          color2 == null && nullToAbsent ? const Value.absent() : Value(color2),
      color3:
          color3 == null && nullToAbsent ? const Value.absent() : Value(color3),
      estado:
          estado == null && nullToAbsent ? const Value.absent() : Value(estado),
    );
  }

  factory ParametrosDisenioData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ParametrosDisenioData(
      parametroDisenioId: serializer.fromJson<int>(json['parametroDisenioId']),
      objeto: serializer.fromJson<String>(json['objeto']),
      concepto: serializer.fromJson<String>(json['concepto']),
      nombre: serializer.fromJson<String>(json['nombre']),
      path: serializer.fromJson<String>(json['path']),
      color1: serializer.fromJson<String>(json['color1']),
      color2: serializer.fromJson<String>(json['color2']),
      color3: serializer.fromJson<String>(json['color3']),
      estado: serializer.fromJson<bool>(json['estado']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'parametroDisenioId': serializer.toJson<int>(parametroDisenioId),
      'objeto': serializer.toJson<String>(objeto),
      'concepto': serializer.toJson<String>(concepto),
      'nombre': serializer.toJson<String>(nombre),
      'path': serializer.toJson<String>(path),
      'color1': serializer.toJson<String>(color1),
      'color2': serializer.toJson<String>(color2),
      'color3': serializer.toJson<String>(color3),
      'estado': serializer.toJson<bool>(estado),
    };
  }

  ParametrosDisenioData copyWith(
          {int parametroDisenioId,
          String objeto,
          String concepto,
          String nombre,
          String path,
          String color1,
          String color2,
          String color3,
          bool estado}) =>
      ParametrosDisenioData(
        parametroDisenioId: parametroDisenioId ?? this.parametroDisenioId,
        objeto: objeto ?? this.objeto,
        concepto: concepto ?? this.concepto,
        nombre: nombre ?? this.nombre,
        path: path ?? this.path,
        color1: color1 ?? this.color1,
        color2: color2 ?? this.color2,
        color3: color3 ?? this.color3,
        estado: estado ?? this.estado,
      );
  @override
  String toString() {
    return (StringBuffer('ParametrosDisenioData(')
          ..write('parametroDisenioId: $parametroDisenioId, ')
          ..write('objeto: $objeto, ')
          ..write('concepto: $concepto, ')
          ..write('nombre: $nombre, ')
          ..write('path: $path, ')
          ..write('color1: $color1, ')
          ..write('color2: $color2, ')
          ..write('color3: $color3, ')
          ..write('estado: $estado')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      parametroDisenioId.hashCode,
      $mrjc(
          objeto.hashCode,
          $mrjc(
              concepto.hashCode,
              $mrjc(
                  nombre.hashCode,
                  $mrjc(
                      path.hashCode,
                      $mrjc(
                          color1.hashCode,
                          $mrjc(color2.hashCode,
                              $mrjc(color3.hashCode, estado.hashCode)))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ParametrosDisenioData &&
          other.parametroDisenioId == this.parametroDisenioId &&
          other.objeto == this.objeto &&
          other.concepto == this.concepto &&
          other.nombre == this.nombre &&
          other.path == this.path &&
          other.color1 == this.color1 &&
          other.color2 == this.color2 &&
          other.color3 == this.color3 &&
          other.estado == this.estado);
}

class ParametrosDisenioCompanion
    extends UpdateCompanion<ParametrosDisenioData> {
  final Value<int> parametroDisenioId;
  final Value<String> objeto;
  final Value<String> concepto;
  final Value<String> nombre;
  final Value<String> path;
  final Value<String> color1;
  final Value<String> color2;
  final Value<String> color3;
  final Value<bool> estado;
  const ParametrosDisenioCompanion({
    this.parametroDisenioId = const Value.absent(),
    this.objeto = const Value.absent(),
    this.concepto = const Value.absent(),
    this.nombre = const Value.absent(),
    this.path = const Value.absent(),
    this.color1 = const Value.absent(),
    this.color2 = const Value.absent(),
    this.color3 = const Value.absent(),
    this.estado = const Value.absent(),
  });
  ParametrosDisenioCompanion.insert({
    this.parametroDisenioId = const Value.absent(),
    this.objeto = const Value.absent(),
    this.concepto = const Value.absent(),
    this.nombre = const Value.absent(),
    this.path = const Value.absent(),
    this.color1 = const Value.absent(),
    this.color2 = const Value.absent(),
    this.color3 = const Value.absent(),
    this.estado = const Value.absent(),
  });
  static Insertable<ParametrosDisenioData> custom({
    Expression<int> parametroDisenioId,
    Expression<String> objeto,
    Expression<String> concepto,
    Expression<String> nombre,
    Expression<String> path,
    Expression<String> color1,
    Expression<String> color2,
    Expression<String> color3,
    Expression<bool> estado,
  }) {
    return RawValuesInsertable({
      if (parametroDisenioId != null)
        'parametro_disenio_id': parametroDisenioId,
      if (objeto != null) 'objeto': objeto,
      if (concepto != null) 'concepto': concepto,
      if (nombre != null) 'nombre': nombre,
      if (path != null) 'path': path,
      if (color1 != null) 'color1': color1,
      if (color2 != null) 'color2': color2,
      if (color3 != null) 'color3': color3,
      if (estado != null) 'estado': estado,
    });
  }

  ParametrosDisenioCompanion copyWith(
      {Value<int> parametroDisenioId,
      Value<String> objeto,
      Value<String> concepto,
      Value<String> nombre,
      Value<String> path,
      Value<String> color1,
      Value<String> color2,
      Value<String> color3,
      Value<bool> estado}) {
    return ParametrosDisenioCompanion(
      parametroDisenioId: parametroDisenioId ?? this.parametroDisenioId,
      objeto: objeto ?? this.objeto,
      concepto: concepto ?? this.concepto,
      nombre: nombre ?? this.nombre,
      path: path ?? this.path,
      color1: color1 ?? this.color1,
      color2: color2 ?? this.color2,
      color3: color3 ?? this.color3,
      estado: estado ?? this.estado,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (parametroDisenioId.present) {
      map['parametro_disenio_id'] = Variable<int>(parametroDisenioId.value);
    }
    if (objeto.present) {
      map['objeto'] = Variable<String>(objeto.value);
    }
    if (concepto.present) {
      map['concepto'] = Variable<String>(concepto.value);
    }
    if (nombre.present) {
      map['nombre'] = Variable<String>(nombre.value);
    }
    if (path.present) {
      map['path'] = Variable<String>(path.value);
    }
    if (color1.present) {
      map['color1'] = Variable<String>(color1.value);
    }
    if (color2.present) {
      map['color2'] = Variable<String>(color2.value);
    }
    if (color3.present) {
      map['color3'] = Variable<String>(color3.value);
    }
    if (estado.present) {
      map['estado'] = Variable<bool>(estado.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ParametrosDisenioCompanion(')
          ..write('parametroDisenioId: $parametroDisenioId, ')
          ..write('objeto: $objeto, ')
          ..write('concepto: $concepto, ')
          ..write('nombre: $nombre, ')
          ..write('path: $path, ')
          ..write('color1: $color1, ')
          ..write('color2: $color2, ')
          ..write('color3: $color3, ')
          ..write('estado: $estado')
          ..write(')'))
        .toString();
  }
}

class $ParametrosDisenioTable extends ParametrosDisenio
    with TableInfo<$ParametrosDisenioTable, ParametrosDisenioData> {
  final GeneratedDatabase _db;
  final String _alias;
  $ParametrosDisenioTable(this._db, [this._alias]);
  final VerificationMeta _parametroDisenioIdMeta =
      const VerificationMeta('parametroDisenioId');
  GeneratedIntColumn _parametroDisenioId;
  @override
  GeneratedIntColumn get parametroDisenioId =>
      _parametroDisenioId ??= _constructParametroDisenioId();
  GeneratedIntColumn _constructParametroDisenioId() {
    return GeneratedIntColumn(
      'parametro_disenio_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _objetoMeta = const VerificationMeta('objeto');
  GeneratedTextColumn _objeto;
  @override
  GeneratedTextColumn get objeto => _objeto ??= _constructObjeto();
  GeneratedTextColumn _constructObjeto() {
    return GeneratedTextColumn(
      'objeto',
      $tableName,
      true,
    );
  }

  final VerificationMeta _conceptoMeta = const VerificationMeta('concepto');
  GeneratedTextColumn _concepto;
  @override
  GeneratedTextColumn get concepto => _concepto ??= _constructConcepto();
  GeneratedTextColumn _constructConcepto() {
    return GeneratedTextColumn(
      'concepto',
      $tableName,
      true,
    );
  }

  final VerificationMeta _nombreMeta = const VerificationMeta('nombre');
  GeneratedTextColumn _nombre;
  @override
  GeneratedTextColumn get nombre => _nombre ??= _constructNombre();
  GeneratedTextColumn _constructNombre() {
    return GeneratedTextColumn(
      'nombre',
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

  final VerificationMeta _color1Meta = const VerificationMeta('color1');
  GeneratedTextColumn _color1;
  @override
  GeneratedTextColumn get color1 => _color1 ??= _constructColor1();
  GeneratedTextColumn _constructColor1() {
    return GeneratedTextColumn(
      'color1',
      $tableName,
      true,
    );
  }

  final VerificationMeta _color2Meta = const VerificationMeta('color2');
  GeneratedTextColumn _color2;
  @override
  GeneratedTextColumn get color2 => _color2 ??= _constructColor2();
  GeneratedTextColumn _constructColor2() {
    return GeneratedTextColumn(
      'color2',
      $tableName,
      true,
    );
  }

  final VerificationMeta _color3Meta = const VerificationMeta('color3');
  GeneratedTextColumn _color3;
  @override
  GeneratedTextColumn get color3 => _color3 ??= _constructColor3();
  GeneratedTextColumn _constructColor3() {
    return GeneratedTextColumn(
      'color3',
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

  @override
  List<GeneratedColumn> get $columns => [
        parametroDisenioId,
        objeto,
        concepto,
        nombre,
        path,
        color1,
        color2,
        color3,
        estado
      ];
  @override
  $ParametrosDisenioTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'parametros_disenio';
  @override
  final String actualTableName = 'parametros_disenio';
  @override
  VerificationContext validateIntegrity(
      Insertable<ParametrosDisenioData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('parametro_disenio_id')) {
      context.handle(
          _parametroDisenioIdMeta,
          parametroDisenioId.isAcceptableOrUnknown(
              data['parametro_disenio_id'], _parametroDisenioIdMeta));
    }
    if (data.containsKey('objeto')) {
      context.handle(_objetoMeta,
          objeto.isAcceptableOrUnknown(data['objeto'], _objetoMeta));
    }
    if (data.containsKey('concepto')) {
      context.handle(_conceptoMeta,
          concepto.isAcceptableOrUnknown(data['concepto'], _conceptoMeta));
    }
    if (data.containsKey('nombre')) {
      context.handle(_nombreMeta,
          nombre.isAcceptableOrUnknown(data['nombre'], _nombreMeta));
    }
    if (data.containsKey('path')) {
      context.handle(
          _pathMeta, path.isAcceptableOrUnknown(data['path'], _pathMeta));
    }
    if (data.containsKey('color1')) {
      context.handle(_color1Meta,
          color1.isAcceptableOrUnknown(data['color1'], _color1Meta));
    }
    if (data.containsKey('color2')) {
      context.handle(_color2Meta,
          color2.isAcceptableOrUnknown(data['color2'], _color2Meta));
    }
    if (data.containsKey('color3')) {
      context.handle(_color3Meta,
          color3.isAcceptableOrUnknown(data['color3'], _color3Meta));
    }
    if (data.containsKey('estado')) {
      context.handle(_estadoMeta,
          estado.isAcceptableOrUnknown(data['estado'], _estadoMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {parametroDisenioId};
  @override
  ParametrosDisenioData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ParametrosDisenioData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ParametrosDisenioTable createAlias(String alias) {
    return $ParametrosDisenioTable(_db, alias);
  }
}

class SilaboEventoData extends DataClass
    implements Insertable<SilaboEventoData> {
  final int silaboEventoId;
  final String titulo;
  final String descripcionGeneral;
  final int planCursoId;
  final int entidadId;
  final int docenteId;
  final int seccionId;
  final int estadoId;
  final int anioAcademicoId;
  final int georeferenciaId;
  final int silaboBaseId;
  final int cargaCursoId;
  final int parametroDisenioId;
  final String fechaInicio;
  final String fechaFin;
  SilaboEventoData(
      {@required this.silaboEventoId,
      this.titulo,
      this.descripcionGeneral,
      this.planCursoId,
      this.entidadId,
      this.docenteId,
      this.seccionId,
      this.estadoId,
      this.anioAcademicoId,
      this.georeferenciaId,
      this.silaboBaseId,
      this.cargaCursoId,
      this.parametroDisenioId,
      this.fechaInicio,
      this.fechaFin});
  factory SilaboEventoData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return SilaboEventoData(
      silaboEventoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}silabo_evento_id']),
      titulo:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}titulo']),
      descripcionGeneral: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}descripcion_general']),
      planCursoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}plan_curso_id']),
      entidadId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}entidad_id']),
      docenteId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}docente_id']),
      seccionId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}seccion_id']),
      estadoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}estado_id']),
      anioAcademicoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}anio_academico_id']),
      georeferenciaId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}georeferencia_id']),
      silaboBaseId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}silabo_base_id']),
      cargaCursoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}carga_curso_id']),
      parametroDisenioId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}parametro_disenio_id']),
      fechaInicio: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}fecha_inicio']),
      fechaFin: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}fecha_fin']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || silaboEventoId != null) {
      map['silabo_evento_id'] = Variable<int>(silaboEventoId);
    }
    if (!nullToAbsent || titulo != null) {
      map['titulo'] = Variable<String>(titulo);
    }
    if (!nullToAbsent || descripcionGeneral != null) {
      map['descripcion_general'] = Variable<String>(descripcionGeneral);
    }
    if (!nullToAbsent || planCursoId != null) {
      map['plan_curso_id'] = Variable<int>(planCursoId);
    }
    if (!nullToAbsent || entidadId != null) {
      map['entidad_id'] = Variable<int>(entidadId);
    }
    if (!nullToAbsent || docenteId != null) {
      map['docente_id'] = Variable<int>(docenteId);
    }
    if (!nullToAbsent || seccionId != null) {
      map['seccion_id'] = Variable<int>(seccionId);
    }
    if (!nullToAbsent || estadoId != null) {
      map['estado_id'] = Variable<int>(estadoId);
    }
    if (!nullToAbsent || anioAcademicoId != null) {
      map['anio_academico_id'] = Variable<int>(anioAcademicoId);
    }
    if (!nullToAbsent || georeferenciaId != null) {
      map['georeferencia_id'] = Variable<int>(georeferenciaId);
    }
    if (!nullToAbsent || silaboBaseId != null) {
      map['silabo_base_id'] = Variable<int>(silaboBaseId);
    }
    if (!nullToAbsent || cargaCursoId != null) {
      map['carga_curso_id'] = Variable<int>(cargaCursoId);
    }
    if (!nullToAbsent || parametroDisenioId != null) {
      map['parametro_disenio_id'] = Variable<int>(parametroDisenioId);
    }
    if (!nullToAbsent || fechaInicio != null) {
      map['fecha_inicio'] = Variable<String>(fechaInicio);
    }
    if (!nullToAbsent || fechaFin != null) {
      map['fecha_fin'] = Variable<String>(fechaFin);
    }
    return map;
  }

  SilaboEventoCompanion toCompanion(bool nullToAbsent) {
    return SilaboEventoCompanion(
      silaboEventoId: silaboEventoId == null && nullToAbsent
          ? const Value.absent()
          : Value(silaboEventoId),
      titulo:
          titulo == null && nullToAbsent ? const Value.absent() : Value(titulo),
      descripcionGeneral: descripcionGeneral == null && nullToAbsent
          ? const Value.absent()
          : Value(descripcionGeneral),
      planCursoId: planCursoId == null && nullToAbsent
          ? const Value.absent()
          : Value(planCursoId),
      entidadId: entidadId == null && nullToAbsent
          ? const Value.absent()
          : Value(entidadId),
      docenteId: docenteId == null && nullToAbsent
          ? const Value.absent()
          : Value(docenteId),
      seccionId: seccionId == null && nullToAbsent
          ? const Value.absent()
          : Value(seccionId),
      estadoId: estadoId == null && nullToAbsent
          ? const Value.absent()
          : Value(estadoId),
      anioAcademicoId: anioAcademicoId == null && nullToAbsent
          ? const Value.absent()
          : Value(anioAcademicoId),
      georeferenciaId: georeferenciaId == null && nullToAbsent
          ? const Value.absent()
          : Value(georeferenciaId),
      silaboBaseId: silaboBaseId == null && nullToAbsent
          ? const Value.absent()
          : Value(silaboBaseId),
      cargaCursoId: cargaCursoId == null && nullToAbsent
          ? const Value.absent()
          : Value(cargaCursoId),
      parametroDisenioId: parametroDisenioId == null && nullToAbsent
          ? const Value.absent()
          : Value(parametroDisenioId),
      fechaInicio: fechaInicio == null && nullToAbsent
          ? const Value.absent()
          : Value(fechaInicio),
      fechaFin: fechaFin == null && nullToAbsent
          ? const Value.absent()
          : Value(fechaFin),
    );
  }

  factory SilaboEventoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return SilaboEventoData(
      silaboEventoId: serializer.fromJson<int>(json['silaboEventoId']),
      titulo: serializer.fromJson<String>(json['titulo']),
      descripcionGeneral:
          serializer.fromJson<String>(json['descripcionGeneral']),
      planCursoId: serializer.fromJson<int>(json['planCursoId']),
      entidadId: serializer.fromJson<int>(json['entidadId']),
      docenteId: serializer.fromJson<int>(json['docenteId']),
      seccionId: serializer.fromJson<int>(json['seccionId']),
      estadoId: serializer.fromJson<int>(json['estadoId']),
      anioAcademicoId: serializer.fromJson<int>(json['anioAcademicoId']),
      georeferenciaId: serializer.fromJson<int>(json['georeferenciaId']),
      silaboBaseId: serializer.fromJson<int>(json['silaboBaseId']),
      cargaCursoId: serializer.fromJson<int>(json['cargaCursoId']),
      parametroDisenioId: serializer.fromJson<int>(json['parametroDisenioId']),
      fechaInicio: serializer.fromJson<String>(json['fechaInicio']),
      fechaFin: serializer.fromJson<String>(json['fechaFin']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'silaboEventoId': serializer.toJson<int>(silaboEventoId),
      'titulo': serializer.toJson<String>(titulo),
      'descripcionGeneral': serializer.toJson<String>(descripcionGeneral),
      'planCursoId': serializer.toJson<int>(planCursoId),
      'entidadId': serializer.toJson<int>(entidadId),
      'docenteId': serializer.toJson<int>(docenteId),
      'seccionId': serializer.toJson<int>(seccionId),
      'estadoId': serializer.toJson<int>(estadoId),
      'anioAcademicoId': serializer.toJson<int>(anioAcademicoId),
      'georeferenciaId': serializer.toJson<int>(georeferenciaId),
      'silaboBaseId': serializer.toJson<int>(silaboBaseId),
      'cargaCursoId': serializer.toJson<int>(cargaCursoId),
      'parametroDisenioId': serializer.toJson<int>(parametroDisenioId),
      'fechaInicio': serializer.toJson<String>(fechaInicio),
      'fechaFin': serializer.toJson<String>(fechaFin),
    };
  }

  SilaboEventoData copyWith(
          {int silaboEventoId,
          String titulo,
          String descripcionGeneral,
          int planCursoId,
          int entidadId,
          int docenteId,
          int seccionId,
          int estadoId,
          int anioAcademicoId,
          int georeferenciaId,
          int silaboBaseId,
          int cargaCursoId,
          int parametroDisenioId,
          String fechaInicio,
          String fechaFin}) =>
      SilaboEventoData(
        silaboEventoId: silaboEventoId ?? this.silaboEventoId,
        titulo: titulo ?? this.titulo,
        descripcionGeneral: descripcionGeneral ?? this.descripcionGeneral,
        planCursoId: planCursoId ?? this.planCursoId,
        entidadId: entidadId ?? this.entidadId,
        docenteId: docenteId ?? this.docenteId,
        seccionId: seccionId ?? this.seccionId,
        estadoId: estadoId ?? this.estadoId,
        anioAcademicoId: anioAcademicoId ?? this.anioAcademicoId,
        georeferenciaId: georeferenciaId ?? this.georeferenciaId,
        silaboBaseId: silaboBaseId ?? this.silaboBaseId,
        cargaCursoId: cargaCursoId ?? this.cargaCursoId,
        parametroDisenioId: parametroDisenioId ?? this.parametroDisenioId,
        fechaInicio: fechaInicio ?? this.fechaInicio,
        fechaFin: fechaFin ?? this.fechaFin,
      );
  @override
  String toString() {
    return (StringBuffer('SilaboEventoData(')
          ..write('silaboEventoId: $silaboEventoId, ')
          ..write('titulo: $titulo, ')
          ..write('descripcionGeneral: $descripcionGeneral, ')
          ..write('planCursoId: $planCursoId, ')
          ..write('entidadId: $entidadId, ')
          ..write('docenteId: $docenteId, ')
          ..write('seccionId: $seccionId, ')
          ..write('estadoId: $estadoId, ')
          ..write('anioAcademicoId: $anioAcademicoId, ')
          ..write('georeferenciaId: $georeferenciaId, ')
          ..write('silaboBaseId: $silaboBaseId, ')
          ..write('cargaCursoId: $cargaCursoId, ')
          ..write('parametroDisenioId: $parametroDisenioId, ')
          ..write('fechaInicio: $fechaInicio, ')
          ..write('fechaFin: $fechaFin')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      silaboEventoId.hashCode,
      $mrjc(
          titulo.hashCode,
          $mrjc(
              descripcionGeneral.hashCode,
              $mrjc(
                  planCursoId.hashCode,
                  $mrjc(
                      entidadId.hashCode,
                      $mrjc(
                          docenteId.hashCode,
                          $mrjc(
                              seccionId.hashCode,
                              $mrjc(
                                  estadoId.hashCode,
                                  $mrjc(
                                      anioAcademicoId.hashCode,
                                      $mrjc(
                                          georeferenciaId.hashCode,
                                          $mrjc(
                                              silaboBaseId.hashCode,
                                              $mrjc(
                                                  cargaCursoId.hashCode,
                                                  $mrjc(
                                                      parametroDisenioId
                                                          .hashCode,
                                                      $mrjc(
                                                          fechaInicio.hashCode,
                                                          fechaFin
                                                              .hashCode)))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is SilaboEventoData &&
          other.silaboEventoId == this.silaboEventoId &&
          other.titulo == this.titulo &&
          other.descripcionGeneral == this.descripcionGeneral &&
          other.planCursoId == this.planCursoId &&
          other.entidadId == this.entidadId &&
          other.docenteId == this.docenteId &&
          other.seccionId == this.seccionId &&
          other.estadoId == this.estadoId &&
          other.anioAcademicoId == this.anioAcademicoId &&
          other.georeferenciaId == this.georeferenciaId &&
          other.silaboBaseId == this.silaboBaseId &&
          other.cargaCursoId == this.cargaCursoId &&
          other.parametroDisenioId == this.parametroDisenioId &&
          other.fechaInicio == this.fechaInicio &&
          other.fechaFin == this.fechaFin);
}

class SilaboEventoCompanion extends UpdateCompanion<SilaboEventoData> {
  final Value<int> silaboEventoId;
  final Value<String> titulo;
  final Value<String> descripcionGeneral;
  final Value<int> planCursoId;
  final Value<int> entidadId;
  final Value<int> docenteId;
  final Value<int> seccionId;
  final Value<int> estadoId;
  final Value<int> anioAcademicoId;
  final Value<int> georeferenciaId;
  final Value<int> silaboBaseId;
  final Value<int> cargaCursoId;
  final Value<int> parametroDisenioId;
  final Value<String> fechaInicio;
  final Value<String> fechaFin;
  const SilaboEventoCompanion({
    this.silaboEventoId = const Value.absent(),
    this.titulo = const Value.absent(),
    this.descripcionGeneral = const Value.absent(),
    this.planCursoId = const Value.absent(),
    this.entidadId = const Value.absent(),
    this.docenteId = const Value.absent(),
    this.seccionId = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.anioAcademicoId = const Value.absent(),
    this.georeferenciaId = const Value.absent(),
    this.silaboBaseId = const Value.absent(),
    this.cargaCursoId = const Value.absent(),
    this.parametroDisenioId = const Value.absent(),
    this.fechaInicio = const Value.absent(),
    this.fechaFin = const Value.absent(),
  });
  SilaboEventoCompanion.insert({
    this.silaboEventoId = const Value.absent(),
    this.titulo = const Value.absent(),
    this.descripcionGeneral = const Value.absent(),
    this.planCursoId = const Value.absent(),
    this.entidadId = const Value.absent(),
    this.docenteId = const Value.absent(),
    this.seccionId = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.anioAcademicoId = const Value.absent(),
    this.georeferenciaId = const Value.absent(),
    this.silaboBaseId = const Value.absent(),
    this.cargaCursoId = const Value.absent(),
    this.parametroDisenioId = const Value.absent(),
    this.fechaInicio = const Value.absent(),
    this.fechaFin = const Value.absent(),
  });
  static Insertable<SilaboEventoData> custom({
    Expression<int> silaboEventoId,
    Expression<String> titulo,
    Expression<String> descripcionGeneral,
    Expression<int> planCursoId,
    Expression<int> entidadId,
    Expression<int> docenteId,
    Expression<int> seccionId,
    Expression<int> estadoId,
    Expression<int> anioAcademicoId,
    Expression<int> georeferenciaId,
    Expression<int> silaboBaseId,
    Expression<int> cargaCursoId,
    Expression<int> parametroDisenioId,
    Expression<String> fechaInicio,
    Expression<String> fechaFin,
  }) {
    return RawValuesInsertable({
      if (silaboEventoId != null) 'silabo_evento_id': silaboEventoId,
      if (titulo != null) 'titulo': titulo,
      if (descripcionGeneral != null) 'descripcion_general': descripcionGeneral,
      if (planCursoId != null) 'plan_curso_id': planCursoId,
      if (entidadId != null) 'entidad_id': entidadId,
      if (docenteId != null) 'docente_id': docenteId,
      if (seccionId != null) 'seccion_id': seccionId,
      if (estadoId != null) 'estado_id': estadoId,
      if (anioAcademicoId != null) 'anio_academico_id': anioAcademicoId,
      if (georeferenciaId != null) 'georeferencia_id': georeferenciaId,
      if (silaboBaseId != null) 'silabo_base_id': silaboBaseId,
      if (cargaCursoId != null) 'carga_curso_id': cargaCursoId,
      if (parametroDisenioId != null)
        'parametro_disenio_id': parametroDisenioId,
      if (fechaInicio != null) 'fecha_inicio': fechaInicio,
      if (fechaFin != null) 'fecha_fin': fechaFin,
    });
  }

  SilaboEventoCompanion copyWith(
      {Value<int> silaboEventoId,
      Value<String> titulo,
      Value<String> descripcionGeneral,
      Value<int> planCursoId,
      Value<int> entidadId,
      Value<int> docenteId,
      Value<int> seccionId,
      Value<int> estadoId,
      Value<int> anioAcademicoId,
      Value<int> georeferenciaId,
      Value<int> silaboBaseId,
      Value<int> cargaCursoId,
      Value<int> parametroDisenioId,
      Value<String> fechaInicio,
      Value<String> fechaFin}) {
    return SilaboEventoCompanion(
      silaboEventoId: silaboEventoId ?? this.silaboEventoId,
      titulo: titulo ?? this.titulo,
      descripcionGeneral: descripcionGeneral ?? this.descripcionGeneral,
      planCursoId: planCursoId ?? this.planCursoId,
      entidadId: entidadId ?? this.entidadId,
      docenteId: docenteId ?? this.docenteId,
      seccionId: seccionId ?? this.seccionId,
      estadoId: estadoId ?? this.estadoId,
      anioAcademicoId: anioAcademicoId ?? this.anioAcademicoId,
      georeferenciaId: georeferenciaId ?? this.georeferenciaId,
      silaboBaseId: silaboBaseId ?? this.silaboBaseId,
      cargaCursoId: cargaCursoId ?? this.cargaCursoId,
      parametroDisenioId: parametroDisenioId ?? this.parametroDisenioId,
      fechaInicio: fechaInicio ?? this.fechaInicio,
      fechaFin: fechaFin ?? this.fechaFin,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (silaboEventoId.present) {
      map['silabo_evento_id'] = Variable<int>(silaboEventoId.value);
    }
    if (titulo.present) {
      map['titulo'] = Variable<String>(titulo.value);
    }
    if (descripcionGeneral.present) {
      map['descripcion_general'] = Variable<String>(descripcionGeneral.value);
    }
    if (planCursoId.present) {
      map['plan_curso_id'] = Variable<int>(planCursoId.value);
    }
    if (entidadId.present) {
      map['entidad_id'] = Variable<int>(entidadId.value);
    }
    if (docenteId.present) {
      map['docente_id'] = Variable<int>(docenteId.value);
    }
    if (seccionId.present) {
      map['seccion_id'] = Variable<int>(seccionId.value);
    }
    if (estadoId.present) {
      map['estado_id'] = Variable<int>(estadoId.value);
    }
    if (anioAcademicoId.present) {
      map['anio_academico_id'] = Variable<int>(anioAcademicoId.value);
    }
    if (georeferenciaId.present) {
      map['georeferencia_id'] = Variable<int>(georeferenciaId.value);
    }
    if (silaboBaseId.present) {
      map['silabo_base_id'] = Variable<int>(silaboBaseId.value);
    }
    if (cargaCursoId.present) {
      map['carga_curso_id'] = Variable<int>(cargaCursoId.value);
    }
    if (parametroDisenioId.present) {
      map['parametro_disenio_id'] = Variable<int>(parametroDisenioId.value);
    }
    if (fechaInicio.present) {
      map['fecha_inicio'] = Variable<String>(fechaInicio.value);
    }
    if (fechaFin.present) {
      map['fecha_fin'] = Variable<String>(fechaFin.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SilaboEventoCompanion(')
          ..write('silaboEventoId: $silaboEventoId, ')
          ..write('titulo: $titulo, ')
          ..write('descripcionGeneral: $descripcionGeneral, ')
          ..write('planCursoId: $planCursoId, ')
          ..write('entidadId: $entidadId, ')
          ..write('docenteId: $docenteId, ')
          ..write('seccionId: $seccionId, ')
          ..write('estadoId: $estadoId, ')
          ..write('anioAcademicoId: $anioAcademicoId, ')
          ..write('georeferenciaId: $georeferenciaId, ')
          ..write('silaboBaseId: $silaboBaseId, ')
          ..write('cargaCursoId: $cargaCursoId, ')
          ..write('parametroDisenioId: $parametroDisenioId, ')
          ..write('fechaInicio: $fechaInicio, ')
          ..write('fechaFin: $fechaFin')
          ..write(')'))
        .toString();
  }
}

class $SilaboEventoTable extends SilaboEvento
    with TableInfo<$SilaboEventoTable, SilaboEventoData> {
  final GeneratedDatabase _db;
  final String _alias;
  $SilaboEventoTable(this._db, [this._alias]);
  final VerificationMeta _silaboEventoIdMeta =
      const VerificationMeta('silaboEventoId');
  GeneratedIntColumn _silaboEventoId;
  @override
  GeneratedIntColumn get silaboEventoId =>
      _silaboEventoId ??= _constructSilaboEventoId();
  GeneratedIntColumn _constructSilaboEventoId() {
    return GeneratedIntColumn(
      'silabo_evento_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _tituloMeta = const VerificationMeta('titulo');
  GeneratedTextColumn _titulo;
  @override
  GeneratedTextColumn get titulo => _titulo ??= _constructTitulo();
  GeneratedTextColumn _constructTitulo() {
    return GeneratedTextColumn(
      'titulo',
      $tableName,
      true,
    );
  }

  final VerificationMeta _descripcionGeneralMeta =
      const VerificationMeta('descripcionGeneral');
  GeneratedTextColumn _descripcionGeneral;
  @override
  GeneratedTextColumn get descripcionGeneral =>
      _descripcionGeneral ??= _constructDescripcionGeneral();
  GeneratedTextColumn _constructDescripcionGeneral() {
    return GeneratedTextColumn(
      'descripcion_general',
      $tableName,
      true,
    );
  }

  final VerificationMeta _planCursoIdMeta =
      const VerificationMeta('planCursoId');
  GeneratedIntColumn _planCursoId;
  @override
  GeneratedIntColumn get planCursoId =>
      _planCursoId ??= _constructPlanCursoId();
  GeneratedIntColumn _constructPlanCursoId() {
    return GeneratedIntColumn(
      'plan_curso_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _entidadIdMeta = const VerificationMeta('entidadId');
  GeneratedIntColumn _entidadId;
  @override
  GeneratedIntColumn get entidadId => _entidadId ??= _constructEntidadId();
  GeneratedIntColumn _constructEntidadId() {
    return GeneratedIntColumn(
      'entidad_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _docenteIdMeta = const VerificationMeta('docenteId');
  GeneratedIntColumn _docenteId;
  @override
  GeneratedIntColumn get docenteId => _docenteId ??= _constructDocenteId();
  GeneratedIntColumn _constructDocenteId() {
    return GeneratedIntColumn(
      'docente_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _seccionIdMeta = const VerificationMeta('seccionId');
  GeneratedIntColumn _seccionId;
  @override
  GeneratedIntColumn get seccionId => _seccionId ??= _constructSeccionId();
  GeneratedIntColumn _constructSeccionId() {
    return GeneratedIntColumn(
      'seccion_id',
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

  final VerificationMeta _anioAcademicoIdMeta =
      const VerificationMeta('anioAcademicoId');
  GeneratedIntColumn _anioAcademicoId;
  @override
  GeneratedIntColumn get anioAcademicoId =>
      _anioAcademicoId ??= _constructAnioAcademicoId();
  GeneratedIntColumn _constructAnioAcademicoId() {
    return GeneratedIntColumn(
      'anio_academico_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _georeferenciaIdMeta =
      const VerificationMeta('georeferenciaId');
  GeneratedIntColumn _georeferenciaId;
  @override
  GeneratedIntColumn get georeferenciaId =>
      _georeferenciaId ??= _constructGeoreferenciaId();
  GeneratedIntColumn _constructGeoreferenciaId() {
    return GeneratedIntColumn(
      'georeferencia_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _silaboBaseIdMeta =
      const VerificationMeta('silaboBaseId');
  GeneratedIntColumn _silaboBaseId;
  @override
  GeneratedIntColumn get silaboBaseId =>
      _silaboBaseId ??= _constructSilaboBaseId();
  GeneratedIntColumn _constructSilaboBaseId() {
    return GeneratedIntColumn(
      'silabo_base_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _cargaCursoIdMeta =
      const VerificationMeta('cargaCursoId');
  GeneratedIntColumn _cargaCursoId;
  @override
  GeneratedIntColumn get cargaCursoId =>
      _cargaCursoId ??= _constructCargaCursoId();
  GeneratedIntColumn _constructCargaCursoId() {
    return GeneratedIntColumn(
      'carga_curso_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _parametroDisenioIdMeta =
      const VerificationMeta('parametroDisenioId');
  GeneratedIntColumn _parametroDisenioId;
  @override
  GeneratedIntColumn get parametroDisenioId =>
      _parametroDisenioId ??= _constructParametroDisenioId();
  GeneratedIntColumn _constructParametroDisenioId() {
    return GeneratedIntColumn(
      'parametro_disenio_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fechaInicioMeta =
      const VerificationMeta('fechaInicio');
  GeneratedTextColumn _fechaInicio;
  @override
  GeneratedTextColumn get fechaInicio =>
      _fechaInicio ??= _constructFechaInicio();
  GeneratedTextColumn _constructFechaInicio() {
    return GeneratedTextColumn(
      'fecha_inicio',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fechaFinMeta = const VerificationMeta('fechaFin');
  GeneratedTextColumn _fechaFin;
  @override
  GeneratedTextColumn get fechaFin => _fechaFin ??= _constructFechaFin();
  GeneratedTextColumn _constructFechaFin() {
    return GeneratedTextColumn(
      'fecha_fin',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        silaboEventoId,
        titulo,
        descripcionGeneral,
        planCursoId,
        entidadId,
        docenteId,
        seccionId,
        estadoId,
        anioAcademicoId,
        georeferenciaId,
        silaboBaseId,
        cargaCursoId,
        parametroDisenioId,
        fechaInicio,
        fechaFin
      ];
  @override
  $SilaboEventoTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'silabo_evento';
  @override
  final String actualTableName = 'silabo_evento';
  @override
  VerificationContext validateIntegrity(Insertable<SilaboEventoData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('silabo_evento_id')) {
      context.handle(
          _silaboEventoIdMeta,
          silaboEventoId.isAcceptableOrUnknown(
              data['silabo_evento_id'], _silaboEventoIdMeta));
    }
    if (data.containsKey('titulo')) {
      context.handle(_tituloMeta,
          titulo.isAcceptableOrUnknown(data['titulo'], _tituloMeta));
    }
    if (data.containsKey('descripcion_general')) {
      context.handle(
          _descripcionGeneralMeta,
          descripcionGeneral.isAcceptableOrUnknown(
              data['descripcion_general'], _descripcionGeneralMeta));
    }
    if (data.containsKey('plan_curso_id')) {
      context.handle(
          _planCursoIdMeta,
          planCursoId.isAcceptableOrUnknown(
              data['plan_curso_id'], _planCursoIdMeta));
    }
    if (data.containsKey('entidad_id')) {
      context.handle(_entidadIdMeta,
          entidadId.isAcceptableOrUnknown(data['entidad_id'], _entidadIdMeta));
    }
    if (data.containsKey('docente_id')) {
      context.handle(_docenteIdMeta,
          docenteId.isAcceptableOrUnknown(data['docente_id'], _docenteIdMeta));
    }
    if (data.containsKey('seccion_id')) {
      context.handle(_seccionIdMeta,
          seccionId.isAcceptableOrUnknown(data['seccion_id'], _seccionIdMeta));
    }
    if (data.containsKey('estado_id')) {
      context.handle(_estadoIdMeta,
          estadoId.isAcceptableOrUnknown(data['estado_id'], _estadoIdMeta));
    }
    if (data.containsKey('anio_academico_id')) {
      context.handle(
          _anioAcademicoIdMeta,
          anioAcademicoId.isAcceptableOrUnknown(
              data['anio_academico_id'], _anioAcademicoIdMeta));
    }
    if (data.containsKey('georeferencia_id')) {
      context.handle(
          _georeferenciaIdMeta,
          georeferenciaId.isAcceptableOrUnknown(
              data['georeferencia_id'], _georeferenciaIdMeta));
    }
    if (data.containsKey('silabo_base_id')) {
      context.handle(
          _silaboBaseIdMeta,
          silaboBaseId.isAcceptableOrUnknown(
              data['silabo_base_id'], _silaboBaseIdMeta));
    }
    if (data.containsKey('carga_curso_id')) {
      context.handle(
          _cargaCursoIdMeta,
          cargaCursoId.isAcceptableOrUnknown(
              data['carga_curso_id'], _cargaCursoIdMeta));
    }
    if (data.containsKey('parametro_disenio_id')) {
      context.handle(
          _parametroDisenioIdMeta,
          parametroDisenioId.isAcceptableOrUnknown(
              data['parametro_disenio_id'], _parametroDisenioIdMeta));
    }
    if (data.containsKey('fecha_inicio')) {
      context.handle(
          _fechaInicioMeta,
          fechaInicio.isAcceptableOrUnknown(
              data['fecha_inicio'], _fechaInicioMeta));
    }
    if (data.containsKey('fecha_fin')) {
      context.handle(_fechaFinMeta,
          fechaFin.isAcceptableOrUnknown(data['fecha_fin'], _fechaFinMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {silaboEventoId};
  @override
  SilaboEventoData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return SilaboEventoData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $SilaboEventoTable createAlias(String alias) {
    return $SilaboEventoTable(_db, alias);
  }
}

class RubroEvalDesempenioData extends DataClass
    implements Insertable<RubroEvalDesempenioData> {
  final String nombreCurso;
  final DateTime fechaEvaluacion;
  final String tituloEvaluacion;
  final String formaEvaluacion;
  final int tipoRubroEvalId;
  final int cargaCursoId;
  final int silaboEventoId;
  final int anioAcademicoId;
  final int programaAcadId;
  final String rubroEvalProcesoId;
  final int alumnoId;
  final int gradoId;
  final String grado;
  final int seccionId;
  final String seccion;
  final int calendarioPeriodoId;
  final int parametroDesenioId;
  final String iconoNivelLogro;
  final String tituloNivelLogro;
  final String descripcionNivelLogro;
  final int tipoIdNivelLogro;
  final double notaEvalaucion;
  final String desempenioEvalaucion;
  final int desempenioIcdTipoId;
  final String evaluacionProcesoId;
  RubroEvalDesempenioData(
      {this.nombreCurso,
      this.fechaEvaluacion,
      this.tituloEvaluacion,
      this.formaEvaluacion,
      this.tipoRubroEvalId,
      this.cargaCursoId,
      this.silaboEventoId,
      this.anioAcademicoId,
      this.programaAcadId,
      this.rubroEvalProcesoId,
      this.alumnoId,
      this.gradoId,
      this.grado,
      this.seccionId,
      this.seccion,
      this.calendarioPeriodoId,
      this.parametroDesenioId,
      this.iconoNivelLogro,
      this.tituloNivelLogro,
      this.descripcionNivelLogro,
      this.tipoIdNivelLogro,
      this.notaEvalaucion,
      this.desempenioEvalaucion,
      this.desempenioIcdTipoId,
      @required this.evaluacionProcesoId});
  factory RubroEvalDesempenioData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final intType = db.typeSystem.forDartType<int>();
    final doubleType = db.typeSystem.forDartType<double>();
    return RubroEvalDesempenioData(
      nombreCurso: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}nombre_curso']),
      fechaEvaluacion: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}fecha_evaluacion']),
      tituloEvaluacion: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}titulo_evaluacion']),
      formaEvaluacion: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}forma_evaluacion']),
      tipoRubroEvalId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}tipo_rubro_eval_id']),
      cargaCursoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}carga_curso_id']),
      silaboEventoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}silabo_evento_id']),
      anioAcademicoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}anio_academico_id']),
      programaAcadId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}programa_acad_id']),
      rubroEvalProcesoId: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}rubro_eval_proceso_id']),
      alumnoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}alumno_id']),
      gradoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}grado_id']),
      grado:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}grado']),
      seccionId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}seccion_id']),
      seccion:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}seccion']),
      calendarioPeriodoId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}calendario_periodo_id']),
      parametroDesenioId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}parametro_desenio_id']),
      iconoNivelLogro: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}icono_nivel_logro']),
      tituloNivelLogro: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}titulo_nivel_logro']),
      descripcionNivelLogro: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}descripcion_nivel_logro']),
      tipoIdNivelLogro: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}tipo_id_nivel_logro']),
      notaEvalaucion: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}nota_evalaucion']),
      desempenioEvalaucion: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}desempenio_evalaucion']),
      desempenioIcdTipoId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}desempenio_icd_tipo_id']),
      evaluacionProcesoId: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}evaluacion_proceso_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || nombreCurso != null) {
      map['nombre_curso'] = Variable<String>(nombreCurso);
    }
    if (!nullToAbsent || fechaEvaluacion != null) {
      map['fecha_evaluacion'] = Variable<DateTime>(fechaEvaluacion);
    }
    if (!nullToAbsent || tituloEvaluacion != null) {
      map['titulo_evaluacion'] = Variable<String>(tituloEvaluacion);
    }
    if (!nullToAbsent || formaEvaluacion != null) {
      map['forma_evaluacion'] = Variable<String>(formaEvaluacion);
    }
    if (!nullToAbsent || tipoRubroEvalId != null) {
      map['tipo_rubro_eval_id'] = Variable<int>(tipoRubroEvalId);
    }
    if (!nullToAbsent || cargaCursoId != null) {
      map['carga_curso_id'] = Variable<int>(cargaCursoId);
    }
    if (!nullToAbsent || silaboEventoId != null) {
      map['silabo_evento_id'] = Variable<int>(silaboEventoId);
    }
    if (!nullToAbsent || anioAcademicoId != null) {
      map['anio_academico_id'] = Variable<int>(anioAcademicoId);
    }
    if (!nullToAbsent || programaAcadId != null) {
      map['programa_acad_id'] = Variable<int>(programaAcadId);
    }
    if (!nullToAbsent || rubroEvalProcesoId != null) {
      map['rubro_eval_proceso_id'] = Variable<String>(rubroEvalProcesoId);
    }
    if (!nullToAbsent || alumnoId != null) {
      map['alumno_id'] = Variable<int>(alumnoId);
    }
    if (!nullToAbsent || gradoId != null) {
      map['grado_id'] = Variable<int>(gradoId);
    }
    if (!nullToAbsent || grado != null) {
      map['grado'] = Variable<String>(grado);
    }
    if (!nullToAbsent || seccionId != null) {
      map['seccion_id'] = Variable<int>(seccionId);
    }
    if (!nullToAbsent || seccion != null) {
      map['seccion'] = Variable<String>(seccion);
    }
    if (!nullToAbsent || calendarioPeriodoId != null) {
      map['calendario_periodo_id'] = Variable<int>(calendarioPeriodoId);
    }
    if (!nullToAbsent || parametroDesenioId != null) {
      map['parametro_desenio_id'] = Variable<int>(parametroDesenioId);
    }
    if (!nullToAbsent || iconoNivelLogro != null) {
      map['icono_nivel_logro'] = Variable<String>(iconoNivelLogro);
    }
    if (!nullToAbsent || tituloNivelLogro != null) {
      map['titulo_nivel_logro'] = Variable<String>(tituloNivelLogro);
    }
    if (!nullToAbsent || descripcionNivelLogro != null) {
      map['descripcion_nivel_logro'] = Variable<String>(descripcionNivelLogro);
    }
    if (!nullToAbsent || tipoIdNivelLogro != null) {
      map['tipo_id_nivel_logro'] = Variable<int>(tipoIdNivelLogro);
    }
    if (!nullToAbsent || notaEvalaucion != null) {
      map['nota_evalaucion'] = Variable<double>(notaEvalaucion);
    }
    if (!nullToAbsent || desempenioEvalaucion != null) {
      map['desempenio_evalaucion'] = Variable<String>(desempenioEvalaucion);
    }
    if (!nullToAbsent || desempenioIcdTipoId != null) {
      map['desempenio_icd_tipo_id'] = Variable<int>(desempenioIcdTipoId);
    }
    if (!nullToAbsent || evaluacionProcesoId != null) {
      map['evaluacion_proceso_id'] = Variable<String>(evaluacionProcesoId);
    }
    return map;
  }

  RubroEvalDesempenioCompanion toCompanion(bool nullToAbsent) {
    return RubroEvalDesempenioCompanion(
      nombreCurso: nombreCurso == null && nullToAbsent
          ? const Value.absent()
          : Value(nombreCurso),
      fechaEvaluacion: fechaEvaluacion == null && nullToAbsent
          ? const Value.absent()
          : Value(fechaEvaluacion),
      tituloEvaluacion: tituloEvaluacion == null && nullToAbsent
          ? const Value.absent()
          : Value(tituloEvaluacion),
      formaEvaluacion: formaEvaluacion == null && nullToAbsent
          ? const Value.absent()
          : Value(formaEvaluacion),
      tipoRubroEvalId: tipoRubroEvalId == null && nullToAbsent
          ? const Value.absent()
          : Value(tipoRubroEvalId),
      cargaCursoId: cargaCursoId == null && nullToAbsent
          ? const Value.absent()
          : Value(cargaCursoId),
      silaboEventoId: silaboEventoId == null && nullToAbsent
          ? const Value.absent()
          : Value(silaboEventoId),
      anioAcademicoId: anioAcademicoId == null && nullToAbsent
          ? const Value.absent()
          : Value(anioAcademicoId),
      programaAcadId: programaAcadId == null && nullToAbsent
          ? const Value.absent()
          : Value(programaAcadId),
      rubroEvalProcesoId: rubroEvalProcesoId == null && nullToAbsent
          ? const Value.absent()
          : Value(rubroEvalProcesoId),
      alumnoId: alumnoId == null && nullToAbsent
          ? const Value.absent()
          : Value(alumnoId),
      gradoId: gradoId == null && nullToAbsent
          ? const Value.absent()
          : Value(gradoId),
      grado:
          grado == null && nullToAbsent ? const Value.absent() : Value(grado),
      seccionId: seccionId == null && nullToAbsent
          ? const Value.absent()
          : Value(seccionId),
      seccion: seccion == null && nullToAbsent
          ? const Value.absent()
          : Value(seccion),
      calendarioPeriodoId: calendarioPeriodoId == null && nullToAbsent
          ? const Value.absent()
          : Value(calendarioPeriodoId),
      parametroDesenioId: parametroDesenioId == null && nullToAbsent
          ? const Value.absent()
          : Value(parametroDesenioId),
      iconoNivelLogro: iconoNivelLogro == null && nullToAbsent
          ? const Value.absent()
          : Value(iconoNivelLogro),
      tituloNivelLogro: tituloNivelLogro == null && nullToAbsent
          ? const Value.absent()
          : Value(tituloNivelLogro),
      descripcionNivelLogro: descripcionNivelLogro == null && nullToAbsent
          ? const Value.absent()
          : Value(descripcionNivelLogro),
      tipoIdNivelLogro: tipoIdNivelLogro == null && nullToAbsent
          ? const Value.absent()
          : Value(tipoIdNivelLogro),
      notaEvalaucion: notaEvalaucion == null && nullToAbsent
          ? const Value.absent()
          : Value(notaEvalaucion),
      desempenioEvalaucion: desempenioEvalaucion == null && nullToAbsent
          ? const Value.absent()
          : Value(desempenioEvalaucion),
      desempenioIcdTipoId: desempenioIcdTipoId == null && nullToAbsent
          ? const Value.absent()
          : Value(desempenioIcdTipoId),
      evaluacionProcesoId: evaluacionProcesoId == null && nullToAbsent
          ? const Value.absent()
          : Value(evaluacionProcesoId),
    );
  }

  factory RubroEvalDesempenioData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return RubroEvalDesempenioData(
      nombreCurso: serializer.fromJson<String>(json['nombreCurso']),
      fechaEvaluacion: serializer.fromJson<DateTime>(json['fechaEvaluacion']),
      tituloEvaluacion: serializer.fromJson<String>(json['tituloEvaluacion']),
      formaEvaluacion: serializer.fromJson<String>(json['formaEvaluacion']),
      tipoRubroEvalId: serializer.fromJson<int>(json['tipoRubroEvalId']),
      cargaCursoId: serializer.fromJson<int>(json['cargaCursoId']),
      silaboEventoId: serializer.fromJson<int>(json['silaboEventoId']),
      anioAcademicoId: serializer.fromJson<int>(json['anioAcademicoId']),
      programaAcadId: serializer.fromJson<int>(json['programaAcadId']),
      rubroEvalProcesoId:
          serializer.fromJson<String>(json['rubroEvalProcesoId']),
      alumnoId: serializer.fromJson<int>(json['alumnoId']),
      gradoId: serializer.fromJson<int>(json['gradoId']),
      grado: serializer.fromJson<String>(json['grado']),
      seccionId: serializer.fromJson<int>(json['seccionId']),
      seccion: serializer.fromJson<String>(json['seccion']),
      calendarioPeriodoId:
          serializer.fromJson<int>(json['calendarioPeriodoId']),
      parametroDesenioId: serializer.fromJson<int>(json['parametroDesenioId']),
      iconoNivelLogro: serializer.fromJson<String>(json['iconoNivelLogro']),
      tituloNivelLogro: serializer.fromJson<String>(json['tituloNivelLogro']),
      descripcionNivelLogro:
          serializer.fromJson<String>(json['descripcionNivelLogro']),
      tipoIdNivelLogro: serializer.fromJson<int>(json['tipoIdNivelLogro']),
      notaEvalaucion: serializer.fromJson<double>(json['notaEvalaucion']),
      desempenioEvalaucion:
          serializer.fromJson<String>(json['desempenioEvalaucion']),
      desempenioIcdTipoId:
          serializer.fromJson<int>(json['desempenioIcdTipoId']),
      evaluacionProcesoId:
          serializer.fromJson<String>(json['evaluacionProcesoId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'nombreCurso': serializer.toJson<String>(nombreCurso),
      'fechaEvaluacion': serializer.toJson<DateTime>(fechaEvaluacion),
      'tituloEvaluacion': serializer.toJson<String>(tituloEvaluacion),
      'formaEvaluacion': serializer.toJson<String>(formaEvaluacion),
      'tipoRubroEvalId': serializer.toJson<int>(tipoRubroEvalId),
      'cargaCursoId': serializer.toJson<int>(cargaCursoId),
      'silaboEventoId': serializer.toJson<int>(silaboEventoId),
      'anioAcademicoId': serializer.toJson<int>(anioAcademicoId),
      'programaAcadId': serializer.toJson<int>(programaAcadId),
      'rubroEvalProcesoId': serializer.toJson<String>(rubroEvalProcesoId),
      'alumnoId': serializer.toJson<int>(alumnoId),
      'gradoId': serializer.toJson<int>(gradoId),
      'grado': serializer.toJson<String>(grado),
      'seccionId': serializer.toJson<int>(seccionId),
      'seccion': serializer.toJson<String>(seccion),
      'calendarioPeriodoId': serializer.toJson<int>(calendarioPeriodoId),
      'parametroDesenioId': serializer.toJson<int>(parametroDesenioId),
      'iconoNivelLogro': serializer.toJson<String>(iconoNivelLogro),
      'tituloNivelLogro': serializer.toJson<String>(tituloNivelLogro),
      'descripcionNivelLogro': serializer.toJson<String>(descripcionNivelLogro),
      'tipoIdNivelLogro': serializer.toJson<int>(tipoIdNivelLogro),
      'notaEvalaucion': serializer.toJson<double>(notaEvalaucion),
      'desempenioEvalaucion': serializer.toJson<String>(desempenioEvalaucion),
      'desempenioIcdTipoId': serializer.toJson<int>(desempenioIcdTipoId),
      'evaluacionProcesoId': serializer.toJson<String>(evaluacionProcesoId),
    };
  }

  RubroEvalDesempenioData copyWith(
          {String nombreCurso,
          DateTime fechaEvaluacion,
          String tituloEvaluacion,
          String formaEvaluacion,
          int tipoRubroEvalId,
          int cargaCursoId,
          int silaboEventoId,
          int anioAcademicoId,
          int programaAcadId,
          String rubroEvalProcesoId,
          int alumnoId,
          int gradoId,
          String grado,
          int seccionId,
          String seccion,
          int calendarioPeriodoId,
          int parametroDesenioId,
          String iconoNivelLogro,
          String tituloNivelLogro,
          String descripcionNivelLogro,
          int tipoIdNivelLogro,
          double notaEvalaucion,
          String desempenioEvalaucion,
          int desempenioIcdTipoId,
          String evaluacionProcesoId}) =>
      RubroEvalDesempenioData(
        nombreCurso: nombreCurso ?? this.nombreCurso,
        fechaEvaluacion: fechaEvaluacion ?? this.fechaEvaluacion,
        tituloEvaluacion: tituloEvaluacion ?? this.tituloEvaluacion,
        formaEvaluacion: formaEvaluacion ?? this.formaEvaluacion,
        tipoRubroEvalId: tipoRubroEvalId ?? this.tipoRubroEvalId,
        cargaCursoId: cargaCursoId ?? this.cargaCursoId,
        silaboEventoId: silaboEventoId ?? this.silaboEventoId,
        anioAcademicoId: anioAcademicoId ?? this.anioAcademicoId,
        programaAcadId: programaAcadId ?? this.programaAcadId,
        rubroEvalProcesoId: rubroEvalProcesoId ?? this.rubroEvalProcesoId,
        alumnoId: alumnoId ?? this.alumnoId,
        gradoId: gradoId ?? this.gradoId,
        grado: grado ?? this.grado,
        seccionId: seccionId ?? this.seccionId,
        seccion: seccion ?? this.seccion,
        calendarioPeriodoId: calendarioPeriodoId ?? this.calendarioPeriodoId,
        parametroDesenioId: parametroDesenioId ?? this.parametroDesenioId,
        iconoNivelLogro: iconoNivelLogro ?? this.iconoNivelLogro,
        tituloNivelLogro: tituloNivelLogro ?? this.tituloNivelLogro,
        descripcionNivelLogro:
            descripcionNivelLogro ?? this.descripcionNivelLogro,
        tipoIdNivelLogro: tipoIdNivelLogro ?? this.tipoIdNivelLogro,
        notaEvalaucion: notaEvalaucion ?? this.notaEvalaucion,
        desempenioEvalaucion: desempenioEvalaucion ?? this.desempenioEvalaucion,
        desempenioIcdTipoId: desempenioIcdTipoId ?? this.desempenioIcdTipoId,
        evaluacionProcesoId: evaluacionProcesoId ?? this.evaluacionProcesoId,
      );
  @override
  String toString() {
    return (StringBuffer('RubroEvalDesempenioData(')
          ..write('nombreCurso: $nombreCurso, ')
          ..write('fechaEvaluacion: $fechaEvaluacion, ')
          ..write('tituloEvaluacion: $tituloEvaluacion, ')
          ..write('formaEvaluacion: $formaEvaluacion, ')
          ..write('tipoRubroEvalId: $tipoRubroEvalId, ')
          ..write('cargaCursoId: $cargaCursoId, ')
          ..write('silaboEventoId: $silaboEventoId, ')
          ..write('anioAcademicoId: $anioAcademicoId, ')
          ..write('programaAcadId: $programaAcadId, ')
          ..write('rubroEvalProcesoId: $rubroEvalProcesoId, ')
          ..write('alumnoId: $alumnoId, ')
          ..write('gradoId: $gradoId, ')
          ..write('grado: $grado, ')
          ..write('seccionId: $seccionId, ')
          ..write('seccion: $seccion, ')
          ..write('calendarioPeriodoId: $calendarioPeriodoId, ')
          ..write('parametroDesenioId: $parametroDesenioId, ')
          ..write('iconoNivelLogro: $iconoNivelLogro, ')
          ..write('tituloNivelLogro: $tituloNivelLogro, ')
          ..write('descripcionNivelLogro: $descripcionNivelLogro, ')
          ..write('tipoIdNivelLogro: $tipoIdNivelLogro, ')
          ..write('notaEvalaucion: $notaEvalaucion, ')
          ..write('desempenioEvalaucion: $desempenioEvalaucion, ')
          ..write('desempenioIcdTipoId: $desempenioIcdTipoId, ')
          ..write('evaluacionProcesoId: $evaluacionProcesoId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      nombreCurso.hashCode,
      $mrjc(
          fechaEvaluacion.hashCode,
          $mrjc(
              tituloEvaluacion.hashCode,
              $mrjc(
                  formaEvaluacion.hashCode,
                  $mrjc(
                      tipoRubroEvalId.hashCode,
                      $mrjc(
                          cargaCursoId.hashCode,
                          $mrjc(
                              silaboEventoId.hashCode,
                              $mrjc(
                                  anioAcademicoId.hashCode,
                                  $mrjc(
                                      programaAcadId.hashCode,
                                      $mrjc(
                                          rubroEvalProcesoId.hashCode,
                                          $mrjc(
                                              alumnoId.hashCode,
                                              $mrjc(
                                                  gradoId.hashCode,
                                                  $mrjc(
                                                      grado.hashCode,
                                                      $mrjc(
                                                          seccionId.hashCode,
                                                          $mrjc(
                                                              seccion.hashCode,
                                                              $mrjc(
                                                                  calendarioPeriodoId
                                                                      .hashCode,
                                                                  $mrjc(
                                                                      parametroDesenioId
                                                                          .hashCode,
                                                                      $mrjc(
                                                                          iconoNivelLogro
                                                                              .hashCode,
                                                                          $mrjc(
                                                                              tituloNivelLogro.hashCode,
                                                                              $mrjc(descripcionNivelLogro.hashCode, $mrjc(tipoIdNivelLogro.hashCode, $mrjc(notaEvalaucion.hashCode, $mrjc(desempenioEvalaucion.hashCode, $mrjc(desempenioIcdTipoId.hashCode, evaluacionProcesoId.hashCode)))))))))))))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is RubroEvalDesempenioData &&
          other.nombreCurso == this.nombreCurso &&
          other.fechaEvaluacion == this.fechaEvaluacion &&
          other.tituloEvaluacion == this.tituloEvaluacion &&
          other.formaEvaluacion == this.formaEvaluacion &&
          other.tipoRubroEvalId == this.tipoRubroEvalId &&
          other.cargaCursoId == this.cargaCursoId &&
          other.silaboEventoId == this.silaboEventoId &&
          other.anioAcademicoId == this.anioAcademicoId &&
          other.programaAcadId == this.programaAcadId &&
          other.rubroEvalProcesoId == this.rubroEvalProcesoId &&
          other.alumnoId == this.alumnoId &&
          other.gradoId == this.gradoId &&
          other.grado == this.grado &&
          other.seccionId == this.seccionId &&
          other.seccion == this.seccion &&
          other.calendarioPeriodoId == this.calendarioPeriodoId &&
          other.parametroDesenioId == this.parametroDesenioId &&
          other.iconoNivelLogro == this.iconoNivelLogro &&
          other.tituloNivelLogro == this.tituloNivelLogro &&
          other.descripcionNivelLogro == this.descripcionNivelLogro &&
          other.tipoIdNivelLogro == this.tipoIdNivelLogro &&
          other.notaEvalaucion == this.notaEvalaucion &&
          other.desempenioEvalaucion == this.desempenioEvalaucion &&
          other.desempenioIcdTipoId == this.desempenioIcdTipoId &&
          other.evaluacionProcesoId == this.evaluacionProcesoId);
}

class RubroEvalDesempenioCompanion
    extends UpdateCompanion<RubroEvalDesempenioData> {
  final Value<String> nombreCurso;
  final Value<DateTime> fechaEvaluacion;
  final Value<String> tituloEvaluacion;
  final Value<String> formaEvaluacion;
  final Value<int> tipoRubroEvalId;
  final Value<int> cargaCursoId;
  final Value<int> silaboEventoId;
  final Value<int> anioAcademicoId;
  final Value<int> programaAcadId;
  final Value<String> rubroEvalProcesoId;
  final Value<int> alumnoId;
  final Value<int> gradoId;
  final Value<String> grado;
  final Value<int> seccionId;
  final Value<String> seccion;
  final Value<int> calendarioPeriodoId;
  final Value<int> parametroDesenioId;
  final Value<String> iconoNivelLogro;
  final Value<String> tituloNivelLogro;
  final Value<String> descripcionNivelLogro;
  final Value<int> tipoIdNivelLogro;
  final Value<double> notaEvalaucion;
  final Value<String> desempenioEvalaucion;
  final Value<int> desempenioIcdTipoId;
  final Value<String> evaluacionProcesoId;
  const RubroEvalDesempenioCompanion({
    this.nombreCurso = const Value.absent(),
    this.fechaEvaluacion = const Value.absent(),
    this.tituloEvaluacion = const Value.absent(),
    this.formaEvaluacion = const Value.absent(),
    this.tipoRubroEvalId = const Value.absent(),
    this.cargaCursoId = const Value.absent(),
    this.silaboEventoId = const Value.absent(),
    this.anioAcademicoId = const Value.absent(),
    this.programaAcadId = const Value.absent(),
    this.rubroEvalProcesoId = const Value.absent(),
    this.alumnoId = const Value.absent(),
    this.gradoId = const Value.absent(),
    this.grado = const Value.absent(),
    this.seccionId = const Value.absent(),
    this.seccion = const Value.absent(),
    this.calendarioPeriodoId = const Value.absent(),
    this.parametroDesenioId = const Value.absent(),
    this.iconoNivelLogro = const Value.absent(),
    this.tituloNivelLogro = const Value.absent(),
    this.descripcionNivelLogro = const Value.absent(),
    this.tipoIdNivelLogro = const Value.absent(),
    this.notaEvalaucion = const Value.absent(),
    this.desempenioEvalaucion = const Value.absent(),
    this.desempenioIcdTipoId = const Value.absent(),
    this.evaluacionProcesoId = const Value.absent(),
  });
  RubroEvalDesempenioCompanion.insert({
    this.nombreCurso = const Value.absent(),
    this.fechaEvaluacion = const Value.absent(),
    this.tituloEvaluacion = const Value.absent(),
    this.formaEvaluacion = const Value.absent(),
    this.tipoRubroEvalId = const Value.absent(),
    this.cargaCursoId = const Value.absent(),
    this.silaboEventoId = const Value.absent(),
    this.anioAcademicoId = const Value.absent(),
    this.programaAcadId = const Value.absent(),
    this.rubroEvalProcesoId = const Value.absent(),
    this.alumnoId = const Value.absent(),
    this.gradoId = const Value.absent(),
    this.grado = const Value.absent(),
    this.seccionId = const Value.absent(),
    this.seccion = const Value.absent(),
    this.calendarioPeriodoId = const Value.absent(),
    this.parametroDesenioId = const Value.absent(),
    this.iconoNivelLogro = const Value.absent(),
    this.tituloNivelLogro = const Value.absent(),
    this.descripcionNivelLogro = const Value.absent(),
    this.tipoIdNivelLogro = const Value.absent(),
    this.notaEvalaucion = const Value.absent(),
    this.desempenioEvalaucion = const Value.absent(),
    this.desempenioIcdTipoId = const Value.absent(),
    @required String evaluacionProcesoId,
  }) : evaluacionProcesoId = Value(evaluacionProcesoId);
  static Insertable<RubroEvalDesempenioData> custom({
    Expression<String> nombreCurso,
    Expression<DateTime> fechaEvaluacion,
    Expression<String> tituloEvaluacion,
    Expression<String> formaEvaluacion,
    Expression<int> tipoRubroEvalId,
    Expression<int> cargaCursoId,
    Expression<int> silaboEventoId,
    Expression<int> anioAcademicoId,
    Expression<int> programaAcadId,
    Expression<String> rubroEvalProcesoId,
    Expression<int> alumnoId,
    Expression<int> gradoId,
    Expression<String> grado,
    Expression<int> seccionId,
    Expression<String> seccion,
    Expression<int> calendarioPeriodoId,
    Expression<int> parametroDesenioId,
    Expression<String> iconoNivelLogro,
    Expression<String> tituloNivelLogro,
    Expression<String> descripcionNivelLogro,
    Expression<int> tipoIdNivelLogro,
    Expression<double> notaEvalaucion,
    Expression<String> desempenioEvalaucion,
    Expression<int> desempenioIcdTipoId,
    Expression<String> evaluacionProcesoId,
  }) {
    return RawValuesInsertable({
      if (nombreCurso != null) 'nombre_curso': nombreCurso,
      if (fechaEvaluacion != null) 'fecha_evaluacion': fechaEvaluacion,
      if (tituloEvaluacion != null) 'titulo_evaluacion': tituloEvaluacion,
      if (formaEvaluacion != null) 'forma_evaluacion': formaEvaluacion,
      if (tipoRubroEvalId != null) 'tipo_rubro_eval_id': tipoRubroEvalId,
      if (cargaCursoId != null) 'carga_curso_id': cargaCursoId,
      if (silaboEventoId != null) 'silabo_evento_id': silaboEventoId,
      if (anioAcademicoId != null) 'anio_academico_id': anioAcademicoId,
      if (programaAcadId != null) 'programa_acad_id': programaAcadId,
      if (rubroEvalProcesoId != null)
        'rubro_eval_proceso_id': rubroEvalProcesoId,
      if (alumnoId != null) 'alumno_id': alumnoId,
      if (gradoId != null) 'grado_id': gradoId,
      if (grado != null) 'grado': grado,
      if (seccionId != null) 'seccion_id': seccionId,
      if (seccion != null) 'seccion': seccion,
      if (calendarioPeriodoId != null)
        'calendario_periodo_id': calendarioPeriodoId,
      if (parametroDesenioId != null)
        'parametro_desenio_id': parametroDesenioId,
      if (iconoNivelLogro != null) 'icono_nivel_logro': iconoNivelLogro,
      if (tituloNivelLogro != null) 'titulo_nivel_logro': tituloNivelLogro,
      if (descripcionNivelLogro != null)
        'descripcion_nivel_logro': descripcionNivelLogro,
      if (tipoIdNivelLogro != null) 'tipo_id_nivel_logro': tipoIdNivelLogro,
      if (notaEvalaucion != null) 'nota_evalaucion': notaEvalaucion,
      if (desempenioEvalaucion != null)
        'desempenio_evalaucion': desempenioEvalaucion,
      if (desempenioIcdTipoId != null)
        'desempenio_icd_tipo_id': desempenioIcdTipoId,
      if (evaluacionProcesoId != null)
        'evaluacion_proceso_id': evaluacionProcesoId,
    });
  }

  RubroEvalDesempenioCompanion copyWith(
      {Value<String> nombreCurso,
      Value<DateTime> fechaEvaluacion,
      Value<String> tituloEvaluacion,
      Value<String> formaEvaluacion,
      Value<int> tipoRubroEvalId,
      Value<int> cargaCursoId,
      Value<int> silaboEventoId,
      Value<int> anioAcademicoId,
      Value<int> programaAcadId,
      Value<String> rubroEvalProcesoId,
      Value<int> alumnoId,
      Value<int> gradoId,
      Value<String> grado,
      Value<int> seccionId,
      Value<String> seccion,
      Value<int> calendarioPeriodoId,
      Value<int> parametroDesenioId,
      Value<String> iconoNivelLogro,
      Value<String> tituloNivelLogro,
      Value<String> descripcionNivelLogro,
      Value<int> tipoIdNivelLogro,
      Value<double> notaEvalaucion,
      Value<String> desempenioEvalaucion,
      Value<int> desempenioIcdTipoId,
      Value<String> evaluacionProcesoId}) {
    return RubroEvalDesempenioCompanion(
      nombreCurso: nombreCurso ?? this.nombreCurso,
      fechaEvaluacion: fechaEvaluacion ?? this.fechaEvaluacion,
      tituloEvaluacion: tituloEvaluacion ?? this.tituloEvaluacion,
      formaEvaluacion: formaEvaluacion ?? this.formaEvaluacion,
      tipoRubroEvalId: tipoRubroEvalId ?? this.tipoRubroEvalId,
      cargaCursoId: cargaCursoId ?? this.cargaCursoId,
      silaboEventoId: silaboEventoId ?? this.silaboEventoId,
      anioAcademicoId: anioAcademicoId ?? this.anioAcademicoId,
      programaAcadId: programaAcadId ?? this.programaAcadId,
      rubroEvalProcesoId: rubroEvalProcesoId ?? this.rubroEvalProcesoId,
      alumnoId: alumnoId ?? this.alumnoId,
      gradoId: gradoId ?? this.gradoId,
      grado: grado ?? this.grado,
      seccionId: seccionId ?? this.seccionId,
      seccion: seccion ?? this.seccion,
      calendarioPeriodoId: calendarioPeriodoId ?? this.calendarioPeriodoId,
      parametroDesenioId: parametroDesenioId ?? this.parametroDesenioId,
      iconoNivelLogro: iconoNivelLogro ?? this.iconoNivelLogro,
      tituloNivelLogro: tituloNivelLogro ?? this.tituloNivelLogro,
      descripcionNivelLogro:
          descripcionNivelLogro ?? this.descripcionNivelLogro,
      tipoIdNivelLogro: tipoIdNivelLogro ?? this.tipoIdNivelLogro,
      notaEvalaucion: notaEvalaucion ?? this.notaEvalaucion,
      desempenioEvalaucion: desempenioEvalaucion ?? this.desempenioEvalaucion,
      desempenioIcdTipoId: desempenioIcdTipoId ?? this.desempenioIcdTipoId,
      evaluacionProcesoId: evaluacionProcesoId ?? this.evaluacionProcesoId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (nombreCurso.present) {
      map['nombre_curso'] = Variable<String>(nombreCurso.value);
    }
    if (fechaEvaluacion.present) {
      map['fecha_evaluacion'] = Variable<DateTime>(fechaEvaluacion.value);
    }
    if (tituloEvaluacion.present) {
      map['titulo_evaluacion'] = Variable<String>(tituloEvaluacion.value);
    }
    if (formaEvaluacion.present) {
      map['forma_evaluacion'] = Variable<String>(formaEvaluacion.value);
    }
    if (tipoRubroEvalId.present) {
      map['tipo_rubro_eval_id'] = Variable<int>(tipoRubroEvalId.value);
    }
    if (cargaCursoId.present) {
      map['carga_curso_id'] = Variable<int>(cargaCursoId.value);
    }
    if (silaboEventoId.present) {
      map['silabo_evento_id'] = Variable<int>(silaboEventoId.value);
    }
    if (anioAcademicoId.present) {
      map['anio_academico_id'] = Variable<int>(anioAcademicoId.value);
    }
    if (programaAcadId.present) {
      map['programa_acad_id'] = Variable<int>(programaAcadId.value);
    }
    if (rubroEvalProcesoId.present) {
      map['rubro_eval_proceso_id'] = Variable<String>(rubroEvalProcesoId.value);
    }
    if (alumnoId.present) {
      map['alumno_id'] = Variable<int>(alumnoId.value);
    }
    if (gradoId.present) {
      map['grado_id'] = Variable<int>(gradoId.value);
    }
    if (grado.present) {
      map['grado'] = Variable<String>(grado.value);
    }
    if (seccionId.present) {
      map['seccion_id'] = Variable<int>(seccionId.value);
    }
    if (seccion.present) {
      map['seccion'] = Variable<String>(seccion.value);
    }
    if (calendarioPeriodoId.present) {
      map['calendario_periodo_id'] = Variable<int>(calendarioPeriodoId.value);
    }
    if (parametroDesenioId.present) {
      map['parametro_desenio_id'] = Variable<int>(parametroDesenioId.value);
    }
    if (iconoNivelLogro.present) {
      map['icono_nivel_logro'] = Variable<String>(iconoNivelLogro.value);
    }
    if (tituloNivelLogro.present) {
      map['titulo_nivel_logro'] = Variable<String>(tituloNivelLogro.value);
    }
    if (descripcionNivelLogro.present) {
      map['descripcion_nivel_logro'] =
          Variable<String>(descripcionNivelLogro.value);
    }
    if (tipoIdNivelLogro.present) {
      map['tipo_id_nivel_logro'] = Variable<int>(tipoIdNivelLogro.value);
    }
    if (notaEvalaucion.present) {
      map['nota_evalaucion'] = Variable<double>(notaEvalaucion.value);
    }
    if (desempenioEvalaucion.present) {
      map['desempenio_evalaucion'] =
          Variable<String>(desempenioEvalaucion.value);
    }
    if (desempenioIcdTipoId.present) {
      map['desempenio_icd_tipo_id'] = Variable<int>(desempenioIcdTipoId.value);
    }
    if (evaluacionProcesoId.present) {
      map['evaluacion_proceso_id'] =
          Variable<String>(evaluacionProcesoId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RubroEvalDesempenioCompanion(')
          ..write('nombreCurso: $nombreCurso, ')
          ..write('fechaEvaluacion: $fechaEvaluacion, ')
          ..write('tituloEvaluacion: $tituloEvaluacion, ')
          ..write('formaEvaluacion: $formaEvaluacion, ')
          ..write('tipoRubroEvalId: $tipoRubroEvalId, ')
          ..write('cargaCursoId: $cargaCursoId, ')
          ..write('silaboEventoId: $silaboEventoId, ')
          ..write('anioAcademicoId: $anioAcademicoId, ')
          ..write('programaAcadId: $programaAcadId, ')
          ..write('rubroEvalProcesoId: $rubroEvalProcesoId, ')
          ..write('alumnoId: $alumnoId, ')
          ..write('gradoId: $gradoId, ')
          ..write('grado: $grado, ')
          ..write('seccionId: $seccionId, ')
          ..write('seccion: $seccion, ')
          ..write('calendarioPeriodoId: $calendarioPeriodoId, ')
          ..write('parametroDesenioId: $parametroDesenioId, ')
          ..write('iconoNivelLogro: $iconoNivelLogro, ')
          ..write('tituloNivelLogro: $tituloNivelLogro, ')
          ..write('descripcionNivelLogro: $descripcionNivelLogro, ')
          ..write('tipoIdNivelLogro: $tipoIdNivelLogro, ')
          ..write('notaEvalaucion: $notaEvalaucion, ')
          ..write('desempenioEvalaucion: $desempenioEvalaucion, ')
          ..write('desempenioIcdTipoId: $desempenioIcdTipoId, ')
          ..write('evaluacionProcesoId: $evaluacionProcesoId')
          ..write(')'))
        .toString();
  }
}

class $RubroEvalDesempenioTable extends RubroEvalDesempenio
    with TableInfo<$RubroEvalDesempenioTable, RubroEvalDesempenioData> {
  final GeneratedDatabase _db;
  final String _alias;
  $RubroEvalDesempenioTable(this._db, [this._alias]);
  final VerificationMeta _nombreCursoMeta =
      const VerificationMeta('nombreCurso');
  GeneratedTextColumn _nombreCurso;
  @override
  GeneratedTextColumn get nombreCurso =>
      _nombreCurso ??= _constructNombreCurso();
  GeneratedTextColumn _constructNombreCurso() {
    return GeneratedTextColumn(
      'nombre_curso',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fechaEvaluacionMeta =
      const VerificationMeta('fechaEvaluacion');
  GeneratedDateTimeColumn _fechaEvaluacion;
  @override
  GeneratedDateTimeColumn get fechaEvaluacion =>
      _fechaEvaluacion ??= _constructFechaEvaluacion();
  GeneratedDateTimeColumn _constructFechaEvaluacion() {
    return GeneratedDateTimeColumn(
      'fecha_evaluacion',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tituloEvaluacionMeta =
      const VerificationMeta('tituloEvaluacion');
  GeneratedTextColumn _tituloEvaluacion;
  @override
  GeneratedTextColumn get tituloEvaluacion =>
      _tituloEvaluacion ??= _constructTituloEvaluacion();
  GeneratedTextColumn _constructTituloEvaluacion() {
    return GeneratedTextColumn(
      'titulo_evaluacion',
      $tableName,
      true,
    );
  }

  final VerificationMeta _formaEvaluacionMeta =
      const VerificationMeta('formaEvaluacion');
  GeneratedTextColumn _formaEvaluacion;
  @override
  GeneratedTextColumn get formaEvaluacion =>
      _formaEvaluacion ??= _constructFormaEvaluacion();
  GeneratedTextColumn _constructFormaEvaluacion() {
    return GeneratedTextColumn(
      'forma_evaluacion',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tipoRubroEvalIdMeta =
      const VerificationMeta('tipoRubroEvalId');
  GeneratedIntColumn _tipoRubroEvalId;
  @override
  GeneratedIntColumn get tipoRubroEvalId =>
      _tipoRubroEvalId ??= _constructTipoRubroEvalId();
  GeneratedIntColumn _constructTipoRubroEvalId() {
    return GeneratedIntColumn(
      'tipo_rubro_eval_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _cargaCursoIdMeta =
      const VerificationMeta('cargaCursoId');
  GeneratedIntColumn _cargaCursoId;
  @override
  GeneratedIntColumn get cargaCursoId =>
      _cargaCursoId ??= _constructCargaCursoId();
  GeneratedIntColumn _constructCargaCursoId() {
    return GeneratedIntColumn(
      'carga_curso_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _silaboEventoIdMeta =
      const VerificationMeta('silaboEventoId');
  GeneratedIntColumn _silaboEventoId;
  @override
  GeneratedIntColumn get silaboEventoId =>
      _silaboEventoId ??= _constructSilaboEventoId();
  GeneratedIntColumn _constructSilaboEventoId() {
    return GeneratedIntColumn(
      'silabo_evento_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _anioAcademicoIdMeta =
      const VerificationMeta('anioAcademicoId');
  GeneratedIntColumn _anioAcademicoId;
  @override
  GeneratedIntColumn get anioAcademicoId =>
      _anioAcademicoId ??= _constructAnioAcademicoId();
  GeneratedIntColumn _constructAnioAcademicoId() {
    return GeneratedIntColumn(
      'anio_academico_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _programaAcadIdMeta =
      const VerificationMeta('programaAcadId');
  GeneratedIntColumn _programaAcadId;
  @override
  GeneratedIntColumn get programaAcadId =>
      _programaAcadId ??= _constructProgramaAcadId();
  GeneratedIntColumn _constructProgramaAcadId() {
    return GeneratedIntColumn(
      'programa_acad_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _rubroEvalProcesoIdMeta =
      const VerificationMeta('rubroEvalProcesoId');
  GeneratedTextColumn _rubroEvalProcesoId;
  @override
  GeneratedTextColumn get rubroEvalProcesoId =>
      _rubroEvalProcesoId ??= _constructRubroEvalProcesoId();
  GeneratedTextColumn _constructRubroEvalProcesoId() {
    return GeneratedTextColumn(
      'rubro_eval_proceso_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _alumnoIdMeta = const VerificationMeta('alumnoId');
  GeneratedIntColumn _alumnoId;
  @override
  GeneratedIntColumn get alumnoId => _alumnoId ??= _constructAlumnoId();
  GeneratedIntColumn _constructAlumnoId() {
    return GeneratedIntColumn(
      'alumno_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _gradoIdMeta = const VerificationMeta('gradoId');
  GeneratedIntColumn _gradoId;
  @override
  GeneratedIntColumn get gradoId => _gradoId ??= _constructGradoId();
  GeneratedIntColumn _constructGradoId() {
    return GeneratedIntColumn(
      'grado_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _gradoMeta = const VerificationMeta('grado');
  GeneratedTextColumn _grado;
  @override
  GeneratedTextColumn get grado => _grado ??= _constructGrado();
  GeneratedTextColumn _constructGrado() {
    return GeneratedTextColumn(
      'grado',
      $tableName,
      true,
    );
  }

  final VerificationMeta _seccionIdMeta = const VerificationMeta('seccionId');
  GeneratedIntColumn _seccionId;
  @override
  GeneratedIntColumn get seccionId => _seccionId ??= _constructSeccionId();
  GeneratedIntColumn _constructSeccionId() {
    return GeneratedIntColumn(
      'seccion_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _seccionMeta = const VerificationMeta('seccion');
  GeneratedTextColumn _seccion;
  @override
  GeneratedTextColumn get seccion => _seccion ??= _constructSeccion();
  GeneratedTextColumn _constructSeccion() {
    return GeneratedTextColumn(
      'seccion',
      $tableName,
      true,
    );
  }

  final VerificationMeta _calendarioPeriodoIdMeta =
      const VerificationMeta('calendarioPeriodoId');
  GeneratedIntColumn _calendarioPeriodoId;
  @override
  GeneratedIntColumn get calendarioPeriodoId =>
      _calendarioPeriodoId ??= _constructCalendarioPeriodoId();
  GeneratedIntColumn _constructCalendarioPeriodoId() {
    return GeneratedIntColumn(
      'calendario_periodo_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _parametroDesenioIdMeta =
      const VerificationMeta('parametroDesenioId');
  GeneratedIntColumn _parametroDesenioId;
  @override
  GeneratedIntColumn get parametroDesenioId =>
      _parametroDesenioId ??= _constructParametroDesenioId();
  GeneratedIntColumn _constructParametroDesenioId() {
    return GeneratedIntColumn(
      'parametro_desenio_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _iconoNivelLogroMeta =
      const VerificationMeta('iconoNivelLogro');
  GeneratedTextColumn _iconoNivelLogro;
  @override
  GeneratedTextColumn get iconoNivelLogro =>
      _iconoNivelLogro ??= _constructIconoNivelLogro();
  GeneratedTextColumn _constructIconoNivelLogro() {
    return GeneratedTextColumn(
      'icono_nivel_logro',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tituloNivelLogroMeta =
      const VerificationMeta('tituloNivelLogro');
  GeneratedTextColumn _tituloNivelLogro;
  @override
  GeneratedTextColumn get tituloNivelLogro =>
      _tituloNivelLogro ??= _constructTituloNivelLogro();
  GeneratedTextColumn _constructTituloNivelLogro() {
    return GeneratedTextColumn(
      'titulo_nivel_logro',
      $tableName,
      true,
    );
  }

  final VerificationMeta _descripcionNivelLogroMeta =
      const VerificationMeta('descripcionNivelLogro');
  GeneratedTextColumn _descripcionNivelLogro;
  @override
  GeneratedTextColumn get descripcionNivelLogro =>
      _descripcionNivelLogro ??= _constructDescripcionNivelLogro();
  GeneratedTextColumn _constructDescripcionNivelLogro() {
    return GeneratedTextColumn(
      'descripcion_nivel_logro',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tipoIdNivelLogroMeta =
      const VerificationMeta('tipoIdNivelLogro');
  GeneratedIntColumn _tipoIdNivelLogro;
  @override
  GeneratedIntColumn get tipoIdNivelLogro =>
      _tipoIdNivelLogro ??= _constructTipoIdNivelLogro();
  GeneratedIntColumn _constructTipoIdNivelLogro() {
    return GeneratedIntColumn(
      'tipo_id_nivel_logro',
      $tableName,
      true,
    );
  }

  final VerificationMeta _notaEvalaucionMeta =
      const VerificationMeta('notaEvalaucion');
  GeneratedRealColumn _notaEvalaucion;
  @override
  GeneratedRealColumn get notaEvalaucion =>
      _notaEvalaucion ??= _constructNotaEvalaucion();
  GeneratedRealColumn _constructNotaEvalaucion() {
    return GeneratedRealColumn(
      'nota_evalaucion',
      $tableName,
      true,
    );
  }

  final VerificationMeta _desempenioEvalaucionMeta =
      const VerificationMeta('desempenioEvalaucion');
  GeneratedTextColumn _desempenioEvalaucion;
  @override
  GeneratedTextColumn get desempenioEvalaucion =>
      _desempenioEvalaucion ??= _constructDesempenioEvalaucion();
  GeneratedTextColumn _constructDesempenioEvalaucion() {
    return GeneratedTextColumn(
      'desempenio_evalaucion',
      $tableName,
      true,
    );
  }

  final VerificationMeta _desempenioIcdTipoIdMeta =
      const VerificationMeta('desempenioIcdTipoId');
  GeneratedIntColumn _desempenioIcdTipoId;
  @override
  GeneratedIntColumn get desempenioIcdTipoId =>
      _desempenioIcdTipoId ??= _constructDesempenioIcdTipoId();
  GeneratedIntColumn _constructDesempenioIcdTipoId() {
    return GeneratedIntColumn(
      'desempenio_icd_tipo_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _evaluacionProcesoIdMeta =
      const VerificationMeta('evaluacionProcesoId');
  GeneratedTextColumn _evaluacionProcesoId;
  @override
  GeneratedTextColumn get evaluacionProcesoId =>
      _evaluacionProcesoId ??= _constructEvaluacionProcesoId();
  GeneratedTextColumn _constructEvaluacionProcesoId() {
    return GeneratedTextColumn(
      'evaluacion_proceso_id',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        nombreCurso,
        fechaEvaluacion,
        tituloEvaluacion,
        formaEvaluacion,
        tipoRubroEvalId,
        cargaCursoId,
        silaboEventoId,
        anioAcademicoId,
        programaAcadId,
        rubroEvalProcesoId,
        alumnoId,
        gradoId,
        grado,
        seccionId,
        seccion,
        calendarioPeriodoId,
        parametroDesenioId,
        iconoNivelLogro,
        tituloNivelLogro,
        descripcionNivelLogro,
        tipoIdNivelLogro,
        notaEvalaucion,
        desempenioEvalaucion,
        desempenioIcdTipoId,
        evaluacionProcesoId
      ];
  @override
  $RubroEvalDesempenioTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'rubro_eval_desempenio';
  @override
  final String actualTableName = 'rubro_eval_desempenio';
  @override
  VerificationContext validateIntegrity(
      Insertable<RubroEvalDesempenioData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('nombre_curso')) {
      context.handle(
          _nombreCursoMeta,
          nombreCurso.isAcceptableOrUnknown(
              data['nombre_curso'], _nombreCursoMeta));
    }
    if (data.containsKey('fecha_evaluacion')) {
      context.handle(
          _fechaEvaluacionMeta,
          fechaEvaluacion.isAcceptableOrUnknown(
              data['fecha_evaluacion'], _fechaEvaluacionMeta));
    }
    if (data.containsKey('titulo_evaluacion')) {
      context.handle(
          _tituloEvaluacionMeta,
          tituloEvaluacion.isAcceptableOrUnknown(
              data['titulo_evaluacion'], _tituloEvaluacionMeta));
    }
    if (data.containsKey('forma_evaluacion')) {
      context.handle(
          _formaEvaluacionMeta,
          formaEvaluacion.isAcceptableOrUnknown(
              data['forma_evaluacion'], _formaEvaluacionMeta));
    }
    if (data.containsKey('tipo_rubro_eval_id')) {
      context.handle(
          _tipoRubroEvalIdMeta,
          tipoRubroEvalId.isAcceptableOrUnknown(
              data['tipo_rubro_eval_id'], _tipoRubroEvalIdMeta));
    }
    if (data.containsKey('carga_curso_id')) {
      context.handle(
          _cargaCursoIdMeta,
          cargaCursoId.isAcceptableOrUnknown(
              data['carga_curso_id'], _cargaCursoIdMeta));
    }
    if (data.containsKey('silabo_evento_id')) {
      context.handle(
          _silaboEventoIdMeta,
          silaboEventoId.isAcceptableOrUnknown(
              data['silabo_evento_id'], _silaboEventoIdMeta));
    }
    if (data.containsKey('anio_academico_id')) {
      context.handle(
          _anioAcademicoIdMeta,
          anioAcademicoId.isAcceptableOrUnknown(
              data['anio_academico_id'], _anioAcademicoIdMeta));
    }
    if (data.containsKey('programa_acad_id')) {
      context.handle(
          _programaAcadIdMeta,
          programaAcadId.isAcceptableOrUnknown(
              data['programa_acad_id'], _programaAcadIdMeta));
    }
    if (data.containsKey('rubro_eval_proceso_id')) {
      context.handle(
          _rubroEvalProcesoIdMeta,
          rubroEvalProcesoId.isAcceptableOrUnknown(
              data['rubro_eval_proceso_id'], _rubroEvalProcesoIdMeta));
    }
    if (data.containsKey('alumno_id')) {
      context.handle(_alumnoIdMeta,
          alumnoId.isAcceptableOrUnknown(data['alumno_id'], _alumnoIdMeta));
    }
    if (data.containsKey('grado_id')) {
      context.handle(_gradoIdMeta,
          gradoId.isAcceptableOrUnknown(data['grado_id'], _gradoIdMeta));
    }
    if (data.containsKey('grado')) {
      context.handle(
          _gradoMeta, grado.isAcceptableOrUnknown(data['grado'], _gradoMeta));
    }
    if (data.containsKey('seccion_id')) {
      context.handle(_seccionIdMeta,
          seccionId.isAcceptableOrUnknown(data['seccion_id'], _seccionIdMeta));
    }
    if (data.containsKey('seccion')) {
      context.handle(_seccionMeta,
          seccion.isAcceptableOrUnknown(data['seccion'], _seccionMeta));
    }
    if (data.containsKey('calendario_periodo_id')) {
      context.handle(
          _calendarioPeriodoIdMeta,
          calendarioPeriodoId.isAcceptableOrUnknown(
              data['calendario_periodo_id'], _calendarioPeriodoIdMeta));
    }
    if (data.containsKey('parametro_desenio_id')) {
      context.handle(
          _parametroDesenioIdMeta,
          parametroDesenioId.isAcceptableOrUnknown(
              data['parametro_desenio_id'], _parametroDesenioIdMeta));
    }
    if (data.containsKey('icono_nivel_logro')) {
      context.handle(
          _iconoNivelLogroMeta,
          iconoNivelLogro.isAcceptableOrUnknown(
              data['icono_nivel_logro'], _iconoNivelLogroMeta));
    }
    if (data.containsKey('titulo_nivel_logro')) {
      context.handle(
          _tituloNivelLogroMeta,
          tituloNivelLogro.isAcceptableOrUnknown(
              data['titulo_nivel_logro'], _tituloNivelLogroMeta));
    }
    if (data.containsKey('descripcion_nivel_logro')) {
      context.handle(
          _descripcionNivelLogroMeta,
          descripcionNivelLogro.isAcceptableOrUnknown(
              data['descripcion_nivel_logro'], _descripcionNivelLogroMeta));
    }
    if (data.containsKey('tipo_id_nivel_logro')) {
      context.handle(
          _tipoIdNivelLogroMeta,
          tipoIdNivelLogro.isAcceptableOrUnknown(
              data['tipo_id_nivel_logro'], _tipoIdNivelLogroMeta));
    }
    if (data.containsKey('nota_evalaucion')) {
      context.handle(
          _notaEvalaucionMeta,
          notaEvalaucion.isAcceptableOrUnknown(
              data['nota_evalaucion'], _notaEvalaucionMeta));
    }
    if (data.containsKey('desempenio_evalaucion')) {
      context.handle(
          _desempenioEvalaucionMeta,
          desempenioEvalaucion.isAcceptableOrUnknown(
              data['desempenio_evalaucion'], _desempenioEvalaucionMeta));
    }
    if (data.containsKey('desempenio_icd_tipo_id')) {
      context.handle(
          _desempenioIcdTipoIdMeta,
          desempenioIcdTipoId.isAcceptableOrUnknown(
              data['desempenio_icd_tipo_id'], _desempenioIcdTipoIdMeta));
    }
    if (data.containsKey('evaluacion_proceso_id')) {
      context.handle(
          _evaluacionProcesoIdMeta,
          evaluacionProcesoId.isAcceptableOrUnknown(
              data['evaluacion_proceso_id'], _evaluacionProcesoIdMeta));
    } else if (isInserting) {
      context.missing(_evaluacionProcesoIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {evaluacionProcesoId};
  @override
  RubroEvalDesempenioData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return RubroEvalDesempenioData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $RubroEvalDesempenioTable createAlias(String alias) {
    return $RubroEvalDesempenioTable(_db, alias);
  }
}

class WebConfig extends DataClass implements Insertable<WebConfig> {
  final String nombre;
  final String content;
  WebConfig({this.nombre, this.content});
  factory WebConfig.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return WebConfig(
      nombre:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}nombre']),
      content:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}content']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || nombre != null) {
      map['nombre'] = Variable<String>(nombre);
    }
    if (!nullToAbsent || content != null) {
      map['content'] = Variable<String>(content);
    }
    return map;
  }

  WebConfigsCompanion toCompanion(bool nullToAbsent) {
    return WebConfigsCompanion(
      nombre:
          nombre == null && nullToAbsent ? const Value.absent() : Value(nombre),
      content: content == null && nullToAbsent
          ? const Value.absent()
          : Value(content),
    );
  }

  factory WebConfig.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return WebConfig(
      nombre: serializer.fromJson<String>(json['nombre']),
      content: serializer.fromJson<String>(json['content']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'nombre': serializer.toJson<String>(nombre),
      'content': serializer.toJson<String>(content),
    };
  }

  WebConfig copyWith({String nombre, String content}) => WebConfig(
        nombre: nombre ?? this.nombre,
        content: content ?? this.content,
      );
  @override
  String toString() {
    return (StringBuffer('WebConfig(')
          ..write('nombre: $nombre, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(nombre.hashCode, content.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is WebConfig &&
          other.nombre == this.nombre &&
          other.content == this.content);
}

class WebConfigsCompanion extends UpdateCompanion<WebConfig> {
  final Value<String> nombre;
  final Value<String> content;
  const WebConfigsCompanion({
    this.nombre = const Value.absent(),
    this.content = const Value.absent(),
  });
  WebConfigsCompanion.insert({
    this.nombre = const Value.absent(),
    this.content = const Value.absent(),
  });
  static Insertable<WebConfig> custom({
    Expression<String> nombre,
    Expression<String> content,
  }) {
    return RawValuesInsertable({
      if (nombre != null) 'nombre': nombre,
      if (content != null) 'content': content,
    });
  }

  WebConfigsCompanion copyWith({Value<String> nombre, Value<String> content}) {
    return WebConfigsCompanion(
      nombre: nombre ?? this.nombre,
      content: content ?? this.content,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (nombre.present) {
      map['nombre'] = Variable<String>(nombre.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WebConfigsCompanion(')
          ..write('nombre: $nombre, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }
}

class $WebConfigsTable extends WebConfigs
    with TableInfo<$WebConfigsTable, WebConfig> {
  final GeneratedDatabase _db;
  final String _alias;
  $WebConfigsTable(this._db, [this._alias]);
  final VerificationMeta _nombreMeta = const VerificationMeta('nombre');
  GeneratedTextColumn _nombre;
  @override
  GeneratedTextColumn get nombre => _nombre ??= _constructNombre();
  GeneratedTextColumn _constructNombre() {
    return GeneratedTextColumn(
      'nombre',
      $tableName,
      true,
    );
  }

  final VerificationMeta _contentMeta = const VerificationMeta('content');
  GeneratedTextColumn _content;
  @override
  GeneratedTextColumn get content => _content ??= _constructContent();
  GeneratedTextColumn _constructContent() {
    return GeneratedTextColumn(
      'content',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [nombre, content];
  @override
  $WebConfigsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'web_configs';
  @override
  final String actualTableName = 'web_configs';
  @override
  VerificationContext validateIntegrity(Insertable<WebConfig> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('nombre')) {
      context.handle(_nombreMeta,
          nombre.isAcceptableOrUnknown(data['nombre'], _nombreMeta));
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content'], _contentMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {nombre, content};
  @override
  WebConfig map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return WebConfig.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $WebConfigsTable createAlias(String alias) {
    return $WebConfigsTable(_db, alias);
  }
}

class TareaCursoData extends DataClass implements Insertable<TareaCursoData> {
  final String tareaId;
  final String tareaTitulo;
  final String tareaInstrucciones;
  final DateTime tareafechaCreacion;
  final String tareaEstadoId;
  final int unidadAprendizajeId;
  final int sesionAprendizajeId;
  final String tareaFechaEntrega;
  final String tareaHoraEntrega;
  final int gradoId;
  final String grado;
  final int seccionId;
  final String seccion;
  final DateTime fechaEvaluacion;
  final String tituloEvaluacion;
  final String formaEvaluacion;
  final int tipoRubroEvalId;
  final int cargaCursoId;
  final int silaboEventoId;
  final int anioAcademicoId;
  final int programaAcadId;
  final String rubroEvalProcesoId;
  final int alumnoId;
  final int calendarioPeriodoId;
  final int parametroDesenioId;
  final String iconoNivelLogro;
  final String tituloNivelLogro;
  final String descripcionNivelLogro;
  final int tipoIdNivelLogro;
  final double notaEvalaucion;
  final String evaluacionProcesoId;
  final String nombreCurso;
  final String docenteApellMat;
  final String docenteApellPat;
  final String docenteNombre;
  TareaCursoData(
      {@required this.tareaId,
      this.tareaTitulo,
      this.tareaInstrucciones,
      this.tareafechaCreacion,
      this.tareaEstadoId,
      this.unidadAprendizajeId,
      this.sesionAprendizajeId,
      this.tareaFechaEntrega,
      this.tareaHoraEntrega,
      this.gradoId,
      this.grado,
      this.seccionId,
      this.seccion,
      this.fechaEvaluacion,
      this.tituloEvaluacion,
      this.formaEvaluacion,
      this.tipoRubroEvalId,
      this.cargaCursoId,
      this.silaboEventoId,
      this.anioAcademicoId,
      this.programaAcadId,
      this.rubroEvalProcesoId,
      this.alumnoId,
      this.calendarioPeriodoId,
      this.parametroDesenioId,
      this.iconoNivelLogro,
      this.tituloNivelLogro,
      this.descripcionNivelLogro,
      this.tipoIdNivelLogro,
      this.notaEvalaucion,
      this.evaluacionProcesoId,
      this.nombreCurso,
      this.docenteApellMat,
      this.docenteApellPat,
      this.docenteNombre});
  factory TareaCursoData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final intType = db.typeSystem.forDartType<int>();
    final doubleType = db.typeSystem.forDartType<double>();
    return TareaCursoData(
      tareaId: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}tarea_id']),
      tareaTitulo: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}tarea_titulo']),
      tareaInstrucciones: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}tarea_instrucciones']),
      tareafechaCreacion: dateTimeType.mapFromDatabaseResponse(
          data['${effectivePrefix}tareafecha_creacion']),
      tareaEstadoId: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}tarea_estado_id']),
      unidadAprendizajeId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}unidad_aprendizaje_id']),
      sesionAprendizajeId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}sesion_aprendizaje_id']),
      tareaFechaEntrega: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}tarea_fecha_entrega']),
      tareaHoraEntrega: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}tarea_hora_entrega']),
      gradoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}grado_id']),
      grado:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}grado']),
      seccionId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}seccion_id']),
      seccion:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}seccion']),
      fechaEvaluacion: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}fecha_evaluacion']),
      tituloEvaluacion: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}titulo_evaluacion']),
      formaEvaluacion: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}forma_evaluacion']),
      tipoRubroEvalId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}tipo_rubro_eval_id']),
      cargaCursoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}carga_curso_id']),
      silaboEventoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}silabo_evento_id']),
      anioAcademicoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}anio_academico_id']),
      programaAcadId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}programa_acad_id']),
      rubroEvalProcesoId: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}rubro_eval_proceso_id']),
      alumnoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}alumno_id']),
      calendarioPeriodoId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}calendario_periodo_id']),
      parametroDesenioId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}parametro_desenio_id']),
      iconoNivelLogro: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}icono_nivel_logro']),
      tituloNivelLogro: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}titulo_nivel_logro']),
      descripcionNivelLogro: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}descripcion_nivel_logro']),
      tipoIdNivelLogro: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}tipo_id_nivel_logro']),
      notaEvalaucion: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}nota_evalaucion']),
      evaluacionProcesoId: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}evaluacion_proceso_id']),
      nombreCurso: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}nombre_curso']),
      docenteApellMat: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}docente_apell_mat']),
      docenteApellPat: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}docente_apell_pat']),
      docenteNombre: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}docente_nombre']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || tareaId != null) {
      map['tarea_id'] = Variable<String>(tareaId);
    }
    if (!nullToAbsent || tareaTitulo != null) {
      map['tarea_titulo'] = Variable<String>(tareaTitulo);
    }
    if (!nullToAbsent || tareaInstrucciones != null) {
      map['tarea_instrucciones'] = Variable<String>(tareaInstrucciones);
    }
    if (!nullToAbsent || tareafechaCreacion != null) {
      map['tareafecha_creacion'] = Variable<DateTime>(tareafechaCreacion);
    }
    if (!nullToAbsent || tareaEstadoId != null) {
      map['tarea_estado_id'] = Variable<String>(tareaEstadoId);
    }
    if (!nullToAbsent || unidadAprendizajeId != null) {
      map['unidad_aprendizaje_id'] = Variable<int>(unidadAprendizajeId);
    }
    if (!nullToAbsent || sesionAprendizajeId != null) {
      map['sesion_aprendizaje_id'] = Variable<int>(sesionAprendizajeId);
    }
    if (!nullToAbsent || tareaFechaEntrega != null) {
      map['tarea_fecha_entrega'] = Variable<String>(tareaFechaEntrega);
    }
    if (!nullToAbsent || tareaHoraEntrega != null) {
      map['tarea_hora_entrega'] = Variable<String>(tareaHoraEntrega);
    }
    if (!nullToAbsent || gradoId != null) {
      map['grado_id'] = Variable<int>(gradoId);
    }
    if (!nullToAbsent || grado != null) {
      map['grado'] = Variable<String>(grado);
    }
    if (!nullToAbsent || seccionId != null) {
      map['seccion_id'] = Variable<int>(seccionId);
    }
    if (!nullToAbsent || seccion != null) {
      map['seccion'] = Variable<String>(seccion);
    }
    if (!nullToAbsent || fechaEvaluacion != null) {
      map['fecha_evaluacion'] = Variable<DateTime>(fechaEvaluacion);
    }
    if (!nullToAbsent || tituloEvaluacion != null) {
      map['titulo_evaluacion'] = Variable<String>(tituloEvaluacion);
    }
    if (!nullToAbsent || formaEvaluacion != null) {
      map['forma_evaluacion'] = Variable<String>(formaEvaluacion);
    }
    if (!nullToAbsent || tipoRubroEvalId != null) {
      map['tipo_rubro_eval_id'] = Variable<int>(tipoRubroEvalId);
    }
    if (!nullToAbsent || cargaCursoId != null) {
      map['carga_curso_id'] = Variable<int>(cargaCursoId);
    }
    if (!nullToAbsent || silaboEventoId != null) {
      map['silabo_evento_id'] = Variable<int>(silaboEventoId);
    }
    if (!nullToAbsent || anioAcademicoId != null) {
      map['anio_academico_id'] = Variable<int>(anioAcademicoId);
    }
    if (!nullToAbsent || programaAcadId != null) {
      map['programa_acad_id'] = Variable<int>(programaAcadId);
    }
    if (!nullToAbsent || rubroEvalProcesoId != null) {
      map['rubro_eval_proceso_id'] = Variable<String>(rubroEvalProcesoId);
    }
    if (!nullToAbsent || alumnoId != null) {
      map['alumno_id'] = Variable<int>(alumnoId);
    }
    if (!nullToAbsent || calendarioPeriodoId != null) {
      map['calendario_periodo_id'] = Variable<int>(calendarioPeriodoId);
    }
    if (!nullToAbsent || parametroDesenioId != null) {
      map['parametro_desenio_id'] = Variable<int>(parametroDesenioId);
    }
    if (!nullToAbsent || iconoNivelLogro != null) {
      map['icono_nivel_logro'] = Variable<String>(iconoNivelLogro);
    }
    if (!nullToAbsent || tituloNivelLogro != null) {
      map['titulo_nivel_logro'] = Variable<String>(tituloNivelLogro);
    }
    if (!nullToAbsent || descripcionNivelLogro != null) {
      map['descripcion_nivel_logro'] = Variable<String>(descripcionNivelLogro);
    }
    if (!nullToAbsent || tipoIdNivelLogro != null) {
      map['tipo_id_nivel_logro'] = Variable<int>(tipoIdNivelLogro);
    }
    if (!nullToAbsent || notaEvalaucion != null) {
      map['nota_evalaucion'] = Variable<double>(notaEvalaucion);
    }
    if (!nullToAbsent || evaluacionProcesoId != null) {
      map['evaluacion_proceso_id'] = Variable<String>(evaluacionProcesoId);
    }
    if (!nullToAbsent || nombreCurso != null) {
      map['nombre_curso'] = Variable<String>(nombreCurso);
    }
    if (!nullToAbsent || docenteApellMat != null) {
      map['docente_apell_mat'] = Variable<String>(docenteApellMat);
    }
    if (!nullToAbsent || docenteApellPat != null) {
      map['docente_apell_pat'] = Variable<String>(docenteApellPat);
    }
    if (!nullToAbsent || docenteNombre != null) {
      map['docente_nombre'] = Variable<String>(docenteNombre);
    }
    return map;
  }

  TareaCursoCompanion toCompanion(bool nullToAbsent) {
    return TareaCursoCompanion(
      tareaId: tareaId == null && nullToAbsent
          ? const Value.absent()
          : Value(tareaId),
      tareaTitulo: tareaTitulo == null && nullToAbsent
          ? const Value.absent()
          : Value(tareaTitulo),
      tareaInstrucciones: tareaInstrucciones == null && nullToAbsent
          ? const Value.absent()
          : Value(tareaInstrucciones),
      tareafechaCreacion: tareafechaCreacion == null && nullToAbsent
          ? const Value.absent()
          : Value(tareafechaCreacion),
      tareaEstadoId: tareaEstadoId == null && nullToAbsent
          ? const Value.absent()
          : Value(tareaEstadoId),
      unidadAprendizajeId: unidadAprendizajeId == null && nullToAbsent
          ? const Value.absent()
          : Value(unidadAprendizajeId),
      sesionAprendizajeId: sesionAprendizajeId == null && nullToAbsent
          ? const Value.absent()
          : Value(sesionAprendizajeId),
      tareaFechaEntrega: tareaFechaEntrega == null && nullToAbsent
          ? const Value.absent()
          : Value(tareaFechaEntrega),
      tareaHoraEntrega: tareaHoraEntrega == null && nullToAbsent
          ? const Value.absent()
          : Value(tareaHoraEntrega),
      gradoId: gradoId == null && nullToAbsent
          ? const Value.absent()
          : Value(gradoId),
      grado:
          grado == null && nullToAbsent ? const Value.absent() : Value(grado),
      seccionId: seccionId == null && nullToAbsent
          ? const Value.absent()
          : Value(seccionId),
      seccion: seccion == null && nullToAbsent
          ? const Value.absent()
          : Value(seccion),
      fechaEvaluacion: fechaEvaluacion == null && nullToAbsent
          ? const Value.absent()
          : Value(fechaEvaluacion),
      tituloEvaluacion: tituloEvaluacion == null && nullToAbsent
          ? const Value.absent()
          : Value(tituloEvaluacion),
      formaEvaluacion: formaEvaluacion == null && nullToAbsent
          ? const Value.absent()
          : Value(formaEvaluacion),
      tipoRubroEvalId: tipoRubroEvalId == null && nullToAbsent
          ? const Value.absent()
          : Value(tipoRubroEvalId),
      cargaCursoId: cargaCursoId == null && nullToAbsent
          ? const Value.absent()
          : Value(cargaCursoId),
      silaboEventoId: silaboEventoId == null && nullToAbsent
          ? const Value.absent()
          : Value(silaboEventoId),
      anioAcademicoId: anioAcademicoId == null && nullToAbsent
          ? const Value.absent()
          : Value(anioAcademicoId),
      programaAcadId: programaAcadId == null && nullToAbsent
          ? const Value.absent()
          : Value(programaAcadId),
      rubroEvalProcesoId: rubroEvalProcesoId == null && nullToAbsent
          ? const Value.absent()
          : Value(rubroEvalProcesoId),
      alumnoId: alumnoId == null && nullToAbsent
          ? const Value.absent()
          : Value(alumnoId),
      calendarioPeriodoId: calendarioPeriodoId == null && nullToAbsent
          ? const Value.absent()
          : Value(calendarioPeriodoId),
      parametroDesenioId: parametroDesenioId == null && nullToAbsent
          ? const Value.absent()
          : Value(parametroDesenioId),
      iconoNivelLogro: iconoNivelLogro == null && nullToAbsent
          ? const Value.absent()
          : Value(iconoNivelLogro),
      tituloNivelLogro: tituloNivelLogro == null && nullToAbsent
          ? const Value.absent()
          : Value(tituloNivelLogro),
      descripcionNivelLogro: descripcionNivelLogro == null && nullToAbsent
          ? const Value.absent()
          : Value(descripcionNivelLogro),
      tipoIdNivelLogro: tipoIdNivelLogro == null && nullToAbsent
          ? const Value.absent()
          : Value(tipoIdNivelLogro),
      notaEvalaucion: notaEvalaucion == null && nullToAbsent
          ? const Value.absent()
          : Value(notaEvalaucion),
      evaluacionProcesoId: evaluacionProcesoId == null && nullToAbsent
          ? const Value.absent()
          : Value(evaluacionProcesoId),
      nombreCurso: nombreCurso == null && nullToAbsent
          ? const Value.absent()
          : Value(nombreCurso),
      docenteApellMat: docenteApellMat == null && nullToAbsent
          ? const Value.absent()
          : Value(docenteApellMat),
      docenteApellPat: docenteApellPat == null && nullToAbsent
          ? const Value.absent()
          : Value(docenteApellPat),
      docenteNombre: docenteNombre == null && nullToAbsent
          ? const Value.absent()
          : Value(docenteNombre),
    );
  }

  factory TareaCursoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return TareaCursoData(
      tareaId: serializer.fromJson<String>(json['tareaId']),
      tareaTitulo: serializer.fromJson<String>(json['tareaTitulo']),
      tareaInstrucciones:
          serializer.fromJson<String>(json['tareaInstrucciones']),
      tareafechaCreacion:
          serializer.fromJson<DateTime>(json['tareafechaCreacion']),
      tareaEstadoId: serializer.fromJson<String>(json['tareaEstadoId']),
      unidadAprendizajeId:
          serializer.fromJson<int>(json['unidadAprendizajeId']),
      sesionAprendizajeId:
          serializer.fromJson<int>(json['sesionAprendizajeId']),
      tareaFechaEntrega: serializer.fromJson<String>(json['tareaFechaEntrega']),
      tareaHoraEntrega: serializer.fromJson<String>(json['tareaHoraEntrega']),
      gradoId: serializer.fromJson<int>(json['gradoId']),
      grado: serializer.fromJson<String>(json['grado']),
      seccionId: serializer.fromJson<int>(json['seccionId']),
      seccion: serializer.fromJson<String>(json['seccion']),
      fechaEvaluacion: serializer.fromJson<DateTime>(json['fechaEvaluacion']),
      tituloEvaluacion: serializer.fromJson<String>(json['tituloEvaluacion']),
      formaEvaluacion: serializer.fromJson<String>(json['formaEvaluacion']),
      tipoRubroEvalId: serializer.fromJson<int>(json['tipoRubroEvalId']),
      cargaCursoId: serializer.fromJson<int>(json['cargaCursoId']),
      silaboEventoId: serializer.fromJson<int>(json['silaboEventoId']),
      anioAcademicoId: serializer.fromJson<int>(json['anioAcademicoId']),
      programaAcadId: serializer.fromJson<int>(json['programaAcadId']),
      rubroEvalProcesoId:
          serializer.fromJson<String>(json['rubroEvalProcesoId']),
      alumnoId: serializer.fromJson<int>(json['alumnoId']),
      calendarioPeriodoId:
          serializer.fromJson<int>(json['calendarioPeriodoId']),
      parametroDesenioId: serializer.fromJson<int>(json['parametroDesenioId']),
      iconoNivelLogro: serializer.fromJson<String>(json['iconoNivelLogro']),
      tituloNivelLogro: serializer.fromJson<String>(json['tituloNivelLogro']),
      descripcionNivelLogro:
          serializer.fromJson<String>(json['descripcionNivelLogro']),
      tipoIdNivelLogro: serializer.fromJson<int>(json['tipoIdNivelLogro']),
      notaEvalaucion: serializer.fromJson<double>(json['notaEvalaucion']),
      evaluacionProcesoId:
          serializer.fromJson<String>(json['evaluacionProcesoId']),
      nombreCurso: serializer.fromJson<String>(json['nombreCurso']),
      docenteApellMat: serializer.fromJson<String>(json['docenteApellMat']),
      docenteApellPat: serializer.fromJson<String>(json['docenteApellPat']),
      docenteNombre: serializer.fromJson<String>(json['docenteNombre']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'tareaId': serializer.toJson<String>(tareaId),
      'tareaTitulo': serializer.toJson<String>(tareaTitulo),
      'tareaInstrucciones': serializer.toJson<String>(tareaInstrucciones),
      'tareafechaCreacion': serializer.toJson<DateTime>(tareafechaCreacion),
      'tareaEstadoId': serializer.toJson<String>(tareaEstadoId),
      'unidadAprendizajeId': serializer.toJson<int>(unidadAprendizajeId),
      'sesionAprendizajeId': serializer.toJson<int>(sesionAprendizajeId),
      'tareaFechaEntrega': serializer.toJson<String>(tareaFechaEntrega),
      'tareaHoraEntrega': serializer.toJson<String>(tareaHoraEntrega),
      'gradoId': serializer.toJson<int>(gradoId),
      'grado': serializer.toJson<String>(grado),
      'seccionId': serializer.toJson<int>(seccionId),
      'seccion': serializer.toJson<String>(seccion),
      'fechaEvaluacion': serializer.toJson<DateTime>(fechaEvaluacion),
      'tituloEvaluacion': serializer.toJson<String>(tituloEvaluacion),
      'formaEvaluacion': serializer.toJson<String>(formaEvaluacion),
      'tipoRubroEvalId': serializer.toJson<int>(tipoRubroEvalId),
      'cargaCursoId': serializer.toJson<int>(cargaCursoId),
      'silaboEventoId': serializer.toJson<int>(silaboEventoId),
      'anioAcademicoId': serializer.toJson<int>(anioAcademicoId),
      'programaAcadId': serializer.toJson<int>(programaAcadId),
      'rubroEvalProcesoId': serializer.toJson<String>(rubroEvalProcesoId),
      'alumnoId': serializer.toJson<int>(alumnoId),
      'calendarioPeriodoId': serializer.toJson<int>(calendarioPeriodoId),
      'parametroDesenioId': serializer.toJson<int>(parametroDesenioId),
      'iconoNivelLogro': serializer.toJson<String>(iconoNivelLogro),
      'tituloNivelLogro': serializer.toJson<String>(tituloNivelLogro),
      'descripcionNivelLogro': serializer.toJson<String>(descripcionNivelLogro),
      'tipoIdNivelLogro': serializer.toJson<int>(tipoIdNivelLogro),
      'notaEvalaucion': serializer.toJson<double>(notaEvalaucion),
      'evaluacionProcesoId': serializer.toJson<String>(evaluacionProcesoId),
      'nombreCurso': serializer.toJson<String>(nombreCurso),
      'docenteApellMat': serializer.toJson<String>(docenteApellMat),
      'docenteApellPat': serializer.toJson<String>(docenteApellPat),
      'docenteNombre': serializer.toJson<String>(docenteNombre),
    };
  }

  TareaCursoData copyWith(
          {String tareaId,
          String tareaTitulo,
          String tareaInstrucciones,
          DateTime tareafechaCreacion,
          String tareaEstadoId,
          int unidadAprendizajeId,
          int sesionAprendizajeId,
          String tareaFechaEntrega,
          String tareaHoraEntrega,
          int gradoId,
          String grado,
          int seccionId,
          String seccion,
          DateTime fechaEvaluacion,
          String tituloEvaluacion,
          String formaEvaluacion,
          int tipoRubroEvalId,
          int cargaCursoId,
          int silaboEventoId,
          int anioAcademicoId,
          int programaAcadId,
          String rubroEvalProcesoId,
          int alumnoId,
          int calendarioPeriodoId,
          int parametroDesenioId,
          String iconoNivelLogro,
          String tituloNivelLogro,
          String descripcionNivelLogro,
          int tipoIdNivelLogro,
          double notaEvalaucion,
          String evaluacionProcesoId,
          String nombreCurso,
          String docenteApellMat,
          String docenteApellPat,
          String docenteNombre}) =>
      TareaCursoData(
        tareaId: tareaId ?? this.tareaId,
        tareaTitulo: tareaTitulo ?? this.tareaTitulo,
        tareaInstrucciones: tareaInstrucciones ?? this.tareaInstrucciones,
        tareafechaCreacion: tareafechaCreacion ?? this.tareafechaCreacion,
        tareaEstadoId: tareaEstadoId ?? this.tareaEstadoId,
        unidadAprendizajeId: unidadAprendizajeId ?? this.unidadAprendizajeId,
        sesionAprendizajeId: sesionAprendizajeId ?? this.sesionAprendizajeId,
        tareaFechaEntrega: tareaFechaEntrega ?? this.tareaFechaEntrega,
        tareaHoraEntrega: tareaHoraEntrega ?? this.tareaHoraEntrega,
        gradoId: gradoId ?? this.gradoId,
        grado: grado ?? this.grado,
        seccionId: seccionId ?? this.seccionId,
        seccion: seccion ?? this.seccion,
        fechaEvaluacion: fechaEvaluacion ?? this.fechaEvaluacion,
        tituloEvaluacion: tituloEvaluacion ?? this.tituloEvaluacion,
        formaEvaluacion: formaEvaluacion ?? this.formaEvaluacion,
        tipoRubroEvalId: tipoRubroEvalId ?? this.tipoRubroEvalId,
        cargaCursoId: cargaCursoId ?? this.cargaCursoId,
        silaboEventoId: silaboEventoId ?? this.silaboEventoId,
        anioAcademicoId: anioAcademicoId ?? this.anioAcademicoId,
        programaAcadId: programaAcadId ?? this.programaAcadId,
        rubroEvalProcesoId: rubroEvalProcesoId ?? this.rubroEvalProcesoId,
        alumnoId: alumnoId ?? this.alumnoId,
        calendarioPeriodoId: calendarioPeriodoId ?? this.calendarioPeriodoId,
        parametroDesenioId: parametroDesenioId ?? this.parametroDesenioId,
        iconoNivelLogro: iconoNivelLogro ?? this.iconoNivelLogro,
        tituloNivelLogro: tituloNivelLogro ?? this.tituloNivelLogro,
        descripcionNivelLogro:
            descripcionNivelLogro ?? this.descripcionNivelLogro,
        tipoIdNivelLogro: tipoIdNivelLogro ?? this.tipoIdNivelLogro,
        notaEvalaucion: notaEvalaucion ?? this.notaEvalaucion,
        evaluacionProcesoId: evaluacionProcesoId ?? this.evaluacionProcesoId,
        nombreCurso: nombreCurso ?? this.nombreCurso,
        docenteApellMat: docenteApellMat ?? this.docenteApellMat,
        docenteApellPat: docenteApellPat ?? this.docenteApellPat,
        docenteNombre: docenteNombre ?? this.docenteNombre,
      );
  @override
  String toString() {
    return (StringBuffer('TareaCursoData(')
          ..write('tareaId: $tareaId, ')
          ..write('tareaTitulo: $tareaTitulo, ')
          ..write('tareaInstrucciones: $tareaInstrucciones, ')
          ..write('tareafechaCreacion: $tareafechaCreacion, ')
          ..write('tareaEstadoId: $tareaEstadoId, ')
          ..write('unidadAprendizajeId: $unidadAprendizajeId, ')
          ..write('sesionAprendizajeId: $sesionAprendizajeId, ')
          ..write('tareaFechaEntrega: $tareaFechaEntrega, ')
          ..write('tareaHoraEntrega: $tareaHoraEntrega, ')
          ..write('gradoId: $gradoId, ')
          ..write('grado: $grado, ')
          ..write('seccionId: $seccionId, ')
          ..write('seccion: $seccion, ')
          ..write('fechaEvaluacion: $fechaEvaluacion, ')
          ..write('tituloEvaluacion: $tituloEvaluacion, ')
          ..write('formaEvaluacion: $formaEvaluacion, ')
          ..write('tipoRubroEvalId: $tipoRubroEvalId, ')
          ..write('cargaCursoId: $cargaCursoId, ')
          ..write('silaboEventoId: $silaboEventoId, ')
          ..write('anioAcademicoId: $anioAcademicoId, ')
          ..write('programaAcadId: $programaAcadId, ')
          ..write('rubroEvalProcesoId: $rubroEvalProcesoId, ')
          ..write('alumnoId: $alumnoId, ')
          ..write('calendarioPeriodoId: $calendarioPeriodoId, ')
          ..write('parametroDesenioId: $parametroDesenioId, ')
          ..write('iconoNivelLogro: $iconoNivelLogro, ')
          ..write('tituloNivelLogro: $tituloNivelLogro, ')
          ..write('descripcionNivelLogro: $descripcionNivelLogro, ')
          ..write('tipoIdNivelLogro: $tipoIdNivelLogro, ')
          ..write('notaEvalaucion: $notaEvalaucion, ')
          ..write('evaluacionProcesoId: $evaluacionProcesoId, ')
          ..write('nombreCurso: $nombreCurso, ')
          ..write('docenteApellMat: $docenteApellMat, ')
          ..write('docenteApellPat: $docenteApellPat, ')
          ..write('docenteNombre: $docenteNombre')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      tareaId.hashCode,
      $mrjc(
          tareaTitulo.hashCode,
          $mrjc(
              tareaInstrucciones.hashCode,
              $mrjc(
                  tareafechaCreacion.hashCode,
                  $mrjc(
                      tareaEstadoId.hashCode,
                      $mrjc(
                          unidadAprendizajeId.hashCode,
                          $mrjc(
                              sesionAprendizajeId.hashCode,
                              $mrjc(
                                  tareaFechaEntrega.hashCode,
                                  $mrjc(
                                      tareaHoraEntrega.hashCode,
                                      $mrjc(
                                          gradoId.hashCode,
                                          $mrjc(
                                              grado.hashCode,
                                              $mrjc(
                                                  seccionId.hashCode,
                                                  $mrjc(
                                                      seccion.hashCode,
                                                      $mrjc(
                                                          fechaEvaluacion
                                                              .hashCode,
                                                          $mrjc(
                                                              tituloEvaluacion
                                                                  .hashCode,
                                                              $mrjc(
                                                                  formaEvaluacion
                                                                      .hashCode,
                                                                  $mrjc(
                                                                      tipoRubroEvalId
                                                                          .hashCode,
                                                                      $mrjc(
                                                                          cargaCursoId
                                                                              .hashCode,
                                                                          $mrjc(
                                                                              silaboEventoId.hashCode,
                                                                              $mrjc(anioAcademicoId.hashCode, $mrjc(programaAcadId.hashCode, $mrjc(rubroEvalProcesoId.hashCode, $mrjc(alumnoId.hashCode, $mrjc(calendarioPeriodoId.hashCode, $mrjc(parametroDesenioId.hashCode, $mrjc(iconoNivelLogro.hashCode, $mrjc(tituloNivelLogro.hashCode, $mrjc(descripcionNivelLogro.hashCode, $mrjc(tipoIdNivelLogro.hashCode, $mrjc(notaEvalaucion.hashCode, $mrjc(evaluacionProcesoId.hashCode, $mrjc(nombreCurso.hashCode, $mrjc(docenteApellMat.hashCode, $mrjc(docenteApellPat.hashCode, docenteNombre.hashCode)))))))))))))))))))))))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is TareaCursoData &&
          other.tareaId == this.tareaId &&
          other.tareaTitulo == this.tareaTitulo &&
          other.tareaInstrucciones == this.tareaInstrucciones &&
          other.tareafechaCreacion == this.tareafechaCreacion &&
          other.tareaEstadoId == this.tareaEstadoId &&
          other.unidadAprendizajeId == this.unidadAprendizajeId &&
          other.sesionAprendizajeId == this.sesionAprendizajeId &&
          other.tareaFechaEntrega == this.tareaFechaEntrega &&
          other.tareaHoraEntrega == this.tareaHoraEntrega &&
          other.gradoId == this.gradoId &&
          other.grado == this.grado &&
          other.seccionId == this.seccionId &&
          other.seccion == this.seccion &&
          other.fechaEvaluacion == this.fechaEvaluacion &&
          other.tituloEvaluacion == this.tituloEvaluacion &&
          other.formaEvaluacion == this.formaEvaluacion &&
          other.tipoRubroEvalId == this.tipoRubroEvalId &&
          other.cargaCursoId == this.cargaCursoId &&
          other.silaboEventoId == this.silaboEventoId &&
          other.anioAcademicoId == this.anioAcademicoId &&
          other.programaAcadId == this.programaAcadId &&
          other.rubroEvalProcesoId == this.rubroEvalProcesoId &&
          other.alumnoId == this.alumnoId &&
          other.calendarioPeriodoId == this.calendarioPeriodoId &&
          other.parametroDesenioId == this.parametroDesenioId &&
          other.iconoNivelLogro == this.iconoNivelLogro &&
          other.tituloNivelLogro == this.tituloNivelLogro &&
          other.descripcionNivelLogro == this.descripcionNivelLogro &&
          other.tipoIdNivelLogro == this.tipoIdNivelLogro &&
          other.notaEvalaucion == this.notaEvalaucion &&
          other.evaluacionProcesoId == this.evaluacionProcesoId &&
          other.nombreCurso == this.nombreCurso &&
          other.docenteApellMat == this.docenteApellMat &&
          other.docenteApellPat == this.docenteApellPat &&
          other.docenteNombre == this.docenteNombre);
}

class TareaCursoCompanion extends UpdateCompanion<TareaCursoData> {
  final Value<String> tareaId;
  final Value<String> tareaTitulo;
  final Value<String> tareaInstrucciones;
  final Value<DateTime> tareafechaCreacion;
  final Value<String> tareaEstadoId;
  final Value<int> unidadAprendizajeId;
  final Value<int> sesionAprendizajeId;
  final Value<String> tareaFechaEntrega;
  final Value<String> tareaHoraEntrega;
  final Value<int> gradoId;
  final Value<String> grado;
  final Value<int> seccionId;
  final Value<String> seccion;
  final Value<DateTime> fechaEvaluacion;
  final Value<String> tituloEvaluacion;
  final Value<String> formaEvaluacion;
  final Value<int> tipoRubroEvalId;
  final Value<int> cargaCursoId;
  final Value<int> silaboEventoId;
  final Value<int> anioAcademicoId;
  final Value<int> programaAcadId;
  final Value<String> rubroEvalProcesoId;
  final Value<int> alumnoId;
  final Value<int> calendarioPeriodoId;
  final Value<int> parametroDesenioId;
  final Value<String> iconoNivelLogro;
  final Value<String> tituloNivelLogro;
  final Value<String> descripcionNivelLogro;
  final Value<int> tipoIdNivelLogro;
  final Value<double> notaEvalaucion;
  final Value<String> evaluacionProcesoId;
  final Value<String> nombreCurso;
  final Value<String> docenteApellMat;
  final Value<String> docenteApellPat;
  final Value<String> docenteNombre;
  const TareaCursoCompanion({
    this.tareaId = const Value.absent(),
    this.tareaTitulo = const Value.absent(),
    this.tareaInstrucciones = const Value.absent(),
    this.tareafechaCreacion = const Value.absent(),
    this.tareaEstadoId = const Value.absent(),
    this.unidadAprendizajeId = const Value.absent(),
    this.sesionAprendizajeId = const Value.absent(),
    this.tareaFechaEntrega = const Value.absent(),
    this.tareaHoraEntrega = const Value.absent(),
    this.gradoId = const Value.absent(),
    this.grado = const Value.absent(),
    this.seccionId = const Value.absent(),
    this.seccion = const Value.absent(),
    this.fechaEvaluacion = const Value.absent(),
    this.tituloEvaluacion = const Value.absent(),
    this.formaEvaluacion = const Value.absent(),
    this.tipoRubroEvalId = const Value.absent(),
    this.cargaCursoId = const Value.absent(),
    this.silaboEventoId = const Value.absent(),
    this.anioAcademicoId = const Value.absent(),
    this.programaAcadId = const Value.absent(),
    this.rubroEvalProcesoId = const Value.absent(),
    this.alumnoId = const Value.absent(),
    this.calendarioPeriodoId = const Value.absent(),
    this.parametroDesenioId = const Value.absent(),
    this.iconoNivelLogro = const Value.absent(),
    this.tituloNivelLogro = const Value.absent(),
    this.descripcionNivelLogro = const Value.absent(),
    this.tipoIdNivelLogro = const Value.absent(),
    this.notaEvalaucion = const Value.absent(),
    this.evaluacionProcesoId = const Value.absent(),
    this.nombreCurso = const Value.absent(),
    this.docenteApellMat = const Value.absent(),
    this.docenteApellPat = const Value.absent(),
    this.docenteNombre = const Value.absent(),
  });
  TareaCursoCompanion.insert({
    @required String tareaId,
    this.tareaTitulo = const Value.absent(),
    this.tareaInstrucciones = const Value.absent(),
    this.tareafechaCreacion = const Value.absent(),
    this.tareaEstadoId = const Value.absent(),
    this.unidadAprendizajeId = const Value.absent(),
    this.sesionAprendizajeId = const Value.absent(),
    this.tareaFechaEntrega = const Value.absent(),
    this.tareaHoraEntrega = const Value.absent(),
    this.gradoId = const Value.absent(),
    this.grado = const Value.absent(),
    this.seccionId = const Value.absent(),
    this.seccion = const Value.absent(),
    this.fechaEvaluacion = const Value.absent(),
    this.tituloEvaluacion = const Value.absent(),
    this.formaEvaluacion = const Value.absent(),
    this.tipoRubroEvalId = const Value.absent(),
    this.cargaCursoId = const Value.absent(),
    this.silaboEventoId = const Value.absent(),
    this.anioAcademicoId = const Value.absent(),
    this.programaAcadId = const Value.absent(),
    this.rubroEvalProcesoId = const Value.absent(),
    this.alumnoId = const Value.absent(),
    this.calendarioPeriodoId = const Value.absent(),
    this.parametroDesenioId = const Value.absent(),
    this.iconoNivelLogro = const Value.absent(),
    this.tituloNivelLogro = const Value.absent(),
    this.descripcionNivelLogro = const Value.absent(),
    this.tipoIdNivelLogro = const Value.absent(),
    this.notaEvalaucion = const Value.absent(),
    this.evaluacionProcesoId = const Value.absent(),
    this.nombreCurso = const Value.absent(),
    this.docenteApellMat = const Value.absent(),
    this.docenteApellPat = const Value.absent(),
    this.docenteNombre = const Value.absent(),
  }) : tareaId = Value(tareaId);
  static Insertable<TareaCursoData> custom({
    Expression<String> tareaId,
    Expression<String> tareaTitulo,
    Expression<String> tareaInstrucciones,
    Expression<DateTime> tareafechaCreacion,
    Expression<String> tareaEstadoId,
    Expression<int> unidadAprendizajeId,
    Expression<int> sesionAprendizajeId,
    Expression<String> tareaFechaEntrega,
    Expression<String> tareaHoraEntrega,
    Expression<int> gradoId,
    Expression<String> grado,
    Expression<int> seccionId,
    Expression<String> seccion,
    Expression<DateTime> fechaEvaluacion,
    Expression<String> tituloEvaluacion,
    Expression<String> formaEvaluacion,
    Expression<int> tipoRubroEvalId,
    Expression<int> cargaCursoId,
    Expression<int> silaboEventoId,
    Expression<int> anioAcademicoId,
    Expression<int> programaAcadId,
    Expression<String> rubroEvalProcesoId,
    Expression<int> alumnoId,
    Expression<int> calendarioPeriodoId,
    Expression<int> parametroDesenioId,
    Expression<String> iconoNivelLogro,
    Expression<String> tituloNivelLogro,
    Expression<String> descripcionNivelLogro,
    Expression<int> tipoIdNivelLogro,
    Expression<double> notaEvalaucion,
    Expression<String> evaluacionProcesoId,
    Expression<String> nombreCurso,
    Expression<String> docenteApellMat,
    Expression<String> docenteApellPat,
    Expression<String> docenteNombre,
  }) {
    return RawValuesInsertable({
      if (tareaId != null) 'tarea_id': tareaId,
      if (tareaTitulo != null) 'tarea_titulo': tareaTitulo,
      if (tareaInstrucciones != null) 'tarea_instrucciones': tareaInstrucciones,
      if (tareafechaCreacion != null) 'tareafecha_creacion': tareafechaCreacion,
      if (tareaEstadoId != null) 'tarea_estado_id': tareaEstadoId,
      if (unidadAprendizajeId != null)
        'unidad_aprendizaje_id': unidadAprendizajeId,
      if (sesionAprendizajeId != null)
        'sesion_aprendizaje_id': sesionAprendizajeId,
      if (tareaFechaEntrega != null) 'tarea_fecha_entrega': tareaFechaEntrega,
      if (tareaHoraEntrega != null) 'tarea_hora_entrega': tareaHoraEntrega,
      if (gradoId != null) 'grado_id': gradoId,
      if (grado != null) 'grado': grado,
      if (seccionId != null) 'seccion_id': seccionId,
      if (seccion != null) 'seccion': seccion,
      if (fechaEvaluacion != null) 'fecha_evaluacion': fechaEvaluacion,
      if (tituloEvaluacion != null) 'titulo_evaluacion': tituloEvaluacion,
      if (formaEvaluacion != null) 'forma_evaluacion': formaEvaluacion,
      if (tipoRubroEvalId != null) 'tipo_rubro_eval_id': tipoRubroEvalId,
      if (cargaCursoId != null) 'carga_curso_id': cargaCursoId,
      if (silaboEventoId != null) 'silabo_evento_id': silaboEventoId,
      if (anioAcademicoId != null) 'anio_academico_id': anioAcademicoId,
      if (programaAcadId != null) 'programa_acad_id': programaAcadId,
      if (rubroEvalProcesoId != null)
        'rubro_eval_proceso_id': rubroEvalProcesoId,
      if (alumnoId != null) 'alumno_id': alumnoId,
      if (calendarioPeriodoId != null)
        'calendario_periodo_id': calendarioPeriodoId,
      if (parametroDesenioId != null)
        'parametro_desenio_id': parametroDesenioId,
      if (iconoNivelLogro != null) 'icono_nivel_logro': iconoNivelLogro,
      if (tituloNivelLogro != null) 'titulo_nivel_logro': tituloNivelLogro,
      if (descripcionNivelLogro != null)
        'descripcion_nivel_logro': descripcionNivelLogro,
      if (tipoIdNivelLogro != null) 'tipo_id_nivel_logro': tipoIdNivelLogro,
      if (notaEvalaucion != null) 'nota_evalaucion': notaEvalaucion,
      if (evaluacionProcesoId != null)
        'evaluacion_proceso_id': evaluacionProcesoId,
      if (nombreCurso != null) 'nombre_curso': nombreCurso,
      if (docenteApellMat != null) 'docente_apell_mat': docenteApellMat,
      if (docenteApellPat != null) 'docente_apell_pat': docenteApellPat,
      if (docenteNombre != null) 'docente_nombre': docenteNombre,
    });
  }

  TareaCursoCompanion copyWith(
      {Value<String> tareaId,
      Value<String> tareaTitulo,
      Value<String> tareaInstrucciones,
      Value<DateTime> tareafechaCreacion,
      Value<String> tareaEstadoId,
      Value<int> unidadAprendizajeId,
      Value<int> sesionAprendizajeId,
      Value<String> tareaFechaEntrega,
      Value<String> tareaHoraEntrega,
      Value<int> gradoId,
      Value<String> grado,
      Value<int> seccionId,
      Value<String> seccion,
      Value<DateTime> fechaEvaluacion,
      Value<String> tituloEvaluacion,
      Value<String> formaEvaluacion,
      Value<int> tipoRubroEvalId,
      Value<int> cargaCursoId,
      Value<int> silaboEventoId,
      Value<int> anioAcademicoId,
      Value<int> programaAcadId,
      Value<String> rubroEvalProcesoId,
      Value<int> alumnoId,
      Value<int> calendarioPeriodoId,
      Value<int> parametroDesenioId,
      Value<String> iconoNivelLogro,
      Value<String> tituloNivelLogro,
      Value<String> descripcionNivelLogro,
      Value<int> tipoIdNivelLogro,
      Value<double> notaEvalaucion,
      Value<String> evaluacionProcesoId,
      Value<String> nombreCurso,
      Value<String> docenteApellMat,
      Value<String> docenteApellPat,
      Value<String> docenteNombre}) {
    return TareaCursoCompanion(
      tareaId: tareaId ?? this.tareaId,
      tareaTitulo: tareaTitulo ?? this.tareaTitulo,
      tareaInstrucciones: tareaInstrucciones ?? this.tareaInstrucciones,
      tareafechaCreacion: tareafechaCreacion ?? this.tareafechaCreacion,
      tareaEstadoId: tareaEstadoId ?? this.tareaEstadoId,
      unidadAprendizajeId: unidadAprendizajeId ?? this.unidadAprendizajeId,
      sesionAprendizajeId: sesionAprendizajeId ?? this.sesionAprendizajeId,
      tareaFechaEntrega: tareaFechaEntrega ?? this.tareaFechaEntrega,
      tareaHoraEntrega: tareaHoraEntrega ?? this.tareaHoraEntrega,
      gradoId: gradoId ?? this.gradoId,
      grado: grado ?? this.grado,
      seccionId: seccionId ?? this.seccionId,
      seccion: seccion ?? this.seccion,
      fechaEvaluacion: fechaEvaluacion ?? this.fechaEvaluacion,
      tituloEvaluacion: tituloEvaluacion ?? this.tituloEvaluacion,
      formaEvaluacion: formaEvaluacion ?? this.formaEvaluacion,
      tipoRubroEvalId: tipoRubroEvalId ?? this.tipoRubroEvalId,
      cargaCursoId: cargaCursoId ?? this.cargaCursoId,
      silaboEventoId: silaboEventoId ?? this.silaboEventoId,
      anioAcademicoId: anioAcademicoId ?? this.anioAcademicoId,
      programaAcadId: programaAcadId ?? this.programaAcadId,
      rubroEvalProcesoId: rubroEvalProcesoId ?? this.rubroEvalProcesoId,
      alumnoId: alumnoId ?? this.alumnoId,
      calendarioPeriodoId: calendarioPeriodoId ?? this.calendarioPeriodoId,
      parametroDesenioId: parametroDesenioId ?? this.parametroDesenioId,
      iconoNivelLogro: iconoNivelLogro ?? this.iconoNivelLogro,
      tituloNivelLogro: tituloNivelLogro ?? this.tituloNivelLogro,
      descripcionNivelLogro:
          descripcionNivelLogro ?? this.descripcionNivelLogro,
      tipoIdNivelLogro: tipoIdNivelLogro ?? this.tipoIdNivelLogro,
      notaEvalaucion: notaEvalaucion ?? this.notaEvalaucion,
      evaluacionProcesoId: evaluacionProcesoId ?? this.evaluacionProcesoId,
      nombreCurso: nombreCurso ?? this.nombreCurso,
      docenteApellMat: docenteApellMat ?? this.docenteApellMat,
      docenteApellPat: docenteApellPat ?? this.docenteApellPat,
      docenteNombre: docenteNombre ?? this.docenteNombre,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (tareaId.present) {
      map['tarea_id'] = Variable<String>(tareaId.value);
    }
    if (tareaTitulo.present) {
      map['tarea_titulo'] = Variable<String>(tareaTitulo.value);
    }
    if (tareaInstrucciones.present) {
      map['tarea_instrucciones'] = Variable<String>(tareaInstrucciones.value);
    }
    if (tareafechaCreacion.present) {
      map['tareafecha_creacion'] = Variable<DateTime>(tareafechaCreacion.value);
    }
    if (tareaEstadoId.present) {
      map['tarea_estado_id'] = Variable<String>(tareaEstadoId.value);
    }
    if (unidadAprendizajeId.present) {
      map['unidad_aprendizaje_id'] = Variable<int>(unidadAprendizajeId.value);
    }
    if (sesionAprendizajeId.present) {
      map['sesion_aprendizaje_id'] = Variable<int>(sesionAprendizajeId.value);
    }
    if (tareaFechaEntrega.present) {
      map['tarea_fecha_entrega'] = Variable<String>(tareaFechaEntrega.value);
    }
    if (tareaHoraEntrega.present) {
      map['tarea_hora_entrega'] = Variable<String>(tareaHoraEntrega.value);
    }
    if (gradoId.present) {
      map['grado_id'] = Variable<int>(gradoId.value);
    }
    if (grado.present) {
      map['grado'] = Variable<String>(grado.value);
    }
    if (seccionId.present) {
      map['seccion_id'] = Variable<int>(seccionId.value);
    }
    if (seccion.present) {
      map['seccion'] = Variable<String>(seccion.value);
    }
    if (fechaEvaluacion.present) {
      map['fecha_evaluacion'] = Variable<DateTime>(fechaEvaluacion.value);
    }
    if (tituloEvaluacion.present) {
      map['titulo_evaluacion'] = Variable<String>(tituloEvaluacion.value);
    }
    if (formaEvaluacion.present) {
      map['forma_evaluacion'] = Variable<String>(formaEvaluacion.value);
    }
    if (tipoRubroEvalId.present) {
      map['tipo_rubro_eval_id'] = Variable<int>(tipoRubroEvalId.value);
    }
    if (cargaCursoId.present) {
      map['carga_curso_id'] = Variable<int>(cargaCursoId.value);
    }
    if (silaboEventoId.present) {
      map['silabo_evento_id'] = Variable<int>(silaboEventoId.value);
    }
    if (anioAcademicoId.present) {
      map['anio_academico_id'] = Variable<int>(anioAcademicoId.value);
    }
    if (programaAcadId.present) {
      map['programa_acad_id'] = Variable<int>(programaAcadId.value);
    }
    if (rubroEvalProcesoId.present) {
      map['rubro_eval_proceso_id'] = Variable<String>(rubroEvalProcesoId.value);
    }
    if (alumnoId.present) {
      map['alumno_id'] = Variable<int>(alumnoId.value);
    }
    if (calendarioPeriodoId.present) {
      map['calendario_periodo_id'] = Variable<int>(calendarioPeriodoId.value);
    }
    if (parametroDesenioId.present) {
      map['parametro_desenio_id'] = Variable<int>(parametroDesenioId.value);
    }
    if (iconoNivelLogro.present) {
      map['icono_nivel_logro'] = Variable<String>(iconoNivelLogro.value);
    }
    if (tituloNivelLogro.present) {
      map['titulo_nivel_logro'] = Variable<String>(tituloNivelLogro.value);
    }
    if (descripcionNivelLogro.present) {
      map['descripcion_nivel_logro'] =
          Variable<String>(descripcionNivelLogro.value);
    }
    if (tipoIdNivelLogro.present) {
      map['tipo_id_nivel_logro'] = Variable<int>(tipoIdNivelLogro.value);
    }
    if (notaEvalaucion.present) {
      map['nota_evalaucion'] = Variable<double>(notaEvalaucion.value);
    }
    if (evaluacionProcesoId.present) {
      map['evaluacion_proceso_id'] =
          Variable<String>(evaluacionProcesoId.value);
    }
    if (nombreCurso.present) {
      map['nombre_curso'] = Variable<String>(nombreCurso.value);
    }
    if (docenteApellMat.present) {
      map['docente_apell_mat'] = Variable<String>(docenteApellMat.value);
    }
    if (docenteApellPat.present) {
      map['docente_apell_pat'] = Variable<String>(docenteApellPat.value);
    }
    if (docenteNombre.present) {
      map['docente_nombre'] = Variable<String>(docenteNombre.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TareaCursoCompanion(')
          ..write('tareaId: $tareaId, ')
          ..write('tareaTitulo: $tareaTitulo, ')
          ..write('tareaInstrucciones: $tareaInstrucciones, ')
          ..write('tareafechaCreacion: $tareafechaCreacion, ')
          ..write('tareaEstadoId: $tareaEstadoId, ')
          ..write('unidadAprendizajeId: $unidadAprendizajeId, ')
          ..write('sesionAprendizajeId: $sesionAprendizajeId, ')
          ..write('tareaFechaEntrega: $tareaFechaEntrega, ')
          ..write('tareaHoraEntrega: $tareaHoraEntrega, ')
          ..write('gradoId: $gradoId, ')
          ..write('grado: $grado, ')
          ..write('seccionId: $seccionId, ')
          ..write('seccion: $seccion, ')
          ..write('fechaEvaluacion: $fechaEvaluacion, ')
          ..write('tituloEvaluacion: $tituloEvaluacion, ')
          ..write('formaEvaluacion: $formaEvaluacion, ')
          ..write('tipoRubroEvalId: $tipoRubroEvalId, ')
          ..write('cargaCursoId: $cargaCursoId, ')
          ..write('silaboEventoId: $silaboEventoId, ')
          ..write('anioAcademicoId: $anioAcademicoId, ')
          ..write('programaAcadId: $programaAcadId, ')
          ..write('rubroEvalProcesoId: $rubroEvalProcesoId, ')
          ..write('alumnoId: $alumnoId, ')
          ..write('calendarioPeriodoId: $calendarioPeriodoId, ')
          ..write('parametroDesenioId: $parametroDesenioId, ')
          ..write('iconoNivelLogro: $iconoNivelLogro, ')
          ..write('tituloNivelLogro: $tituloNivelLogro, ')
          ..write('descripcionNivelLogro: $descripcionNivelLogro, ')
          ..write('tipoIdNivelLogro: $tipoIdNivelLogro, ')
          ..write('notaEvalaucion: $notaEvalaucion, ')
          ..write('evaluacionProcesoId: $evaluacionProcesoId, ')
          ..write('nombreCurso: $nombreCurso, ')
          ..write('docenteApellMat: $docenteApellMat, ')
          ..write('docenteApellPat: $docenteApellPat, ')
          ..write('docenteNombre: $docenteNombre')
          ..write(')'))
        .toString();
  }
}

class $TareaCursoTable extends TareaCurso
    with TableInfo<$TareaCursoTable, TareaCursoData> {
  final GeneratedDatabase _db;
  final String _alias;
  $TareaCursoTable(this._db, [this._alias]);
  final VerificationMeta _tareaIdMeta = const VerificationMeta('tareaId');
  GeneratedTextColumn _tareaId;
  @override
  GeneratedTextColumn get tareaId => _tareaId ??= _constructTareaId();
  GeneratedTextColumn _constructTareaId() {
    return GeneratedTextColumn(
      'tarea_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _tareaTituloMeta =
      const VerificationMeta('tareaTitulo');
  GeneratedTextColumn _tareaTitulo;
  @override
  GeneratedTextColumn get tareaTitulo =>
      _tareaTitulo ??= _constructTareaTitulo();
  GeneratedTextColumn _constructTareaTitulo() {
    return GeneratedTextColumn(
      'tarea_titulo',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tareaInstruccionesMeta =
      const VerificationMeta('tareaInstrucciones');
  GeneratedTextColumn _tareaInstrucciones;
  @override
  GeneratedTextColumn get tareaInstrucciones =>
      _tareaInstrucciones ??= _constructTareaInstrucciones();
  GeneratedTextColumn _constructTareaInstrucciones() {
    return GeneratedTextColumn(
      'tarea_instrucciones',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tareafechaCreacionMeta =
      const VerificationMeta('tareafechaCreacion');
  GeneratedDateTimeColumn _tareafechaCreacion;
  @override
  GeneratedDateTimeColumn get tareafechaCreacion =>
      _tareafechaCreacion ??= _constructTareafechaCreacion();
  GeneratedDateTimeColumn _constructTareafechaCreacion() {
    return GeneratedDateTimeColumn(
      'tareafecha_creacion',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tareaEstadoIdMeta =
      const VerificationMeta('tareaEstadoId');
  GeneratedTextColumn _tareaEstadoId;
  @override
  GeneratedTextColumn get tareaEstadoId =>
      _tareaEstadoId ??= _constructTareaEstadoId();
  GeneratedTextColumn _constructTareaEstadoId() {
    return GeneratedTextColumn(
      'tarea_estado_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _unidadAprendizajeIdMeta =
      const VerificationMeta('unidadAprendizajeId');
  GeneratedIntColumn _unidadAprendizajeId;
  @override
  GeneratedIntColumn get unidadAprendizajeId =>
      _unidadAprendizajeId ??= _constructUnidadAprendizajeId();
  GeneratedIntColumn _constructUnidadAprendizajeId() {
    return GeneratedIntColumn(
      'unidad_aprendizaje_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _sesionAprendizajeIdMeta =
      const VerificationMeta('sesionAprendizajeId');
  GeneratedIntColumn _sesionAprendizajeId;
  @override
  GeneratedIntColumn get sesionAprendizajeId =>
      _sesionAprendizajeId ??= _constructSesionAprendizajeId();
  GeneratedIntColumn _constructSesionAprendizajeId() {
    return GeneratedIntColumn(
      'sesion_aprendizaje_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tareaFechaEntregaMeta =
      const VerificationMeta('tareaFechaEntrega');
  GeneratedTextColumn _tareaFechaEntrega;
  @override
  GeneratedTextColumn get tareaFechaEntrega =>
      _tareaFechaEntrega ??= _constructTareaFechaEntrega();
  GeneratedTextColumn _constructTareaFechaEntrega() {
    return GeneratedTextColumn(
      'tarea_fecha_entrega',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tareaHoraEntregaMeta =
      const VerificationMeta('tareaHoraEntrega');
  GeneratedTextColumn _tareaHoraEntrega;
  @override
  GeneratedTextColumn get tareaHoraEntrega =>
      _tareaHoraEntrega ??= _constructTareaHoraEntrega();
  GeneratedTextColumn _constructTareaHoraEntrega() {
    return GeneratedTextColumn(
      'tarea_hora_entrega',
      $tableName,
      true,
    );
  }

  final VerificationMeta _gradoIdMeta = const VerificationMeta('gradoId');
  GeneratedIntColumn _gradoId;
  @override
  GeneratedIntColumn get gradoId => _gradoId ??= _constructGradoId();
  GeneratedIntColumn _constructGradoId() {
    return GeneratedIntColumn(
      'grado_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _gradoMeta = const VerificationMeta('grado');
  GeneratedTextColumn _grado;
  @override
  GeneratedTextColumn get grado => _grado ??= _constructGrado();
  GeneratedTextColumn _constructGrado() {
    return GeneratedTextColumn(
      'grado',
      $tableName,
      true,
    );
  }

  final VerificationMeta _seccionIdMeta = const VerificationMeta('seccionId');
  GeneratedIntColumn _seccionId;
  @override
  GeneratedIntColumn get seccionId => _seccionId ??= _constructSeccionId();
  GeneratedIntColumn _constructSeccionId() {
    return GeneratedIntColumn(
      'seccion_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _seccionMeta = const VerificationMeta('seccion');
  GeneratedTextColumn _seccion;
  @override
  GeneratedTextColumn get seccion => _seccion ??= _constructSeccion();
  GeneratedTextColumn _constructSeccion() {
    return GeneratedTextColumn(
      'seccion',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fechaEvaluacionMeta =
      const VerificationMeta('fechaEvaluacion');
  GeneratedDateTimeColumn _fechaEvaluacion;
  @override
  GeneratedDateTimeColumn get fechaEvaluacion =>
      _fechaEvaluacion ??= _constructFechaEvaluacion();
  GeneratedDateTimeColumn _constructFechaEvaluacion() {
    return GeneratedDateTimeColumn(
      'fecha_evaluacion',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tituloEvaluacionMeta =
      const VerificationMeta('tituloEvaluacion');
  GeneratedTextColumn _tituloEvaluacion;
  @override
  GeneratedTextColumn get tituloEvaluacion =>
      _tituloEvaluacion ??= _constructTituloEvaluacion();
  GeneratedTextColumn _constructTituloEvaluacion() {
    return GeneratedTextColumn(
      'titulo_evaluacion',
      $tableName,
      true,
    );
  }

  final VerificationMeta _formaEvaluacionMeta =
      const VerificationMeta('formaEvaluacion');
  GeneratedTextColumn _formaEvaluacion;
  @override
  GeneratedTextColumn get formaEvaluacion =>
      _formaEvaluacion ??= _constructFormaEvaluacion();
  GeneratedTextColumn _constructFormaEvaluacion() {
    return GeneratedTextColumn(
      'forma_evaluacion',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tipoRubroEvalIdMeta =
      const VerificationMeta('tipoRubroEvalId');
  GeneratedIntColumn _tipoRubroEvalId;
  @override
  GeneratedIntColumn get tipoRubroEvalId =>
      _tipoRubroEvalId ??= _constructTipoRubroEvalId();
  GeneratedIntColumn _constructTipoRubroEvalId() {
    return GeneratedIntColumn(
      'tipo_rubro_eval_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _cargaCursoIdMeta =
      const VerificationMeta('cargaCursoId');
  GeneratedIntColumn _cargaCursoId;
  @override
  GeneratedIntColumn get cargaCursoId =>
      _cargaCursoId ??= _constructCargaCursoId();
  GeneratedIntColumn _constructCargaCursoId() {
    return GeneratedIntColumn(
      'carga_curso_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _silaboEventoIdMeta =
      const VerificationMeta('silaboEventoId');
  GeneratedIntColumn _silaboEventoId;
  @override
  GeneratedIntColumn get silaboEventoId =>
      _silaboEventoId ??= _constructSilaboEventoId();
  GeneratedIntColumn _constructSilaboEventoId() {
    return GeneratedIntColumn(
      'silabo_evento_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _anioAcademicoIdMeta =
      const VerificationMeta('anioAcademicoId');
  GeneratedIntColumn _anioAcademicoId;
  @override
  GeneratedIntColumn get anioAcademicoId =>
      _anioAcademicoId ??= _constructAnioAcademicoId();
  GeneratedIntColumn _constructAnioAcademicoId() {
    return GeneratedIntColumn(
      'anio_academico_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _programaAcadIdMeta =
      const VerificationMeta('programaAcadId');
  GeneratedIntColumn _programaAcadId;
  @override
  GeneratedIntColumn get programaAcadId =>
      _programaAcadId ??= _constructProgramaAcadId();
  GeneratedIntColumn _constructProgramaAcadId() {
    return GeneratedIntColumn(
      'programa_acad_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _rubroEvalProcesoIdMeta =
      const VerificationMeta('rubroEvalProcesoId');
  GeneratedTextColumn _rubroEvalProcesoId;
  @override
  GeneratedTextColumn get rubroEvalProcesoId =>
      _rubroEvalProcesoId ??= _constructRubroEvalProcesoId();
  GeneratedTextColumn _constructRubroEvalProcesoId() {
    return GeneratedTextColumn(
      'rubro_eval_proceso_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _alumnoIdMeta = const VerificationMeta('alumnoId');
  GeneratedIntColumn _alumnoId;
  @override
  GeneratedIntColumn get alumnoId => _alumnoId ??= _constructAlumnoId();
  GeneratedIntColumn _constructAlumnoId() {
    return GeneratedIntColumn(
      'alumno_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _calendarioPeriodoIdMeta =
      const VerificationMeta('calendarioPeriodoId');
  GeneratedIntColumn _calendarioPeriodoId;
  @override
  GeneratedIntColumn get calendarioPeriodoId =>
      _calendarioPeriodoId ??= _constructCalendarioPeriodoId();
  GeneratedIntColumn _constructCalendarioPeriodoId() {
    return GeneratedIntColumn(
      'calendario_periodo_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _parametroDesenioIdMeta =
      const VerificationMeta('parametroDesenioId');
  GeneratedIntColumn _parametroDesenioId;
  @override
  GeneratedIntColumn get parametroDesenioId =>
      _parametroDesenioId ??= _constructParametroDesenioId();
  GeneratedIntColumn _constructParametroDesenioId() {
    return GeneratedIntColumn(
      'parametro_desenio_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _iconoNivelLogroMeta =
      const VerificationMeta('iconoNivelLogro');
  GeneratedTextColumn _iconoNivelLogro;
  @override
  GeneratedTextColumn get iconoNivelLogro =>
      _iconoNivelLogro ??= _constructIconoNivelLogro();
  GeneratedTextColumn _constructIconoNivelLogro() {
    return GeneratedTextColumn(
      'icono_nivel_logro',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tituloNivelLogroMeta =
      const VerificationMeta('tituloNivelLogro');
  GeneratedTextColumn _tituloNivelLogro;
  @override
  GeneratedTextColumn get tituloNivelLogro =>
      _tituloNivelLogro ??= _constructTituloNivelLogro();
  GeneratedTextColumn _constructTituloNivelLogro() {
    return GeneratedTextColumn(
      'titulo_nivel_logro',
      $tableName,
      true,
    );
  }

  final VerificationMeta _descripcionNivelLogroMeta =
      const VerificationMeta('descripcionNivelLogro');
  GeneratedTextColumn _descripcionNivelLogro;
  @override
  GeneratedTextColumn get descripcionNivelLogro =>
      _descripcionNivelLogro ??= _constructDescripcionNivelLogro();
  GeneratedTextColumn _constructDescripcionNivelLogro() {
    return GeneratedTextColumn(
      'descripcion_nivel_logro',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tipoIdNivelLogroMeta =
      const VerificationMeta('tipoIdNivelLogro');
  GeneratedIntColumn _tipoIdNivelLogro;
  @override
  GeneratedIntColumn get tipoIdNivelLogro =>
      _tipoIdNivelLogro ??= _constructTipoIdNivelLogro();
  GeneratedIntColumn _constructTipoIdNivelLogro() {
    return GeneratedIntColumn(
      'tipo_id_nivel_logro',
      $tableName,
      true,
    );
  }

  final VerificationMeta _notaEvalaucionMeta =
      const VerificationMeta('notaEvalaucion');
  GeneratedRealColumn _notaEvalaucion;
  @override
  GeneratedRealColumn get notaEvalaucion =>
      _notaEvalaucion ??= _constructNotaEvalaucion();
  GeneratedRealColumn _constructNotaEvalaucion() {
    return GeneratedRealColumn(
      'nota_evalaucion',
      $tableName,
      true,
    );
  }

  final VerificationMeta _evaluacionProcesoIdMeta =
      const VerificationMeta('evaluacionProcesoId');
  GeneratedTextColumn _evaluacionProcesoId;
  @override
  GeneratedTextColumn get evaluacionProcesoId =>
      _evaluacionProcesoId ??= _constructEvaluacionProcesoId();
  GeneratedTextColumn _constructEvaluacionProcesoId() {
    return GeneratedTextColumn(
      'evaluacion_proceso_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _nombreCursoMeta =
      const VerificationMeta('nombreCurso');
  GeneratedTextColumn _nombreCurso;
  @override
  GeneratedTextColumn get nombreCurso =>
      _nombreCurso ??= _constructNombreCurso();
  GeneratedTextColumn _constructNombreCurso() {
    return GeneratedTextColumn(
      'nombre_curso',
      $tableName,
      true,
    );
  }

  final VerificationMeta _docenteApellMatMeta =
      const VerificationMeta('docenteApellMat');
  GeneratedTextColumn _docenteApellMat;
  @override
  GeneratedTextColumn get docenteApellMat =>
      _docenteApellMat ??= _constructDocenteApellMat();
  GeneratedTextColumn _constructDocenteApellMat() {
    return GeneratedTextColumn(
      'docente_apell_mat',
      $tableName,
      true,
    );
  }

  final VerificationMeta _docenteApellPatMeta =
      const VerificationMeta('docenteApellPat');
  GeneratedTextColumn _docenteApellPat;
  @override
  GeneratedTextColumn get docenteApellPat =>
      _docenteApellPat ??= _constructDocenteApellPat();
  GeneratedTextColumn _constructDocenteApellPat() {
    return GeneratedTextColumn(
      'docente_apell_pat',
      $tableName,
      true,
    );
  }

  final VerificationMeta _docenteNombreMeta =
      const VerificationMeta('docenteNombre');
  GeneratedTextColumn _docenteNombre;
  @override
  GeneratedTextColumn get docenteNombre =>
      _docenteNombre ??= _constructDocenteNombre();
  GeneratedTextColumn _constructDocenteNombre() {
    return GeneratedTextColumn(
      'docente_nombre',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        tareaId,
        tareaTitulo,
        tareaInstrucciones,
        tareafechaCreacion,
        tareaEstadoId,
        unidadAprendizajeId,
        sesionAprendizajeId,
        tareaFechaEntrega,
        tareaHoraEntrega,
        gradoId,
        grado,
        seccionId,
        seccion,
        fechaEvaluacion,
        tituloEvaluacion,
        formaEvaluacion,
        tipoRubroEvalId,
        cargaCursoId,
        silaboEventoId,
        anioAcademicoId,
        programaAcadId,
        rubroEvalProcesoId,
        alumnoId,
        calendarioPeriodoId,
        parametroDesenioId,
        iconoNivelLogro,
        tituloNivelLogro,
        descripcionNivelLogro,
        tipoIdNivelLogro,
        notaEvalaucion,
        evaluacionProcesoId,
        nombreCurso,
        docenteApellMat,
        docenteApellPat,
        docenteNombre
      ];
  @override
  $TareaCursoTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'tarea_curso';
  @override
  final String actualTableName = 'tarea_curso';
  @override
  VerificationContext validateIntegrity(Insertable<TareaCursoData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('tarea_id')) {
      context.handle(_tareaIdMeta,
          tareaId.isAcceptableOrUnknown(data['tarea_id'], _tareaIdMeta));
    } else if (isInserting) {
      context.missing(_tareaIdMeta);
    }
    if (data.containsKey('tarea_titulo')) {
      context.handle(
          _tareaTituloMeta,
          tareaTitulo.isAcceptableOrUnknown(
              data['tarea_titulo'], _tareaTituloMeta));
    }
    if (data.containsKey('tarea_instrucciones')) {
      context.handle(
          _tareaInstruccionesMeta,
          tareaInstrucciones.isAcceptableOrUnknown(
              data['tarea_instrucciones'], _tareaInstruccionesMeta));
    }
    if (data.containsKey('tareafecha_creacion')) {
      context.handle(
          _tareafechaCreacionMeta,
          tareafechaCreacion.isAcceptableOrUnknown(
              data['tareafecha_creacion'], _tareafechaCreacionMeta));
    }
    if (data.containsKey('tarea_estado_id')) {
      context.handle(
          _tareaEstadoIdMeta,
          tareaEstadoId.isAcceptableOrUnknown(
              data['tarea_estado_id'], _tareaEstadoIdMeta));
    }
    if (data.containsKey('unidad_aprendizaje_id')) {
      context.handle(
          _unidadAprendizajeIdMeta,
          unidadAprendizajeId.isAcceptableOrUnknown(
              data['unidad_aprendizaje_id'], _unidadAprendizajeIdMeta));
    }
    if (data.containsKey('sesion_aprendizaje_id')) {
      context.handle(
          _sesionAprendizajeIdMeta,
          sesionAprendizajeId.isAcceptableOrUnknown(
              data['sesion_aprendizaje_id'], _sesionAprendizajeIdMeta));
    }
    if (data.containsKey('tarea_fecha_entrega')) {
      context.handle(
          _tareaFechaEntregaMeta,
          tareaFechaEntrega.isAcceptableOrUnknown(
              data['tarea_fecha_entrega'], _tareaFechaEntregaMeta));
    }
    if (data.containsKey('tarea_hora_entrega')) {
      context.handle(
          _tareaHoraEntregaMeta,
          tareaHoraEntrega.isAcceptableOrUnknown(
              data['tarea_hora_entrega'], _tareaHoraEntregaMeta));
    }
    if (data.containsKey('grado_id')) {
      context.handle(_gradoIdMeta,
          gradoId.isAcceptableOrUnknown(data['grado_id'], _gradoIdMeta));
    }
    if (data.containsKey('grado')) {
      context.handle(
          _gradoMeta, grado.isAcceptableOrUnknown(data['grado'], _gradoMeta));
    }
    if (data.containsKey('seccion_id')) {
      context.handle(_seccionIdMeta,
          seccionId.isAcceptableOrUnknown(data['seccion_id'], _seccionIdMeta));
    }
    if (data.containsKey('seccion')) {
      context.handle(_seccionMeta,
          seccion.isAcceptableOrUnknown(data['seccion'], _seccionMeta));
    }
    if (data.containsKey('fecha_evaluacion')) {
      context.handle(
          _fechaEvaluacionMeta,
          fechaEvaluacion.isAcceptableOrUnknown(
              data['fecha_evaluacion'], _fechaEvaluacionMeta));
    }
    if (data.containsKey('titulo_evaluacion')) {
      context.handle(
          _tituloEvaluacionMeta,
          tituloEvaluacion.isAcceptableOrUnknown(
              data['titulo_evaluacion'], _tituloEvaluacionMeta));
    }
    if (data.containsKey('forma_evaluacion')) {
      context.handle(
          _formaEvaluacionMeta,
          formaEvaluacion.isAcceptableOrUnknown(
              data['forma_evaluacion'], _formaEvaluacionMeta));
    }
    if (data.containsKey('tipo_rubro_eval_id')) {
      context.handle(
          _tipoRubroEvalIdMeta,
          tipoRubroEvalId.isAcceptableOrUnknown(
              data['tipo_rubro_eval_id'], _tipoRubroEvalIdMeta));
    }
    if (data.containsKey('carga_curso_id')) {
      context.handle(
          _cargaCursoIdMeta,
          cargaCursoId.isAcceptableOrUnknown(
              data['carga_curso_id'], _cargaCursoIdMeta));
    }
    if (data.containsKey('silabo_evento_id')) {
      context.handle(
          _silaboEventoIdMeta,
          silaboEventoId.isAcceptableOrUnknown(
              data['silabo_evento_id'], _silaboEventoIdMeta));
    }
    if (data.containsKey('anio_academico_id')) {
      context.handle(
          _anioAcademicoIdMeta,
          anioAcademicoId.isAcceptableOrUnknown(
              data['anio_academico_id'], _anioAcademicoIdMeta));
    }
    if (data.containsKey('programa_acad_id')) {
      context.handle(
          _programaAcadIdMeta,
          programaAcadId.isAcceptableOrUnknown(
              data['programa_acad_id'], _programaAcadIdMeta));
    }
    if (data.containsKey('rubro_eval_proceso_id')) {
      context.handle(
          _rubroEvalProcesoIdMeta,
          rubroEvalProcesoId.isAcceptableOrUnknown(
              data['rubro_eval_proceso_id'], _rubroEvalProcesoIdMeta));
    }
    if (data.containsKey('alumno_id')) {
      context.handle(_alumnoIdMeta,
          alumnoId.isAcceptableOrUnknown(data['alumno_id'], _alumnoIdMeta));
    }
    if (data.containsKey('calendario_periodo_id')) {
      context.handle(
          _calendarioPeriodoIdMeta,
          calendarioPeriodoId.isAcceptableOrUnknown(
              data['calendario_periodo_id'], _calendarioPeriodoIdMeta));
    }
    if (data.containsKey('parametro_desenio_id')) {
      context.handle(
          _parametroDesenioIdMeta,
          parametroDesenioId.isAcceptableOrUnknown(
              data['parametro_desenio_id'], _parametroDesenioIdMeta));
    }
    if (data.containsKey('icono_nivel_logro')) {
      context.handle(
          _iconoNivelLogroMeta,
          iconoNivelLogro.isAcceptableOrUnknown(
              data['icono_nivel_logro'], _iconoNivelLogroMeta));
    }
    if (data.containsKey('titulo_nivel_logro')) {
      context.handle(
          _tituloNivelLogroMeta,
          tituloNivelLogro.isAcceptableOrUnknown(
              data['titulo_nivel_logro'], _tituloNivelLogroMeta));
    }
    if (data.containsKey('descripcion_nivel_logro')) {
      context.handle(
          _descripcionNivelLogroMeta,
          descripcionNivelLogro.isAcceptableOrUnknown(
              data['descripcion_nivel_logro'], _descripcionNivelLogroMeta));
    }
    if (data.containsKey('tipo_id_nivel_logro')) {
      context.handle(
          _tipoIdNivelLogroMeta,
          tipoIdNivelLogro.isAcceptableOrUnknown(
              data['tipo_id_nivel_logro'], _tipoIdNivelLogroMeta));
    }
    if (data.containsKey('nota_evalaucion')) {
      context.handle(
          _notaEvalaucionMeta,
          notaEvalaucion.isAcceptableOrUnknown(
              data['nota_evalaucion'], _notaEvalaucionMeta));
    }
    if (data.containsKey('evaluacion_proceso_id')) {
      context.handle(
          _evaluacionProcesoIdMeta,
          evaluacionProcesoId.isAcceptableOrUnknown(
              data['evaluacion_proceso_id'], _evaluacionProcesoIdMeta));
    }
    if (data.containsKey('nombre_curso')) {
      context.handle(
          _nombreCursoMeta,
          nombreCurso.isAcceptableOrUnknown(
              data['nombre_curso'], _nombreCursoMeta));
    }
    if (data.containsKey('docente_apell_mat')) {
      context.handle(
          _docenteApellMatMeta,
          docenteApellMat.isAcceptableOrUnknown(
              data['docente_apell_mat'], _docenteApellMatMeta));
    }
    if (data.containsKey('docente_apell_pat')) {
      context.handle(
          _docenteApellPatMeta,
          docenteApellPat.isAcceptableOrUnknown(
              data['docente_apell_pat'], _docenteApellPatMeta));
    }
    if (data.containsKey('docente_nombre')) {
      context.handle(
          _docenteNombreMeta,
          docenteNombre.isAcceptableOrUnknown(
              data['docente_nombre'], _docenteNombreMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {tareaId};
  @override
  TareaCursoData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return TareaCursoData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $TareaCursoTable createAlias(String alias) {
    return $TareaCursoTable(_db, alias);
  }
}

class EventoData extends DataClass implements Insertable<EventoData> {
  final String eventoId;
  final String titulo;
  final String descripcion;
  final String calendarioId;
  final int tipoEventoId;
  final int estadoId;
  final bool estadoPublicacion;
  final int entidadId;
  final int georeferenciaId;
  final String fechaEvento;
  final String horaEvento;
  final String pathImagen;
  final bool envioPersonalizado;
  final String tipoEventoNombre;
  final int usuarioReceptorId;
  final int eventoHijoId;
  final int likeCount;
  final String nombreEntidad;
  final String fotoEntidad;
  final String nombreEntidadSiglas;
  EventoData(
      {@required this.eventoId,
      this.titulo,
      this.descripcion,
      this.calendarioId,
      this.tipoEventoId,
      this.estadoId,
      this.estadoPublicacion,
      this.entidadId,
      this.georeferenciaId,
      this.fechaEvento,
      this.horaEvento,
      this.pathImagen,
      this.envioPersonalizado,
      this.tipoEventoNombre,
      this.usuarioReceptorId,
      this.eventoHijoId,
      this.likeCount,
      this.nombreEntidad,
      this.fotoEntidad,
      this.nombreEntidadSiglas});
  factory EventoData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final intType = db.typeSystem.forDartType<int>();
    final boolType = db.typeSystem.forDartType<bool>();
    return EventoData(
      eventoId: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}evento_id']),
      titulo:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}titulo']),
      descripcion: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}descripcion']),
      calendarioId: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}calendario_id']),
      tipoEventoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}tipo_evento_id']),
      estadoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}estado_id']),
      estadoPublicacion: boolType.mapFromDatabaseResponse(
          data['${effectivePrefix}estado_publicacion']),
      entidadId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}entidad_id']),
      georeferenciaId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}georeferencia_id']),
      fechaEvento: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}fecha_evento']),
      horaEvento: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}hora_evento']),
      pathImagen: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}path_imagen']),
      envioPersonalizado: boolType.mapFromDatabaseResponse(
          data['${effectivePrefix}envio_personalizado']),
      tipoEventoNombre: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}tipo_evento_nombre']),
      usuarioReceptorId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}usuario_receptor_id']),
      eventoHijoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}evento_hijo_id']),
      likeCount:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}like_count']),
      nombreEntidad: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}nombre_entidad']),
      fotoEntidad: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}foto_entidad']),
      nombreEntidadSiglas: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}nombre_entidad_siglas']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || eventoId != null) {
      map['evento_id'] = Variable<String>(eventoId);
    }
    if (!nullToAbsent || titulo != null) {
      map['titulo'] = Variable<String>(titulo);
    }
    if (!nullToAbsent || descripcion != null) {
      map['descripcion'] = Variable<String>(descripcion);
    }
    if (!nullToAbsent || calendarioId != null) {
      map['calendario_id'] = Variable<String>(calendarioId);
    }
    if (!nullToAbsent || tipoEventoId != null) {
      map['tipo_evento_id'] = Variable<int>(tipoEventoId);
    }
    if (!nullToAbsent || estadoId != null) {
      map['estado_id'] = Variable<int>(estadoId);
    }
    if (!nullToAbsent || estadoPublicacion != null) {
      map['estado_publicacion'] = Variable<bool>(estadoPublicacion);
    }
    if (!nullToAbsent || entidadId != null) {
      map['entidad_id'] = Variable<int>(entidadId);
    }
    if (!nullToAbsent || georeferenciaId != null) {
      map['georeferencia_id'] = Variable<int>(georeferenciaId);
    }
    if (!nullToAbsent || fechaEvento != null) {
      map['fecha_evento'] = Variable<String>(fechaEvento);
    }
    if (!nullToAbsent || horaEvento != null) {
      map['hora_evento'] = Variable<String>(horaEvento);
    }
    if (!nullToAbsent || pathImagen != null) {
      map['path_imagen'] = Variable<String>(pathImagen);
    }
    if (!nullToAbsent || envioPersonalizado != null) {
      map['envio_personalizado'] = Variable<bool>(envioPersonalizado);
    }
    if (!nullToAbsent || tipoEventoNombre != null) {
      map['tipo_evento_nombre'] = Variable<String>(tipoEventoNombre);
    }
    if (!nullToAbsent || usuarioReceptorId != null) {
      map['usuario_receptor_id'] = Variable<int>(usuarioReceptorId);
    }
    if (!nullToAbsent || eventoHijoId != null) {
      map['evento_hijo_id'] = Variable<int>(eventoHijoId);
    }
    if (!nullToAbsent || likeCount != null) {
      map['like_count'] = Variable<int>(likeCount);
    }
    if (!nullToAbsent || nombreEntidad != null) {
      map['nombre_entidad'] = Variable<String>(nombreEntidad);
    }
    if (!nullToAbsent || fotoEntidad != null) {
      map['foto_entidad'] = Variable<String>(fotoEntidad);
    }
    if (!nullToAbsent || nombreEntidadSiglas != null) {
      map['nombre_entidad_siglas'] = Variable<String>(nombreEntidadSiglas);
    }
    return map;
  }

  EventoCompanion toCompanion(bool nullToAbsent) {
    return EventoCompanion(
      eventoId: eventoId == null && nullToAbsent
          ? const Value.absent()
          : Value(eventoId),
      titulo:
          titulo == null && nullToAbsent ? const Value.absent() : Value(titulo),
      descripcion: descripcion == null && nullToAbsent
          ? const Value.absent()
          : Value(descripcion),
      calendarioId: calendarioId == null && nullToAbsent
          ? const Value.absent()
          : Value(calendarioId),
      tipoEventoId: tipoEventoId == null && nullToAbsent
          ? const Value.absent()
          : Value(tipoEventoId),
      estadoId: estadoId == null && nullToAbsent
          ? const Value.absent()
          : Value(estadoId),
      estadoPublicacion: estadoPublicacion == null && nullToAbsent
          ? const Value.absent()
          : Value(estadoPublicacion),
      entidadId: entidadId == null && nullToAbsent
          ? const Value.absent()
          : Value(entidadId),
      georeferenciaId: georeferenciaId == null && nullToAbsent
          ? const Value.absent()
          : Value(georeferenciaId),
      fechaEvento: fechaEvento == null && nullToAbsent
          ? const Value.absent()
          : Value(fechaEvento),
      horaEvento: horaEvento == null && nullToAbsent
          ? const Value.absent()
          : Value(horaEvento),
      pathImagen: pathImagen == null && nullToAbsent
          ? const Value.absent()
          : Value(pathImagen),
      envioPersonalizado: envioPersonalizado == null && nullToAbsent
          ? const Value.absent()
          : Value(envioPersonalizado),
      tipoEventoNombre: tipoEventoNombre == null && nullToAbsent
          ? const Value.absent()
          : Value(tipoEventoNombre),
      usuarioReceptorId: usuarioReceptorId == null && nullToAbsent
          ? const Value.absent()
          : Value(usuarioReceptorId),
      eventoHijoId: eventoHijoId == null && nullToAbsent
          ? const Value.absent()
          : Value(eventoHijoId),
      likeCount: likeCount == null && nullToAbsent
          ? const Value.absent()
          : Value(likeCount),
      nombreEntidad: nombreEntidad == null && nullToAbsent
          ? const Value.absent()
          : Value(nombreEntidad),
      fotoEntidad: fotoEntidad == null && nullToAbsent
          ? const Value.absent()
          : Value(fotoEntidad),
      nombreEntidadSiglas: nombreEntidadSiglas == null && nullToAbsent
          ? const Value.absent()
          : Value(nombreEntidadSiglas),
    );
  }

  factory EventoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return EventoData(
      eventoId: serializer.fromJson<String>(json['eventoId']),
      titulo: serializer.fromJson<String>(json['titulo']),
      descripcion: serializer.fromJson<String>(json['descripcion']),
      calendarioId: serializer.fromJson<String>(json['calendarioId']),
      tipoEventoId: serializer.fromJson<int>(json['tipoEventoId']),
      estadoId: serializer.fromJson<int>(json['estadoId']),
      estadoPublicacion: serializer.fromJson<bool>(json['estadoPublicacion']),
      entidadId: serializer.fromJson<int>(json['entidadId']),
      georeferenciaId: serializer.fromJson<int>(json['georeferenciaId']),
      fechaEvento: serializer.fromJson<String>(json['fechaEvento']),
      horaEvento: serializer.fromJson<String>(json['horaEvento']),
      pathImagen: serializer.fromJson<String>(json['pathImagen']),
      envioPersonalizado: serializer.fromJson<bool>(json['envioPersonalizado']),
      tipoEventoNombre: serializer.fromJson<String>(json['tipoEventoNombre']),
      usuarioReceptorId: serializer.fromJson<int>(json['usuarioReceptorId']),
      eventoHijoId: serializer.fromJson<int>(json['eventoHijoId']),
      likeCount: serializer.fromJson<int>(json['likeCount']),
      nombreEntidad: serializer.fromJson<String>(json['nombreEntidad']),
      fotoEntidad: serializer.fromJson<String>(json['fotoEntidad']),
      nombreEntidadSiglas:
          serializer.fromJson<String>(json['nombreEntidadSiglas']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'eventoId': serializer.toJson<String>(eventoId),
      'titulo': serializer.toJson<String>(titulo),
      'descripcion': serializer.toJson<String>(descripcion),
      'calendarioId': serializer.toJson<String>(calendarioId),
      'tipoEventoId': serializer.toJson<int>(tipoEventoId),
      'estadoId': serializer.toJson<int>(estadoId),
      'estadoPublicacion': serializer.toJson<bool>(estadoPublicacion),
      'entidadId': serializer.toJson<int>(entidadId),
      'georeferenciaId': serializer.toJson<int>(georeferenciaId),
      'fechaEvento': serializer.toJson<String>(fechaEvento),
      'horaEvento': serializer.toJson<String>(horaEvento),
      'pathImagen': serializer.toJson<String>(pathImagen),
      'envioPersonalizado': serializer.toJson<bool>(envioPersonalizado),
      'tipoEventoNombre': serializer.toJson<String>(tipoEventoNombre),
      'usuarioReceptorId': serializer.toJson<int>(usuarioReceptorId),
      'eventoHijoId': serializer.toJson<int>(eventoHijoId),
      'likeCount': serializer.toJson<int>(likeCount),
      'nombreEntidad': serializer.toJson<String>(nombreEntidad),
      'fotoEntidad': serializer.toJson<String>(fotoEntidad),
      'nombreEntidadSiglas': serializer.toJson<String>(nombreEntidadSiglas),
    };
  }

  EventoData copyWith(
          {String eventoId,
          String titulo,
          String descripcion,
          String calendarioId,
          int tipoEventoId,
          int estadoId,
          bool estadoPublicacion,
          int entidadId,
          int georeferenciaId,
          String fechaEvento,
          String horaEvento,
          String pathImagen,
          bool envioPersonalizado,
          String tipoEventoNombre,
          int usuarioReceptorId,
          int eventoHijoId,
          int likeCount,
          String nombreEntidad,
          String fotoEntidad,
          String nombreEntidadSiglas}) =>
      EventoData(
        eventoId: eventoId ?? this.eventoId,
        titulo: titulo ?? this.titulo,
        descripcion: descripcion ?? this.descripcion,
        calendarioId: calendarioId ?? this.calendarioId,
        tipoEventoId: tipoEventoId ?? this.tipoEventoId,
        estadoId: estadoId ?? this.estadoId,
        estadoPublicacion: estadoPublicacion ?? this.estadoPublicacion,
        entidadId: entidadId ?? this.entidadId,
        georeferenciaId: georeferenciaId ?? this.georeferenciaId,
        fechaEvento: fechaEvento ?? this.fechaEvento,
        horaEvento: horaEvento ?? this.horaEvento,
        pathImagen: pathImagen ?? this.pathImagen,
        envioPersonalizado: envioPersonalizado ?? this.envioPersonalizado,
        tipoEventoNombre: tipoEventoNombre ?? this.tipoEventoNombre,
        usuarioReceptorId: usuarioReceptorId ?? this.usuarioReceptorId,
        eventoHijoId: eventoHijoId ?? this.eventoHijoId,
        likeCount: likeCount ?? this.likeCount,
        nombreEntidad: nombreEntidad ?? this.nombreEntidad,
        fotoEntidad: fotoEntidad ?? this.fotoEntidad,
        nombreEntidadSiglas: nombreEntidadSiglas ?? this.nombreEntidadSiglas,
      );
  @override
  String toString() {
    return (StringBuffer('EventoData(')
          ..write('eventoId: $eventoId, ')
          ..write('titulo: $titulo, ')
          ..write('descripcion: $descripcion, ')
          ..write('calendarioId: $calendarioId, ')
          ..write('tipoEventoId: $tipoEventoId, ')
          ..write('estadoId: $estadoId, ')
          ..write('estadoPublicacion: $estadoPublicacion, ')
          ..write('entidadId: $entidadId, ')
          ..write('georeferenciaId: $georeferenciaId, ')
          ..write('fechaEvento: $fechaEvento, ')
          ..write('horaEvento: $horaEvento, ')
          ..write('pathImagen: $pathImagen, ')
          ..write('envioPersonalizado: $envioPersonalizado, ')
          ..write('tipoEventoNombre: $tipoEventoNombre, ')
          ..write('usuarioReceptorId: $usuarioReceptorId, ')
          ..write('eventoHijoId: $eventoHijoId, ')
          ..write('likeCount: $likeCount, ')
          ..write('nombreEntidad: $nombreEntidad, ')
          ..write('fotoEntidad: $fotoEntidad, ')
          ..write('nombreEntidadSiglas: $nombreEntidadSiglas')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      eventoId.hashCode,
      $mrjc(
          titulo.hashCode,
          $mrjc(
              descripcion.hashCode,
              $mrjc(
                  calendarioId.hashCode,
                  $mrjc(
                      tipoEventoId.hashCode,
                      $mrjc(
                          estadoId.hashCode,
                          $mrjc(
                              estadoPublicacion.hashCode,
                              $mrjc(
                                  entidadId.hashCode,
                                  $mrjc(
                                      georeferenciaId.hashCode,
                                      $mrjc(
                                          fechaEvento.hashCode,
                                          $mrjc(
                                              horaEvento.hashCode,
                                              $mrjc(
                                                  pathImagen.hashCode,
                                                  $mrjc(
                                                      envioPersonalizado
                                                          .hashCode,
                                                      $mrjc(
                                                          tipoEventoNombre
                                                              .hashCode,
                                                          $mrjc(
                                                              usuarioReceptorId
                                                                  .hashCode,
                                                              $mrjc(
                                                                  eventoHijoId
                                                                      .hashCode,
                                                                  $mrjc(
                                                                      likeCount
                                                                          .hashCode,
                                                                      $mrjc(
                                                                          nombreEntidad
                                                                              .hashCode,
                                                                          $mrjc(
                                                                              fotoEntidad.hashCode,
                                                                              nombreEntidadSiglas.hashCode))))))))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is EventoData &&
          other.eventoId == this.eventoId &&
          other.titulo == this.titulo &&
          other.descripcion == this.descripcion &&
          other.calendarioId == this.calendarioId &&
          other.tipoEventoId == this.tipoEventoId &&
          other.estadoId == this.estadoId &&
          other.estadoPublicacion == this.estadoPublicacion &&
          other.entidadId == this.entidadId &&
          other.georeferenciaId == this.georeferenciaId &&
          other.fechaEvento == this.fechaEvento &&
          other.horaEvento == this.horaEvento &&
          other.pathImagen == this.pathImagen &&
          other.envioPersonalizado == this.envioPersonalizado &&
          other.tipoEventoNombre == this.tipoEventoNombre &&
          other.usuarioReceptorId == this.usuarioReceptorId &&
          other.eventoHijoId == this.eventoHijoId &&
          other.likeCount == this.likeCount &&
          other.nombreEntidad == this.nombreEntidad &&
          other.fotoEntidad == this.fotoEntidad &&
          other.nombreEntidadSiglas == this.nombreEntidadSiglas);
}

class EventoCompanion extends UpdateCompanion<EventoData> {
  final Value<String> eventoId;
  final Value<String> titulo;
  final Value<String> descripcion;
  final Value<String> calendarioId;
  final Value<int> tipoEventoId;
  final Value<int> estadoId;
  final Value<bool> estadoPublicacion;
  final Value<int> entidadId;
  final Value<int> georeferenciaId;
  final Value<String> fechaEvento;
  final Value<String> horaEvento;
  final Value<String> pathImagen;
  final Value<bool> envioPersonalizado;
  final Value<String> tipoEventoNombre;
  final Value<int> usuarioReceptorId;
  final Value<int> eventoHijoId;
  final Value<int> likeCount;
  final Value<String> nombreEntidad;
  final Value<String> fotoEntidad;
  final Value<String> nombreEntidadSiglas;
  const EventoCompanion({
    this.eventoId = const Value.absent(),
    this.titulo = const Value.absent(),
    this.descripcion = const Value.absent(),
    this.calendarioId = const Value.absent(),
    this.tipoEventoId = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.estadoPublicacion = const Value.absent(),
    this.entidadId = const Value.absent(),
    this.georeferenciaId = const Value.absent(),
    this.fechaEvento = const Value.absent(),
    this.horaEvento = const Value.absent(),
    this.pathImagen = const Value.absent(),
    this.envioPersonalizado = const Value.absent(),
    this.tipoEventoNombre = const Value.absent(),
    this.usuarioReceptorId = const Value.absent(),
    this.eventoHijoId = const Value.absent(),
    this.likeCount = const Value.absent(),
    this.nombreEntidad = const Value.absent(),
    this.fotoEntidad = const Value.absent(),
    this.nombreEntidadSiglas = const Value.absent(),
  });
  EventoCompanion.insert({
    @required String eventoId,
    this.titulo = const Value.absent(),
    this.descripcion = const Value.absent(),
    this.calendarioId = const Value.absent(),
    this.tipoEventoId = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.estadoPublicacion = const Value.absent(),
    this.entidadId = const Value.absent(),
    this.georeferenciaId = const Value.absent(),
    this.fechaEvento = const Value.absent(),
    this.horaEvento = const Value.absent(),
    this.pathImagen = const Value.absent(),
    this.envioPersonalizado = const Value.absent(),
    this.tipoEventoNombre = const Value.absent(),
    this.usuarioReceptorId = const Value.absent(),
    this.eventoHijoId = const Value.absent(),
    this.likeCount = const Value.absent(),
    this.nombreEntidad = const Value.absent(),
    this.fotoEntidad = const Value.absent(),
    this.nombreEntidadSiglas = const Value.absent(),
  }) : eventoId = Value(eventoId);
  static Insertable<EventoData> custom({
    Expression<String> eventoId,
    Expression<String> titulo,
    Expression<String> descripcion,
    Expression<String> calendarioId,
    Expression<int> tipoEventoId,
    Expression<int> estadoId,
    Expression<bool> estadoPublicacion,
    Expression<int> entidadId,
    Expression<int> georeferenciaId,
    Expression<String> fechaEvento,
    Expression<String> horaEvento,
    Expression<String> pathImagen,
    Expression<bool> envioPersonalizado,
    Expression<String> tipoEventoNombre,
    Expression<int> usuarioReceptorId,
    Expression<int> eventoHijoId,
    Expression<int> likeCount,
    Expression<String> nombreEntidad,
    Expression<String> fotoEntidad,
    Expression<String> nombreEntidadSiglas,
  }) {
    return RawValuesInsertable({
      if (eventoId != null) 'evento_id': eventoId,
      if (titulo != null) 'titulo': titulo,
      if (descripcion != null) 'descripcion': descripcion,
      if (calendarioId != null) 'calendario_id': calendarioId,
      if (tipoEventoId != null) 'tipo_evento_id': tipoEventoId,
      if (estadoId != null) 'estado_id': estadoId,
      if (estadoPublicacion != null) 'estado_publicacion': estadoPublicacion,
      if (entidadId != null) 'entidad_id': entidadId,
      if (georeferenciaId != null) 'georeferencia_id': georeferenciaId,
      if (fechaEvento != null) 'fecha_evento': fechaEvento,
      if (horaEvento != null) 'hora_evento': horaEvento,
      if (pathImagen != null) 'path_imagen': pathImagen,
      if (envioPersonalizado != null) 'envio_personalizado': envioPersonalizado,
      if (tipoEventoNombre != null) 'tipo_evento_nombre': tipoEventoNombre,
      if (usuarioReceptorId != null) 'usuario_receptor_id': usuarioReceptorId,
      if (eventoHijoId != null) 'evento_hijo_id': eventoHijoId,
      if (likeCount != null) 'like_count': likeCount,
      if (nombreEntidad != null) 'nombre_entidad': nombreEntidad,
      if (fotoEntidad != null) 'foto_entidad': fotoEntidad,
      if (nombreEntidadSiglas != null)
        'nombre_entidad_siglas': nombreEntidadSiglas,
    });
  }

  EventoCompanion copyWith(
      {Value<String> eventoId,
      Value<String> titulo,
      Value<String> descripcion,
      Value<String> calendarioId,
      Value<int> tipoEventoId,
      Value<int> estadoId,
      Value<bool> estadoPublicacion,
      Value<int> entidadId,
      Value<int> georeferenciaId,
      Value<String> fechaEvento,
      Value<String> horaEvento,
      Value<String> pathImagen,
      Value<bool> envioPersonalizado,
      Value<String> tipoEventoNombre,
      Value<int> usuarioReceptorId,
      Value<int> eventoHijoId,
      Value<int> likeCount,
      Value<String> nombreEntidad,
      Value<String> fotoEntidad,
      Value<String> nombreEntidadSiglas}) {
    return EventoCompanion(
      eventoId: eventoId ?? this.eventoId,
      titulo: titulo ?? this.titulo,
      descripcion: descripcion ?? this.descripcion,
      calendarioId: calendarioId ?? this.calendarioId,
      tipoEventoId: tipoEventoId ?? this.tipoEventoId,
      estadoId: estadoId ?? this.estadoId,
      estadoPublicacion: estadoPublicacion ?? this.estadoPublicacion,
      entidadId: entidadId ?? this.entidadId,
      georeferenciaId: georeferenciaId ?? this.georeferenciaId,
      fechaEvento: fechaEvento ?? this.fechaEvento,
      horaEvento: horaEvento ?? this.horaEvento,
      pathImagen: pathImagen ?? this.pathImagen,
      envioPersonalizado: envioPersonalizado ?? this.envioPersonalizado,
      tipoEventoNombre: tipoEventoNombre ?? this.tipoEventoNombre,
      usuarioReceptorId: usuarioReceptorId ?? this.usuarioReceptorId,
      eventoHijoId: eventoHijoId ?? this.eventoHijoId,
      likeCount: likeCount ?? this.likeCount,
      nombreEntidad: nombreEntidad ?? this.nombreEntidad,
      fotoEntidad: fotoEntidad ?? this.fotoEntidad,
      nombreEntidadSiglas: nombreEntidadSiglas ?? this.nombreEntidadSiglas,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (eventoId.present) {
      map['evento_id'] = Variable<String>(eventoId.value);
    }
    if (titulo.present) {
      map['titulo'] = Variable<String>(titulo.value);
    }
    if (descripcion.present) {
      map['descripcion'] = Variable<String>(descripcion.value);
    }
    if (calendarioId.present) {
      map['calendario_id'] = Variable<String>(calendarioId.value);
    }
    if (tipoEventoId.present) {
      map['tipo_evento_id'] = Variable<int>(tipoEventoId.value);
    }
    if (estadoId.present) {
      map['estado_id'] = Variable<int>(estadoId.value);
    }
    if (estadoPublicacion.present) {
      map['estado_publicacion'] = Variable<bool>(estadoPublicacion.value);
    }
    if (entidadId.present) {
      map['entidad_id'] = Variable<int>(entidadId.value);
    }
    if (georeferenciaId.present) {
      map['georeferencia_id'] = Variable<int>(georeferenciaId.value);
    }
    if (fechaEvento.present) {
      map['fecha_evento'] = Variable<String>(fechaEvento.value);
    }
    if (horaEvento.present) {
      map['hora_evento'] = Variable<String>(horaEvento.value);
    }
    if (pathImagen.present) {
      map['path_imagen'] = Variable<String>(pathImagen.value);
    }
    if (envioPersonalizado.present) {
      map['envio_personalizado'] = Variable<bool>(envioPersonalizado.value);
    }
    if (tipoEventoNombre.present) {
      map['tipo_evento_nombre'] = Variable<String>(tipoEventoNombre.value);
    }
    if (usuarioReceptorId.present) {
      map['usuario_receptor_id'] = Variable<int>(usuarioReceptorId.value);
    }
    if (eventoHijoId.present) {
      map['evento_hijo_id'] = Variable<int>(eventoHijoId.value);
    }
    if (likeCount.present) {
      map['like_count'] = Variable<int>(likeCount.value);
    }
    if (nombreEntidad.present) {
      map['nombre_entidad'] = Variable<String>(nombreEntidad.value);
    }
    if (fotoEntidad.present) {
      map['foto_entidad'] = Variable<String>(fotoEntidad.value);
    }
    if (nombreEntidadSiglas.present) {
      map['nombre_entidad_siglas'] =
          Variable<String>(nombreEntidadSiglas.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EventoCompanion(')
          ..write('eventoId: $eventoId, ')
          ..write('titulo: $titulo, ')
          ..write('descripcion: $descripcion, ')
          ..write('calendarioId: $calendarioId, ')
          ..write('tipoEventoId: $tipoEventoId, ')
          ..write('estadoId: $estadoId, ')
          ..write('estadoPublicacion: $estadoPublicacion, ')
          ..write('entidadId: $entidadId, ')
          ..write('georeferenciaId: $georeferenciaId, ')
          ..write('fechaEvento: $fechaEvento, ')
          ..write('horaEvento: $horaEvento, ')
          ..write('pathImagen: $pathImagen, ')
          ..write('envioPersonalizado: $envioPersonalizado, ')
          ..write('tipoEventoNombre: $tipoEventoNombre, ')
          ..write('usuarioReceptorId: $usuarioReceptorId, ')
          ..write('eventoHijoId: $eventoHijoId, ')
          ..write('likeCount: $likeCount, ')
          ..write('nombreEntidad: $nombreEntidad, ')
          ..write('fotoEntidad: $fotoEntidad, ')
          ..write('nombreEntidadSiglas: $nombreEntidadSiglas')
          ..write(')'))
        .toString();
  }
}

class $EventoTable extends Evento with TableInfo<$EventoTable, EventoData> {
  final GeneratedDatabase _db;
  final String _alias;
  $EventoTable(this._db, [this._alias]);
  final VerificationMeta _eventoIdMeta = const VerificationMeta('eventoId');
  GeneratedTextColumn _eventoId;
  @override
  GeneratedTextColumn get eventoId => _eventoId ??= _constructEventoId();
  GeneratedTextColumn _constructEventoId() {
    return GeneratedTextColumn(
      'evento_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _tituloMeta = const VerificationMeta('titulo');
  GeneratedTextColumn _titulo;
  @override
  GeneratedTextColumn get titulo => _titulo ??= _constructTitulo();
  GeneratedTextColumn _constructTitulo() {
    return GeneratedTextColumn(
      'titulo',
      $tableName,
      true,
    );
  }

  final VerificationMeta _descripcionMeta =
      const VerificationMeta('descripcion');
  GeneratedTextColumn _descripcion;
  @override
  GeneratedTextColumn get descripcion =>
      _descripcion ??= _constructDescripcion();
  GeneratedTextColumn _constructDescripcion() {
    return GeneratedTextColumn(
      'descripcion',
      $tableName,
      true,
    );
  }

  final VerificationMeta _calendarioIdMeta =
      const VerificationMeta('calendarioId');
  GeneratedTextColumn _calendarioId;
  @override
  GeneratedTextColumn get calendarioId =>
      _calendarioId ??= _constructCalendarioId();
  GeneratedTextColumn _constructCalendarioId() {
    return GeneratedTextColumn(
      'calendario_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tipoEventoIdMeta =
      const VerificationMeta('tipoEventoId');
  GeneratedIntColumn _tipoEventoId;
  @override
  GeneratedIntColumn get tipoEventoId =>
      _tipoEventoId ??= _constructTipoEventoId();
  GeneratedIntColumn _constructTipoEventoId() {
    return GeneratedIntColumn(
      'tipo_evento_id',
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

  final VerificationMeta _estadoPublicacionMeta =
      const VerificationMeta('estadoPublicacion');
  GeneratedBoolColumn _estadoPublicacion;
  @override
  GeneratedBoolColumn get estadoPublicacion =>
      _estadoPublicacion ??= _constructEstadoPublicacion();
  GeneratedBoolColumn _constructEstadoPublicacion() {
    return GeneratedBoolColumn(
      'estado_publicacion',
      $tableName,
      true,
    );
  }

  final VerificationMeta _entidadIdMeta = const VerificationMeta('entidadId');
  GeneratedIntColumn _entidadId;
  @override
  GeneratedIntColumn get entidadId => _entidadId ??= _constructEntidadId();
  GeneratedIntColumn _constructEntidadId() {
    return GeneratedIntColumn(
      'entidad_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _georeferenciaIdMeta =
      const VerificationMeta('georeferenciaId');
  GeneratedIntColumn _georeferenciaId;
  @override
  GeneratedIntColumn get georeferenciaId =>
      _georeferenciaId ??= _constructGeoreferenciaId();
  GeneratedIntColumn _constructGeoreferenciaId() {
    return GeneratedIntColumn(
      'georeferencia_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fechaEventoMeta =
      const VerificationMeta('fechaEvento');
  GeneratedTextColumn _fechaEvento;
  @override
  GeneratedTextColumn get fechaEvento =>
      _fechaEvento ??= _constructFechaEvento();
  GeneratedTextColumn _constructFechaEvento() {
    return GeneratedTextColumn(
      'fecha_evento',
      $tableName,
      true,
    );
  }

  final VerificationMeta _horaEventoMeta = const VerificationMeta('horaEvento');
  GeneratedTextColumn _horaEvento;
  @override
  GeneratedTextColumn get horaEvento => _horaEvento ??= _constructHoraEvento();
  GeneratedTextColumn _constructHoraEvento() {
    return GeneratedTextColumn(
      'hora_evento',
      $tableName,
      true,
    );
  }

  final VerificationMeta _pathImagenMeta = const VerificationMeta('pathImagen');
  GeneratedTextColumn _pathImagen;
  @override
  GeneratedTextColumn get pathImagen => _pathImagen ??= _constructPathImagen();
  GeneratedTextColumn _constructPathImagen() {
    return GeneratedTextColumn(
      'path_imagen',
      $tableName,
      true,
    );
  }

  final VerificationMeta _envioPersonalizadoMeta =
      const VerificationMeta('envioPersonalizado');
  GeneratedBoolColumn _envioPersonalizado;
  @override
  GeneratedBoolColumn get envioPersonalizado =>
      _envioPersonalizado ??= _constructEnvioPersonalizado();
  GeneratedBoolColumn _constructEnvioPersonalizado() {
    return GeneratedBoolColumn(
      'envio_personalizado',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tipoEventoNombreMeta =
      const VerificationMeta('tipoEventoNombre');
  GeneratedTextColumn _tipoEventoNombre;
  @override
  GeneratedTextColumn get tipoEventoNombre =>
      _tipoEventoNombre ??= _constructTipoEventoNombre();
  GeneratedTextColumn _constructTipoEventoNombre() {
    return GeneratedTextColumn(
      'tipo_evento_nombre',
      $tableName,
      true,
    );
  }

  final VerificationMeta _usuarioReceptorIdMeta =
      const VerificationMeta('usuarioReceptorId');
  GeneratedIntColumn _usuarioReceptorId;
  @override
  GeneratedIntColumn get usuarioReceptorId =>
      _usuarioReceptorId ??= _constructUsuarioReceptorId();
  GeneratedIntColumn _constructUsuarioReceptorId() {
    return GeneratedIntColumn(
      'usuario_receptor_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _eventoHijoIdMeta =
      const VerificationMeta('eventoHijoId');
  GeneratedIntColumn _eventoHijoId;
  @override
  GeneratedIntColumn get eventoHijoId =>
      _eventoHijoId ??= _constructEventoHijoId();
  GeneratedIntColumn _constructEventoHijoId() {
    return GeneratedIntColumn(
      'evento_hijo_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _likeCountMeta = const VerificationMeta('likeCount');
  GeneratedIntColumn _likeCount;
  @override
  GeneratedIntColumn get likeCount => _likeCount ??= _constructLikeCount();
  GeneratedIntColumn _constructLikeCount() {
    return GeneratedIntColumn(
      'like_count',
      $tableName,
      true,
    );
  }

  final VerificationMeta _nombreEntidadMeta =
      const VerificationMeta('nombreEntidad');
  GeneratedTextColumn _nombreEntidad;
  @override
  GeneratedTextColumn get nombreEntidad =>
      _nombreEntidad ??= _constructNombreEntidad();
  GeneratedTextColumn _constructNombreEntidad() {
    return GeneratedTextColumn(
      'nombre_entidad',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fotoEntidadMeta =
      const VerificationMeta('fotoEntidad');
  GeneratedTextColumn _fotoEntidad;
  @override
  GeneratedTextColumn get fotoEntidad =>
      _fotoEntidad ??= _constructFotoEntidad();
  GeneratedTextColumn _constructFotoEntidad() {
    return GeneratedTextColumn(
      'foto_entidad',
      $tableName,
      true,
    );
  }

  final VerificationMeta _nombreEntidadSiglasMeta =
      const VerificationMeta('nombreEntidadSiglas');
  GeneratedTextColumn _nombreEntidadSiglas;
  @override
  GeneratedTextColumn get nombreEntidadSiglas =>
      _nombreEntidadSiglas ??= _constructNombreEntidadSiglas();
  GeneratedTextColumn _constructNombreEntidadSiglas() {
    return GeneratedTextColumn(
      'nombre_entidad_siglas',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        eventoId,
        titulo,
        descripcion,
        calendarioId,
        tipoEventoId,
        estadoId,
        estadoPublicacion,
        entidadId,
        georeferenciaId,
        fechaEvento,
        horaEvento,
        pathImagen,
        envioPersonalizado,
        tipoEventoNombre,
        usuarioReceptorId,
        eventoHijoId,
        likeCount,
        nombreEntidad,
        fotoEntidad,
        nombreEntidadSiglas
      ];
  @override
  $EventoTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'evento';
  @override
  final String actualTableName = 'evento';
  @override
  VerificationContext validateIntegrity(Insertable<EventoData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('evento_id')) {
      context.handle(_eventoIdMeta,
          eventoId.isAcceptableOrUnknown(data['evento_id'], _eventoIdMeta));
    } else if (isInserting) {
      context.missing(_eventoIdMeta);
    }
    if (data.containsKey('titulo')) {
      context.handle(_tituloMeta,
          titulo.isAcceptableOrUnknown(data['titulo'], _tituloMeta));
    }
    if (data.containsKey('descripcion')) {
      context.handle(
          _descripcionMeta,
          descripcion.isAcceptableOrUnknown(
              data['descripcion'], _descripcionMeta));
    }
    if (data.containsKey('calendario_id')) {
      context.handle(
          _calendarioIdMeta,
          calendarioId.isAcceptableOrUnknown(
              data['calendario_id'], _calendarioIdMeta));
    }
    if (data.containsKey('tipo_evento_id')) {
      context.handle(
          _tipoEventoIdMeta,
          tipoEventoId.isAcceptableOrUnknown(
              data['tipo_evento_id'], _tipoEventoIdMeta));
    }
    if (data.containsKey('estado_id')) {
      context.handle(_estadoIdMeta,
          estadoId.isAcceptableOrUnknown(data['estado_id'], _estadoIdMeta));
    }
    if (data.containsKey('estado_publicacion')) {
      context.handle(
          _estadoPublicacionMeta,
          estadoPublicacion.isAcceptableOrUnknown(
              data['estado_publicacion'], _estadoPublicacionMeta));
    }
    if (data.containsKey('entidad_id')) {
      context.handle(_entidadIdMeta,
          entidadId.isAcceptableOrUnknown(data['entidad_id'], _entidadIdMeta));
    }
    if (data.containsKey('georeferencia_id')) {
      context.handle(
          _georeferenciaIdMeta,
          georeferenciaId.isAcceptableOrUnknown(
              data['georeferencia_id'], _georeferenciaIdMeta));
    }
    if (data.containsKey('fecha_evento')) {
      context.handle(
          _fechaEventoMeta,
          fechaEvento.isAcceptableOrUnknown(
              data['fecha_evento'], _fechaEventoMeta));
    }
    if (data.containsKey('hora_evento')) {
      context.handle(
          _horaEventoMeta,
          horaEvento.isAcceptableOrUnknown(
              data['hora_evento'], _horaEventoMeta));
    }
    if (data.containsKey('path_imagen')) {
      context.handle(
          _pathImagenMeta,
          pathImagen.isAcceptableOrUnknown(
              data['path_imagen'], _pathImagenMeta));
    }
    if (data.containsKey('envio_personalizado')) {
      context.handle(
          _envioPersonalizadoMeta,
          envioPersonalizado.isAcceptableOrUnknown(
              data['envio_personalizado'], _envioPersonalizadoMeta));
    }
    if (data.containsKey('tipo_evento_nombre')) {
      context.handle(
          _tipoEventoNombreMeta,
          tipoEventoNombre.isAcceptableOrUnknown(
              data['tipo_evento_nombre'], _tipoEventoNombreMeta));
    }
    if (data.containsKey('usuario_receptor_id')) {
      context.handle(
          _usuarioReceptorIdMeta,
          usuarioReceptorId.isAcceptableOrUnknown(
              data['usuario_receptor_id'], _usuarioReceptorIdMeta));
    }
    if (data.containsKey('evento_hijo_id')) {
      context.handle(
          _eventoHijoIdMeta,
          eventoHijoId.isAcceptableOrUnknown(
              data['evento_hijo_id'], _eventoHijoIdMeta));
    }
    if (data.containsKey('like_count')) {
      context.handle(_likeCountMeta,
          likeCount.isAcceptableOrUnknown(data['like_count'], _likeCountMeta));
    }
    if (data.containsKey('nombre_entidad')) {
      context.handle(
          _nombreEntidadMeta,
          nombreEntidad.isAcceptableOrUnknown(
              data['nombre_entidad'], _nombreEntidadMeta));
    }
    if (data.containsKey('foto_entidad')) {
      context.handle(
          _fotoEntidadMeta,
          fotoEntidad.isAcceptableOrUnknown(
              data['foto_entidad'], _fotoEntidadMeta));
    }
    if (data.containsKey('nombre_entidad_siglas')) {
      context.handle(
          _nombreEntidadSiglasMeta,
          nombreEntidadSiglas.isAcceptableOrUnknown(
              data['nombre_entidad_siglas'], _nombreEntidadSiglasMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {eventoId};
  @override
  EventoData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return EventoData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $EventoTable createAlias(String alias) {
    return $EventoTable(_db, alias);
  }
}

class CalendarioData extends DataClass implements Insertable<CalendarioData> {
  final String calendarioId;
  final String nombre;
  final String descripcion;
  final int estado;
  final int entidadId;
  final int georeferenciaId;
  final String nUsuario;
  final String cargo;
  final int usuarioId;
  final int cargaAcademicaId;
  final int cargaCursoId;
  final int estadoPublicacionCal;
  final int rolId;
  final DateTime fechaCreacion;
  final int usuarioAccionId;
  final DateTime fechaAccion;
  CalendarioData(
      {@required this.calendarioId,
      this.nombre,
      this.descripcion,
      this.estado,
      this.entidadId,
      this.georeferenciaId,
      this.nUsuario,
      this.cargo,
      this.usuarioId,
      this.cargaAcademicaId,
      this.cargaCursoId,
      this.estadoPublicacionCal,
      this.rolId,
      this.fechaCreacion,
      this.usuarioAccionId,
      this.fechaAccion});
  factory CalendarioData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return CalendarioData(
      calendarioId: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}calendario_id']),
      nombre:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}nombre']),
      descripcion: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}descripcion']),
      estado: intType.mapFromDatabaseResponse(data['${effectivePrefix}estado']),
      entidadId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}entidad_id']),
      georeferenciaId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}georeferencia_id']),
      nUsuario: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}n_usuario']),
      cargo:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}cargo']),
      usuarioId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}usuario_id']),
      cargaAcademicaId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}carga_academica_id']),
      cargaCursoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}carga_curso_id']),
      estadoPublicacionCal: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}estado_publicacion_cal']),
      rolId: intType.mapFromDatabaseResponse(data['${effectivePrefix}rol_id']),
      fechaCreacion: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}fecha_creacion']),
      usuarioAccionId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}usuario_accion_id']),
      fechaAccion: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}fecha_accion']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || calendarioId != null) {
      map['calendario_id'] = Variable<String>(calendarioId);
    }
    if (!nullToAbsent || nombre != null) {
      map['nombre'] = Variable<String>(nombre);
    }
    if (!nullToAbsent || descripcion != null) {
      map['descripcion'] = Variable<String>(descripcion);
    }
    if (!nullToAbsent || estado != null) {
      map['estado'] = Variable<int>(estado);
    }
    if (!nullToAbsent || entidadId != null) {
      map['entidad_id'] = Variable<int>(entidadId);
    }
    if (!nullToAbsent || georeferenciaId != null) {
      map['georeferencia_id'] = Variable<int>(georeferenciaId);
    }
    if (!nullToAbsent || nUsuario != null) {
      map['n_usuario'] = Variable<String>(nUsuario);
    }
    if (!nullToAbsent || cargo != null) {
      map['cargo'] = Variable<String>(cargo);
    }
    if (!nullToAbsent || usuarioId != null) {
      map['usuario_id'] = Variable<int>(usuarioId);
    }
    if (!nullToAbsent || cargaAcademicaId != null) {
      map['carga_academica_id'] = Variable<int>(cargaAcademicaId);
    }
    if (!nullToAbsent || cargaCursoId != null) {
      map['carga_curso_id'] = Variable<int>(cargaCursoId);
    }
    if (!nullToAbsent || estadoPublicacionCal != null) {
      map['estado_publicacion_cal'] = Variable<int>(estadoPublicacionCal);
    }
    if (!nullToAbsent || rolId != null) {
      map['rol_id'] = Variable<int>(rolId);
    }
    if (!nullToAbsent || fechaCreacion != null) {
      map['fecha_creacion'] = Variable<DateTime>(fechaCreacion);
    }
    if (!nullToAbsent || usuarioAccionId != null) {
      map['usuario_accion_id'] = Variable<int>(usuarioAccionId);
    }
    if (!nullToAbsent || fechaAccion != null) {
      map['fecha_accion'] = Variable<DateTime>(fechaAccion);
    }
    return map;
  }

  CalendarioCompanion toCompanion(bool nullToAbsent) {
    return CalendarioCompanion(
      calendarioId: calendarioId == null && nullToAbsent
          ? const Value.absent()
          : Value(calendarioId),
      nombre:
          nombre == null && nullToAbsent ? const Value.absent() : Value(nombre),
      descripcion: descripcion == null && nullToAbsent
          ? const Value.absent()
          : Value(descripcion),
      estado:
          estado == null && nullToAbsent ? const Value.absent() : Value(estado),
      entidadId: entidadId == null && nullToAbsent
          ? const Value.absent()
          : Value(entidadId),
      georeferenciaId: georeferenciaId == null && nullToAbsent
          ? const Value.absent()
          : Value(georeferenciaId),
      nUsuario: nUsuario == null && nullToAbsent
          ? const Value.absent()
          : Value(nUsuario),
      cargo:
          cargo == null && nullToAbsent ? const Value.absent() : Value(cargo),
      usuarioId: usuarioId == null && nullToAbsent
          ? const Value.absent()
          : Value(usuarioId),
      cargaAcademicaId: cargaAcademicaId == null && nullToAbsent
          ? const Value.absent()
          : Value(cargaAcademicaId),
      cargaCursoId: cargaCursoId == null && nullToAbsent
          ? const Value.absent()
          : Value(cargaCursoId),
      estadoPublicacionCal: estadoPublicacionCal == null && nullToAbsent
          ? const Value.absent()
          : Value(estadoPublicacionCal),
      rolId:
          rolId == null && nullToAbsent ? const Value.absent() : Value(rolId),
      fechaCreacion: fechaCreacion == null && nullToAbsent
          ? const Value.absent()
          : Value(fechaCreacion),
      usuarioAccionId: usuarioAccionId == null && nullToAbsent
          ? const Value.absent()
          : Value(usuarioAccionId),
      fechaAccion: fechaAccion == null && nullToAbsent
          ? const Value.absent()
          : Value(fechaAccion),
    );
  }

  factory CalendarioData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return CalendarioData(
      calendarioId: serializer.fromJson<String>(json['calendarioId']),
      nombre: serializer.fromJson<String>(json['nombre']),
      descripcion: serializer.fromJson<String>(json['descripcion']),
      estado: serializer.fromJson<int>(json['estado']),
      entidadId: serializer.fromJson<int>(json['entidadId']),
      georeferenciaId: serializer.fromJson<int>(json['georeferenciaId']),
      nUsuario: serializer.fromJson<String>(json['nUsuario']),
      cargo: serializer.fromJson<String>(json['cargo']),
      usuarioId: serializer.fromJson<int>(json['usuarioId']),
      cargaAcademicaId: serializer.fromJson<int>(json['cargaAcademicaId']),
      cargaCursoId: serializer.fromJson<int>(json['cargaCursoId']),
      estadoPublicacionCal:
          serializer.fromJson<int>(json['estadoPublicacionCal']),
      rolId: serializer.fromJson<int>(json['rolId']),
      fechaCreacion: serializer.fromJson<DateTime>(json['fechaCreacion']),
      usuarioAccionId: serializer.fromJson<int>(json['usuarioAccionId']),
      fechaAccion: serializer.fromJson<DateTime>(json['fechaAccion']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'calendarioId': serializer.toJson<String>(calendarioId),
      'nombre': serializer.toJson<String>(nombre),
      'descripcion': serializer.toJson<String>(descripcion),
      'estado': serializer.toJson<int>(estado),
      'entidadId': serializer.toJson<int>(entidadId),
      'georeferenciaId': serializer.toJson<int>(georeferenciaId),
      'nUsuario': serializer.toJson<String>(nUsuario),
      'cargo': serializer.toJson<String>(cargo),
      'usuarioId': serializer.toJson<int>(usuarioId),
      'cargaAcademicaId': serializer.toJson<int>(cargaAcademicaId),
      'cargaCursoId': serializer.toJson<int>(cargaCursoId),
      'estadoPublicacionCal': serializer.toJson<int>(estadoPublicacionCal),
      'rolId': serializer.toJson<int>(rolId),
      'fechaCreacion': serializer.toJson<DateTime>(fechaCreacion),
      'usuarioAccionId': serializer.toJson<int>(usuarioAccionId),
      'fechaAccion': serializer.toJson<DateTime>(fechaAccion),
    };
  }

  CalendarioData copyWith(
          {String calendarioId,
          String nombre,
          String descripcion,
          int estado,
          int entidadId,
          int georeferenciaId,
          String nUsuario,
          String cargo,
          int usuarioId,
          int cargaAcademicaId,
          int cargaCursoId,
          int estadoPublicacionCal,
          int rolId,
          DateTime fechaCreacion,
          int usuarioAccionId,
          DateTime fechaAccion}) =>
      CalendarioData(
        calendarioId: calendarioId ?? this.calendarioId,
        nombre: nombre ?? this.nombre,
        descripcion: descripcion ?? this.descripcion,
        estado: estado ?? this.estado,
        entidadId: entidadId ?? this.entidadId,
        georeferenciaId: georeferenciaId ?? this.georeferenciaId,
        nUsuario: nUsuario ?? this.nUsuario,
        cargo: cargo ?? this.cargo,
        usuarioId: usuarioId ?? this.usuarioId,
        cargaAcademicaId: cargaAcademicaId ?? this.cargaAcademicaId,
        cargaCursoId: cargaCursoId ?? this.cargaCursoId,
        estadoPublicacionCal: estadoPublicacionCal ?? this.estadoPublicacionCal,
        rolId: rolId ?? this.rolId,
        fechaCreacion: fechaCreacion ?? this.fechaCreacion,
        usuarioAccionId: usuarioAccionId ?? this.usuarioAccionId,
        fechaAccion: fechaAccion ?? this.fechaAccion,
      );
  @override
  String toString() {
    return (StringBuffer('CalendarioData(')
          ..write('calendarioId: $calendarioId, ')
          ..write('nombre: $nombre, ')
          ..write('descripcion: $descripcion, ')
          ..write('estado: $estado, ')
          ..write('entidadId: $entidadId, ')
          ..write('georeferenciaId: $georeferenciaId, ')
          ..write('nUsuario: $nUsuario, ')
          ..write('cargo: $cargo, ')
          ..write('usuarioId: $usuarioId, ')
          ..write('cargaAcademicaId: $cargaAcademicaId, ')
          ..write('cargaCursoId: $cargaCursoId, ')
          ..write('estadoPublicacionCal: $estadoPublicacionCal, ')
          ..write('rolId: $rolId, ')
          ..write('fechaCreacion: $fechaCreacion, ')
          ..write('usuarioAccionId: $usuarioAccionId, ')
          ..write('fechaAccion: $fechaAccion')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      calendarioId.hashCode,
      $mrjc(
          nombre.hashCode,
          $mrjc(
              descripcion.hashCode,
              $mrjc(
                  estado.hashCode,
                  $mrjc(
                      entidadId.hashCode,
                      $mrjc(
                          georeferenciaId.hashCode,
                          $mrjc(
                              nUsuario.hashCode,
                              $mrjc(
                                  cargo.hashCode,
                                  $mrjc(
                                      usuarioId.hashCode,
                                      $mrjc(
                                          cargaAcademicaId.hashCode,
                                          $mrjc(
                                              cargaCursoId.hashCode,
                                              $mrjc(
                                                  estadoPublicacionCal.hashCode,
                                                  $mrjc(
                                                      rolId.hashCode,
                                                      $mrjc(
                                                          fechaCreacion
                                                              .hashCode,
                                                          $mrjc(
                                                              usuarioAccionId
                                                                  .hashCode,
                                                              fechaAccion
                                                                  .hashCode))))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is CalendarioData &&
          other.calendarioId == this.calendarioId &&
          other.nombre == this.nombre &&
          other.descripcion == this.descripcion &&
          other.estado == this.estado &&
          other.entidadId == this.entidadId &&
          other.georeferenciaId == this.georeferenciaId &&
          other.nUsuario == this.nUsuario &&
          other.cargo == this.cargo &&
          other.usuarioId == this.usuarioId &&
          other.cargaAcademicaId == this.cargaAcademicaId &&
          other.cargaCursoId == this.cargaCursoId &&
          other.estadoPublicacionCal == this.estadoPublicacionCal &&
          other.rolId == this.rolId &&
          other.fechaCreacion == this.fechaCreacion &&
          other.usuarioAccionId == this.usuarioAccionId &&
          other.fechaAccion == this.fechaAccion);
}

class CalendarioCompanion extends UpdateCompanion<CalendarioData> {
  final Value<String> calendarioId;
  final Value<String> nombre;
  final Value<String> descripcion;
  final Value<int> estado;
  final Value<int> entidadId;
  final Value<int> georeferenciaId;
  final Value<String> nUsuario;
  final Value<String> cargo;
  final Value<int> usuarioId;
  final Value<int> cargaAcademicaId;
  final Value<int> cargaCursoId;
  final Value<int> estadoPublicacionCal;
  final Value<int> rolId;
  final Value<DateTime> fechaCreacion;
  final Value<int> usuarioAccionId;
  final Value<DateTime> fechaAccion;
  const CalendarioCompanion({
    this.calendarioId = const Value.absent(),
    this.nombre = const Value.absent(),
    this.descripcion = const Value.absent(),
    this.estado = const Value.absent(),
    this.entidadId = const Value.absent(),
    this.georeferenciaId = const Value.absent(),
    this.nUsuario = const Value.absent(),
    this.cargo = const Value.absent(),
    this.usuarioId = const Value.absent(),
    this.cargaAcademicaId = const Value.absent(),
    this.cargaCursoId = const Value.absent(),
    this.estadoPublicacionCal = const Value.absent(),
    this.rolId = const Value.absent(),
    this.fechaCreacion = const Value.absent(),
    this.usuarioAccionId = const Value.absent(),
    this.fechaAccion = const Value.absent(),
  });
  CalendarioCompanion.insert({
    @required String calendarioId,
    this.nombre = const Value.absent(),
    this.descripcion = const Value.absent(),
    this.estado = const Value.absent(),
    this.entidadId = const Value.absent(),
    this.georeferenciaId = const Value.absent(),
    this.nUsuario = const Value.absent(),
    this.cargo = const Value.absent(),
    this.usuarioId = const Value.absent(),
    this.cargaAcademicaId = const Value.absent(),
    this.cargaCursoId = const Value.absent(),
    this.estadoPublicacionCal = const Value.absent(),
    this.rolId = const Value.absent(),
    this.fechaCreacion = const Value.absent(),
    this.usuarioAccionId = const Value.absent(),
    this.fechaAccion = const Value.absent(),
  }) : calendarioId = Value(calendarioId);
  static Insertable<CalendarioData> custom({
    Expression<String> calendarioId,
    Expression<String> nombre,
    Expression<String> descripcion,
    Expression<int> estado,
    Expression<int> entidadId,
    Expression<int> georeferenciaId,
    Expression<String> nUsuario,
    Expression<String> cargo,
    Expression<int> usuarioId,
    Expression<int> cargaAcademicaId,
    Expression<int> cargaCursoId,
    Expression<int> estadoPublicacionCal,
    Expression<int> rolId,
    Expression<DateTime> fechaCreacion,
    Expression<int> usuarioAccionId,
    Expression<DateTime> fechaAccion,
  }) {
    return RawValuesInsertable({
      if (calendarioId != null) 'calendario_id': calendarioId,
      if (nombre != null) 'nombre': nombre,
      if (descripcion != null) 'descripcion': descripcion,
      if (estado != null) 'estado': estado,
      if (entidadId != null) 'entidad_id': entidadId,
      if (georeferenciaId != null) 'georeferencia_id': georeferenciaId,
      if (nUsuario != null) 'n_usuario': nUsuario,
      if (cargo != null) 'cargo': cargo,
      if (usuarioId != null) 'usuario_id': usuarioId,
      if (cargaAcademicaId != null) 'carga_academica_id': cargaAcademicaId,
      if (cargaCursoId != null) 'carga_curso_id': cargaCursoId,
      if (estadoPublicacionCal != null)
        'estado_publicacion_cal': estadoPublicacionCal,
      if (rolId != null) 'rol_id': rolId,
      if (fechaCreacion != null) 'fecha_creacion': fechaCreacion,
      if (usuarioAccionId != null) 'usuario_accion_id': usuarioAccionId,
      if (fechaAccion != null) 'fecha_accion': fechaAccion,
    });
  }

  CalendarioCompanion copyWith(
      {Value<String> calendarioId,
      Value<String> nombre,
      Value<String> descripcion,
      Value<int> estado,
      Value<int> entidadId,
      Value<int> georeferenciaId,
      Value<String> nUsuario,
      Value<String> cargo,
      Value<int> usuarioId,
      Value<int> cargaAcademicaId,
      Value<int> cargaCursoId,
      Value<int> estadoPublicacionCal,
      Value<int> rolId,
      Value<DateTime> fechaCreacion,
      Value<int> usuarioAccionId,
      Value<DateTime> fechaAccion}) {
    return CalendarioCompanion(
      calendarioId: calendarioId ?? this.calendarioId,
      nombre: nombre ?? this.nombre,
      descripcion: descripcion ?? this.descripcion,
      estado: estado ?? this.estado,
      entidadId: entidadId ?? this.entidadId,
      georeferenciaId: georeferenciaId ?? this.georeferenciaId,
      nUsuario: nUsuario ?? this.nUsuario,
      cargo: cargo ?? this.cargo,
      usuarioId: usuarioId ?? this.usuarioId,
      cargaAcademicaId: cargaAcademicaId ?? this.cargaAcademicaId,
      cargaCursoId: cargaCursoId ?? this.cargaCursoId,
      estadoPublicacionCal: estadoPublicacionCal ?? this.estadoPublicacionCal,
      rolId: rolId ?? this.rolId,
      fechaCreacion: fechaCreacion ?? this.fechaCreacion,
      usuarioAccionId: usuarioAccionId ?? this.usuarioAccionId,
      fechaAccion: fechaAccion ?? this.fechaAccion,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (calendarioId.present) {
      map['calendario_id'] = Variable<String>(calendarioId.value);
    }
    if (nombre.present) {
      map['nombre'] = Variable<String>(nombre.value);
    }
    if (descripcion.present) {
      map['descripcion'] = Variable<String>(descripcion.value);
    }
    if (estado.present) {
      map['estado'] = Variable<int>(estado.value);
    }
    if (entidadId.present) {
      map['entidad_id'] = Variable<int>(entidadId.value);
    }
    if (georeferenciaId.present) {
      map['georeferencia_id'] = Variable<int>(georeferenciaId.value);
    }
    if (nUsuario.present) {
      map['n_usuario'] = Variable<String>(nUsuario.value);
    }
    if (cargo.present) {
      map['cargo'] = Variable<String>(cargo.value);
    }
    if (usuarioId.present) {
      map['usuario_id'] = Variable<int>(usuarioId.value);
    }
    if (cargaAcademicaId.present) {
      map['carga_academica_id'] = Variable<int>(cargaAcademicaId.value);
    }
    if (cargaCursoId.present) {
      map['carga_curso_id'] = Variable<int>(cargaCursoId.value);
    }
    if (estadoPublicacionCal.present) {
      map['estado_publicacion_cal'] = Variable<int>(estadoPublicacionCal.value);
    }
    if (rolId.present) {
      map['rol_id'] = Variable<int>(rolId.value);
    }
    if (fechaCreacion.present) {
      map['fecha_creacion'] = Variable<DateTime>(fechaCreacion.value);
    }
    if (usuarioAccionId.present) {
      map['usuario_accion_id'] = Variable<int>(usuarioAccionId.value);
    }
    if (fechaAccion.present) {
      map['fecha_accion'] = Variable<DateTime>(fechaAccion.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CalendarioCompanion(')
          ..write('calendarioId: $calendarioId, ')
          ..write('nombre: $nombre, ')
          ..write('descripcion: $descripcion, ')
          ..write('estado: $estado, ')
          ..write('entidadId: $entidadId, ')
          ..write('georeferenciaId: $georeferenciaId, ')
          ..write('nUsuario: $nUsuario, ')
          ..write('cargo: $cargo, ')
          ..write('usuarioId: $usuarioId, ')
          ..write('cargaAcademicaId: $cargaAcademicaId, ')
          ..write('cargaCursoId: $cargaCursoId, ')
          ..write('estadoPublicacionCal: $estadoPublicacionCal, ')
          ..write('rolId: $rolId, ')
          ..write('fechaCreacion: $fechaCreacion, ')
          ..write('usuarioAccionId: $usuarioAccionId, ')
          ..write('fechaAccion: $fechaAccion')
          ..write(')'))
        .toString();
  }
}

class $CalendarioTable extends Calendario
    with TableInfo<$CalendarioTable, CalendarioData> {
  final GeneratedDatabase _db;
  final String _alias;
  $CalendarioTable(this._db, [this._alias]);
  final VerificationMeta _calendarioIdMeta =
      const VerificationMeta('calendarioId');
  GeneratedTextColumn _calendarioId;
  @override
  GeneratedTextColumn get calendarioId =>
      _calendarioId ??= _constructCalendarioId();
  GeneratedTextColumn _constructCalendarioId() {
    return GeneratedTextColumn(
      'calendario_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nombreMeta = const VerificationMeta('nombre');
  GeneratedTextColumn _nombre;
  @override
  GeneratedTextColumn get nombre => _nombre ??= _constructNombre();
  GeneratedTextColumn _constructNombre() {
    return GeneratedTextColumn(
      'nombre',
      $tableName,
      true,
    );
  }

  final VerificationMeta _descripcionMeta =
      const VerificationMeta('descripcion');
  GeneratedTextColumn _descripcion;
  @override
  GeneratedTextColumn get descripcion =>
      _descripcion ??= _constructDescripcion();
  GeneratedTextColumn _constructDescripcion() {
    return GeneratedTextColumn(
      'descripcion',
      $tableName,
      true,
    );
  }

  final VerificationMeta _estadoMeta = const VerificationMeta('estado');
  GeneratedIntColumn _estado;
  @override
  GeneratedIntColumn get estado => _estado ??= _constructEstado();
  GeneratedIntColumn _constructEstado() {
    return GeneratedIntColumn(
      'estado',
      $tableName,
      true,
    );
  }

  final VerificationMeta _entidadIdMeta = const VerificationMeta('entidadId');
  GeneratedIntColumn _entidadId;
  @override
  GeneratedIntColumn get entidadId => _entidadId ??= _constructEntidadId();
  GeneratedIntColumn _constructEntidadId() {
    return GeneratedIntColumn(
      'entidad_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _georeferenciaIdMeta =
      const VerificationMeta('georeferenciaId');
  GeneratedIntColumn _georeferenciaId;
  @override
  GeneratedIntColumn get georeferenciaId =>
      _georeferenciaId ??= _constructGeoreferenciaId();
  GeneratedIntColumn _constructGeoreferenciaId() {
    return GeneratedIntColumn(
      'georeferencia_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _nUsuarioMeta = const VerificationMeta('nUsuario');
  GeneratedTextColumn _nUsuario;
  @override
  GeneratedTextColumn get nUsuario => _nUsuario ??= _constructNUsuario();
  GeneratedTextColumn _constructNUsuario() {
    return GeneratedTextColumn(
      'n_usuario',
      $tableName,
      true,
    );
  }

  final VerificationMeta _cargoMeta = const VerificationMeta('cargo');
  GeneratedTextColumn _cargo;
  @override
  GeneratedTextColumn get cargo => _cargo ??= _constructCargo();
  GeneratedTextColumn _constructCargo() {
    return GeneratedTextColumn(
      'cargo',
      $tableName,
      true,
    );
  }

  final VerificationMeta _usuarioIdMeta = const VerificationMeta('usuarioId');
  GeneratedIntColumn _usuarioId;
  @override
  GeneratedIntColumn get usuarioId => _usuarioId ??= _constructUsuarioId();
  GeneratedIntColumn _constructUsuarioId() {
    return GeneratedIntColumn(
      'usuario_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _cargaAcademicaIdMeta =
      const VerificationMeta('cargaAcademicaId');
  GeneratedIntColumn _cargaAcademicaId;
  @override
  GeneratedIntColumn get cargaAcademicaId =>
      _cargaAcademicaId ??= _constructCargaAcademicaId();
  GeneratedIntColumn _constructCargaAcademicaId() {
    return GeneratedIntColumn(
      'carga_academica_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _cargaCursoIdMeta =
      const VerificationMeta('cargaCursoId');
  GeneratedIntColumn _cargaCursoId;
  @override
  GeneratedIntColumn get cargaCursoId =>
      _cargaCursoId ??= _constructCargaCursoId();
  GeneratedIntColumn _constructCargaCursoId() {
    return GeneratedIntColumn(
      'carga_curso_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _estadoPublicacionCalMeta =
      const VerificationMeta('estadoPublicacionCal');
  GeneratedIntColumn _estadoPublicacionCal;
  @override
  GeneratedIntColumn get estadoPublicacionCal =>
      _estadoPublicacionCal ??= _constructEstadoPublicacionCal();
  GeneratedIntColumn _constructEstadoPublicacionCal() {
    return GeneratedIntColumn(
      'estado_publicacion_cal',
      $tableName,
      true,
    );
  }

  final VerificationMeta _rolIdMeta = const VerificationMeta('rolId');
  GeneratedIntColumn _rolId;
  @override
  GeneratedIntColumn get rolId => _rolId ??= _constructRolId();
  GeneratedIntColumn _constructRolId() {
    return GeneratedIntColumn(
      'rol_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fechaCreacionMeta =
      const VerificationMeta('fechaCreacion');
  GeneratedDateTimeColumn _fechaCreacion;
  @override
  GeneratedDateTimeColumn get fechaCreacion =>
      _fechaCreacion ??= _constructFechaCreacion();
  GeneratedDateTimeColumn _constructFechaCreacion() {
    return GeneratedDateTimeColumn(
      'fecha_creacion',
      $tableName,
      true,
    );
  }

  final VerificationMeta _usuarioAccionIdMeta =
      const VerificationMeta('usuarioAccionId');
  GeneratedIntColumn _usuarioAccionId;
  @override
  GeneratedIntColumn get usuarioAccionId =>
      _usuarioAccionId ??= _constructUsuarioAccionId();
  GeneratedIntColumn _constructUsuarioAccionId() {
    return GeneratedIntColumn(
      'usuario_accion_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fechaAccionMeta =
      const VerificationMeta('fechaAccion');
  GeneratedDateTimeColumn _fechaAccion;
  @override
  GeneratedDateTimeColumn get fechaAccion =>
      _fechaAccion ??= _constructFechaAccion();
  GeneratedDateTimeColumn _constructFechaAccion() {
    return GeneratedDateTimeColumn(
      'fecha_accion',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        calendarioId,
        nombre,
        descripcion,
        estado,
        entidadId,
        georeferenciaId,
        nUsuario,
        cargo,
        usuarioId,
        cargaAcademicaId,
        cargaCursoId,
        estadoPublicacionCal,
        rolId,
        fechaCreacion,
        usuarioAccionId,
        fechaAccion
      ];
  @override
  $CalendarioTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'calendario';
  @override
  final String actualTableName = 'calendario';
  @override
  VerificationContext validateIntegrity(Insertable<CalendarioData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('calendario_id')) {
      context.handle(
          _calendarioIdMeta,
          calendarioId.isAcceptableOrUnknown(
              data['calendario_id'], _calendarioIdMeta));
    } else if (isInserting) {
      context.missing(_calendarioIdMeta);
    }
    if (data.containsKey('nombre')) {
      context.handle(_nombreMeta,
          nombre.isAcceptableOrUnknown(data['nombre'], _nombreMeta));
    }
    if (data.containsKey('descripcion')) {
      context.handle(
          _descripcionMeta,
          descripcion.isAcceptableOrUnknown(
              data['descripcion'], _descripcionMeta));
    }
    if (data.containsKey('estado')) {
      context.handle(_estadoMeta,
          estado.isAcceptableOrUnknown(data['estado'], _estadoMeta));
    }
    if (data.containsKey('entidad_id')) {
      context.handle(_entidadIdMeta,
          entidadId.isAcceptableOrUnknown(data['entidad_id'], _entidadIdMeta));
    }
    if (data.containsKey('georeferencia_id')) {
      context.handle(
          _georeferenciaIdMeta,
          georeferenciaId.isAcceptableOrUnknown(
              data['georeferencia_id'], _georeferenciaIdMeta));
    }
    if (data.containsKey('n_usuario')) {
      context.handle(_nUsuarioMeta,
          nUsuario.isAcceptableOrUnknown(data['n_usuario'], _nUsuarioMeta));
    }
    if (data.containsKey('cargo')) {
      context.handle(
          _cargoMeta, cargo.isAcceptableOrUnknown(data['cargo'], _cargoMeta));
    }
    if (data.containsKey('usuario_id')) {
      context.handle(_usuarioIdMeta,
          usuarioId.isAcceptableOrUnknown(data['usuario_id'], _usuarioIdMeta));
    }
    if (data.containsKey('carga_academica_id')) {
      context.handle(
          _cargaAcademicaIdMeta,
          cargaAcademicaId.isAcceptableOrUnknown(
              data['carga_academica_id'], _cargaAcademicaIdMeta));
    }
    if (data.containsKey('carga_curso_id')) {
      context.handle(
          _cargaCursoIdMeta,
          cargaCursoId.isAcceptableOrUnknown(
              data['carga_curso_id'], _cargaCursoIdMeta));
    }
    if (data.containsKey('estado_publicacion_cal')) {
      context.handle(
          _estadoPublicacionCalMeta,
          estadoPublicacionCal.isAcceptableOrUnknown(
              data['estado_publicacion_cal'], _estadoPublicacionCalMeta));
    }
    if (data.containsKey('rol_id')) {
      context.handle(
          _rolIdMeta, rolId.isAcceptableOrUnknown(data['rol_id'], _rolIdMeta));
    }
    if (data.containsKey('fecha_creacion')) {
      context.handle(
          _fechaCreacionMeta,
          fechaCreacion.isAcceptableOrUnknown(
              data['fecha_creacion'], _fechaCreacionMeta));
    }
    if (data.containsKey('usuario_accion_id')) {
      context.handle(
          _usuarioAccionIdMeta,
          usuarioAccionId.isAcceptableOrUnknown(
              data['usuario_accion_id'], _usuarioAccionIdMeta));
    }
    if (data.containsKey('fecha_accion')) {
      context.handle(
          _fechaAccionMeta,
          fechaAccion.isAcceptableOrUnknown(
              data['fecha_accion'], _fechaAccionMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {calendarioId};
  @override
  CalendarioData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return CalendarioData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $CalendarioTable createAlias(String alias) {
    return $CalendarioTable(_db, alias);
  }
}

class SessionUserHijoData extends DataClass
    implements Insertable<SessionUserHijoData> {
  final int prograAcademicoId;
  final int hijoId;
  final int color;
  final bool selected;
  SessionUserHijoData(
      {@required this.prograAcademicoId,
      this.hijoId,
      this.color,
      this.selected});
  factory SessionUserHijoData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final boolType = db.typeSystem.forDartType<bool>();
    return SessionUserHijoData(
      prograAcademicoId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}progra_academico_id']),
      hijoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}hijo_id']),
      color: intType.mapFromDatabaseResponse(data['${effectivePrefix}color']),
      selected:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}selected']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || prograAcademicoId != null) {
      map['progra_academico_id'] = Variable<int>(prograAcademicoId);
    }
    if (!nullToAbsent || hijoId != null) {
      map['hijo_id'] = Variable<int>(hijoId);
    }
    if (!nullToAbsent || color != null) {
      map['color'] = Variable<int>(color);
    }
    if (!nullToAbsent || selected != null) {
      map['selected'] = Variable<bool>(selected);
    }
    return map;
  }

  SessionUserHijoCompanion toCompanion(bool nullToAbsent) {
    return SessionUserHijoCompanion(
      prograAcademicoId: prograAcademicoId == null && nullToAbsent
          ? const Value.absent()
          : Value(prograAcademicoId),
      hijoId:
          hijoId == null && nullToAbsent ? const Value.absent() : Value(hijoId),
      color:
          color == null && nullToAbsent ? const Value.absent() : Value(color),
      selected: selected == null && nullToAbsent
          ? const Value.absent()
          : Value(selected),
    );
  }

  factory SessionUserHijoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return SessionUserHijoData(
      prograAcademicoId: serializer.fromJson<int>(json['prograAcademicoId']),
      hijoId: serializer.fromJson<int>(json['hijoId']),
      color: serializer.fromJson<int>(json['color']),
      selected: serializer.fromJson<bool>(json['selected']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'prograAcademicoId': serializer.toJson<int>(prograAcademicoId),
      'hijoId': serializer.toJson<int>(hijoId),
      'color': serializer.toJson<int>(color),
      'selected': serializer.toJson<bool>(selected),
    };
  }

  SessionUserHijoData copyWith(
          {int prograAcademicoId, int hijoId, int color, bool selected}) =>
      SessionUserHijoData(
        prograAcademicoId: prograAcademicoId ?? this.prograAcademicoId,
        hijoId: hijoId ?? this.hijoId,
        color: color ?? this.color,
        selected: selected ?? this.selected,
      );
  @override
  String toString() {
    return (StringBuffer('SessionUserHijoData(')
          ..write('prograAcademicoId: $prograAcademicoId, ')
          ..write('hijoId: $hijoId, ')
          ..write('color: $color, ')
          ..write('selected: $selected')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(prograAcademicoId.hashCode,
      $mrjc(hijoId.hashCode, $mrjc(color.hashCode, selected.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is SessionUserHijoData &&
          other.prograAcademicoId == this.prograAcademicoId &&
          other.hijoId == this.hijoId &&
          other.color == this.color &&
          other.selected == this.selected);
}

class SessionUserHijoCompanion extends UpdateCompanion<SessionUserHijoData> {
  final Value<int> prograAcademicoId;
  final Value<int> hijoId;
  final Value<int> color;
  final Value<bool> selected;
  const SessionUserHijoCompanion({
    this.prograAcademicoId = const Value.absent(),
    this.hijoId = const Value.absent(),
    this.color = const Value.absent(),
    this.selected = const Value.absent(),
  });
  SessionUserHijoCompanion.insert({
    this.prograAcademicoId = const Value.absent(),
    this.hijoId = const Value.absent(),
    this.color = const Value.absent(),
    this.selected = const Value.absent(),
  });
  static Insertable<SessionUserHijoData> custom({
    Expression<int> prograAcademicoId,
    Expression<int> hijoId,
    Expression<int> color,
    Expression<bool> selected,
  }) {
    return RawValuesInsertable({
      if (prograAcademicoId != null) 'progra_academico_id': prograAcademicoId,
      if (hijoId != null) 'hijo_id': hijoId,
      if (color != null) 'color': color,
      if (selected != null) 'selected': selected,
    });
  }

  SessionUserHijoCompanion copyWith(
      {Value<int> prograAcademicoId,
      Value<int> hijoId,
      Value<int> color,
      Value<bool> selected}) {
    return SessionUserHijoCompanion(
      prograAcademicoId: prograAcademicoId ?? this.prograAcademicoId,
      hijoId: hijoId ?? this.hijoId,
      color: color ?? this.color,
      selected: selected ?? this.selected,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (prograAcademicoId.present) {
      map['progra_academico_id'] = Variable<int>(prograAcademicoId.value);
    }
    if (hijoId.present) {
      map['hijo_id'] = Variable<int>(hijoId.value);
    }
    if (color.present) {
      map['color'] = Variable<int>(color.value);
    }
    if (selected.present) {
      map['selected'] = Variable<bool>(selected.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SessionUserHijoCompanion(')
          ..write('prograAcademicoId: $prograAcademicoId, ')
          ..write('hijoId: $hijoId, ')
          ..write('color: $color, ')
          ..write('selected: $selected')
          ..write(')'))
        .toString();
  }
}

class $SessionUserHijoTable extends SessionUserHijo
    with TableInfo<$SessionUserHijoTable, SessionUserHijoData> {
  final GeneratedDatabase _db;
  final String _alias;
  $SessionUserHijoTable(this._db, [this._alias]);
  final VerificationMeta _prograAcademicoIdMeta =
      const VerificationMeta('prograAcademicoId');
  GeneratedIntColumn _prograAcademicoId;
  @override
  GeneratedIntColumn get prograAcademicoId =>
      _prograAcademicoId ??= _constructPrograAcademicoId();
  GeneratedIntColumn _constructPrograAcademicoId() {
    return GeneratedIntColumn(
      'progra_academico_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _hijoIdMeta = const VerificationMeta('hijoId');
  GeneratedIntColumn _hijoId;
  @override
  GeneratedIntColumn get hijoId => _hijoId ??= _constructHijoId();
  GeneratedIntColumn _constructHijoId() {
    return GeneratedIntColumn(
      'hijo_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _colorMeta = const VerificationMeta('color');
  GeneratedIntColumn _color;
  @override
  GeneratedIntColumn get color => _color ??= _constructColor();
  GeneratedIntColumn _constructColor() {
    return GeneratedIntColumn(
      'color',
      $tableName,
      true,
    );
  }

  final VerificationMeta _selectedMeta = const VerificationMeta('selected');
  GeneratedBoolColumn _selected;
  @override
  GeneratedBoolColumn get selected => _selected ??= _constructSelected();
  GeneratedBoolColumn _constructSelected() {
    return GeneratedBoolColumn(
      'selected',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [prograAcademicoId, hijoId, color, selected];
  @override
  $SessionUserHijoTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'session_user_hijo';
  @override
  final String actualTableName = 'session_user_hijo';
  @override
  VerificationContext validateIntegrity(
      Insertable<SessionUserHijoData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('progra_academico_id')) {
      context.handle(
          _prograAcademicoIdMeta,
          prograAcademicoId.isAcceptableOrUnknown(
              data['progra_academico_id'], _prograAcademicoIdMeta));
    }
    if (data.containsKey('hijo_id')) {
      context.handle(_hijoIdMeta,
          hijoId.isAcceptableOrUnknown(data['hijo_id'], _hijoIdMeta));
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color'], _colorMeta));
    }
    if (data.containsKey('selected')) {
      context.handle(_selectedMeta,
          selected.isAcceptableOrUnknown(data['selected'], _selectedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {prograAcademicoId};
  @override
  SessionUserHijoData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return SessionUserHijoData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $SessionUserHijoTable createAlias(String alias) {
    return $SessionUserHijoTable(_db, alias);
  }
}

class ContactoData extends DataClass implements Insertable<ContactoData> {
  final int personaId;
  final String nombres;
  final String apellidoPaterno;
  final String apellidoMaterno;
  final String ocupacion;
  final int estadoId;
  final String telefono;
  final String celular;
  final String fechaNac;
  final String correo;
  final String genero;
  final String estadoCivil;
  final String numDoc;
  final String foto;
  final String nombreTipo;
  final int tipo;
  final int companieroId;
  final int hijoRelacionId;
  final String relacion;
  final int cargaCursoId;
  ContactoData(
      {@required this.personaId,
      this.nombres,
      this.apellidoPaterno,
      this.apellidoMaterno,
      this.ocupacion,
      this.estadoId,
      this.telefono,
      this.celular,
      this.fechaNac,
      this.correo,
      this.genero,
      this.estadoCivil,
      this.numDoc,
      this.foto,
      this.nombreTipo,
      @required this.tipo,
      this.companieroId,
      @required this.hijoRelacionId,
      this.relacion,
      @required this.cargaCursoId});
  factory ContactoData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return ContactoData(
      personaId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}persona_id']),
      nombres:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}nombres']),
      apellidoPaterno: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}apellido_paterno']),
      apellidoMaterno: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}apellido_materno']),
      ocupacion: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}ocupacion']),
      estadoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}estado_id']),
      telefono: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}telefono']),
      celular:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}celular']),
      fechaNac: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}fecha_nac']),
      correo:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}correo']),
      genero:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}genero']),
      estadoCivil: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}estado_civil']),
      numDoc:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}num_doc']),
      foto: stringType.mapFromDatabaseResponse(data['${effectivePrefix}foto']),
      nombreTipo: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}nombre_tipo']),
      tipo: intType.mapFromDatabaseResponse(data['${effectivePrefix}tipo']),
      companieroId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}companiero_id']),
      hijoRelacionId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}hijo_relacion_id']),
      relacion: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}relacion']),
      cargaCursoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}carga_curso_id']),
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
    if (!nullToAbsent || ocupacion != null) {
      map['ocupacion'] = Variable<String>(ocupacion);
    }
    if (!nullToAbsent || estadoId != null) {
      map['estado_id'] = Variable<int>(estadoId);
    }
    if (!nullToAbsent || telefono != null) {
      map['telefono'] = Variable<String>(telefono);
    }
    if (!nullToAbsent || celular != null) {
      map['celular'] = Variable<String>(celular);
    }
    if (!nullToAbsent || fechaNac != null) {
      map['fecha_nac'] = Variable<String>(fechaNac);
    }
    if (!nullToAbsent || correo != null) {
      map['correo'] = Variable<String>(correo);
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
    if (!nullToAbsent || foto != null) {
      map['foto'] = Variable<String>(foto);
    }
    if (!nullToAbsent || nombreTipo != null) {
      map['nombre_tipo'] = Variable<String>(nombreTipo);
    }
    if (!nullToAbsent || tipo != null) {
      map['tipo'] = Variable<int>(tipo);
    }
    if (!nullToAbsent || companieroId != null) {
      map['companiero_id'] = Variable<int>(companieroId);
    }
    if (!nullToAbsent || hijoRelacionId != null) {
      map['hijo_relacion_id'] = Variable<int>(hijoRelacionId);
    }
    if (!nullToAbsent || relacion != null) {
      map['relacion'] = Variable<String>(relacion);
    }
    if (!nullToAbsent || cargaCursoId != null) {
      map['carga_curso_id'] = Variable<int>(cargaCursoId);
    }
    return map;
  }

  ContactoCompanion toCompanion(bool nullToAbsent) {
    return ContactoCompanion(
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
      ocupacion: ocupacion == null && nullToAbsent
          ? const Value.absent()
          : Value(ocupacion),
      estadoId: estadoId == null && nullToAbsent
          ? const Value.absent()
          : Value(estadoId),
      telefono: telefono == null && nullToAbsent
          ? const Value.absent()
          : Value(telefono),
      celular: celular == null && nullToAbsent
          ? const Value.absent()
          : Value(celular),
      fechaNac: fechaNac == null && nullToAbsent
          ? const Value.absent()
          : Value(fechaNac),
      correo:
          correo == null && nullToAbsent ? const Value.absent() : Value(correo),
      genero:
          genero == null && nullToAbsent ? const Value.absent() : Value(genero),
      estadoCivil: estadoCivil == null && nullToAbsent
          ? const Value.absent()
          : Value(estadoCivil),
      numDoc:
          numDoc == null && nullToAbsent ? const Value.absent() : Value(numDoc),
      foto: foto == null && nullToAbsent ? const Value.absent() : Value(foto),
      nombreTipo: nombreTipo == null && nullToAbsent
          ? const Value.absent()
          : Value(nombreTipo),
      tipo: tipo == null && nullToAbsent ? const Value.absent() : Value(tipo),
      companieroId: companieroId == null && nullToAbsent
          ? const Value.absent()
          : Value(companieroId),
      hijoRelacionId: hijoRelacionId == null && nullToAbsent
          ? const Value.absent()
          : Value(hijoRelacionId),
      relacion: relacion == null && nullToAbsent
          ? const Value.absent()
          : Value(relacion),
      cargaCursoId: cargaCursoId == null && nullToAbsent
          ? const Value.absent()
          : Value(cargaCursoId),
    );
  }

  factory ContactoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ContactoData(
      personaId: serializer.fromJson<int>(json['personaId']),
      nombres: serializer.fromJson<String>(json['nombres']),
      apellidoPaterno: serializer.fromJson<String>(json['apellidoPaterno']),
      apellidoMaterno: serializer.fromJson<String>(json['apellidoMaterno']),
      ocupacion: serializer.fromJson<String>(json['ocupacion']),
      estadoId: serializer.fromJson<int>(json['estadoId']),
      telefono: serializer.fromJson<String>(json['telefono']),
      celular: serializer.fromJson<String>(json['celular']),
      fechaNac: serializer.fromJson<String>(json['fechaNac']),
      correo: serializer.fromJson<String>(json['correo']),
      genero: serializer.fromJson<String>(json['genero']),
      estadoCivil: serializer.fromJson<String>(json['estadoCivil']),
      numDoc: serializer.fromJson<String>(json['numDoc']),
      foto: serializer.fromJson<String>(json['foto']),
      nombreTipo: serializer.fromJson<String>(json['nombreTipo']),
      tipo: serializer.fromJson<int>(json['tipo']),
      companieroId: serializer.fromJson<int>(json['companieroId']),
      hijoRelacionId: serializer.fromJson<int>(json['hijoRelacionId']),
      relacion: serializer.fromJson<String>(json['relacion']),
      cargaCursoId: serializer.fromJson<int>(json['cargaCursoId']),
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
      'ocupacion': serializer.toJson<String>(ocupacion),
      'estadoId': serializer.toJson<int>(estadoId),
      'telefono': serializer.toJson<String>(telefono),
      'celular': serializer.toJson<String>(celular),
      'fechaNac': serializer.toJson<String>(fechaNac),
      'correo': serializer.toJson<String>(correo),
      'genero': serializer.toJson<String>(genero),
      'estadoCivil': serializer.toJson<String>(estadoCivil),
      'numDoc': serializer.toJson<String>(numDoc),
      'foto': serializer.toJson<String>(foto),
      'nombreTipo': serializer.toJson<String>(nombreTipo),
      'tipo': serializer.toJson<int>(tipo),
      'companieroId': serializer.toJson<int>(companieroId),
      'hijoRelacionId': serializer.toJson<int>(hijoRelacionId),
      'relacion': serializer.toJson<String>(relacion),
      'cargaCursoId': serializer.toJson<int>(cargaCursoId),
    };
  }

  ContactoData copyWith(
          {int personaId,
          String nombres,
          String apellidoPaterno,
          String apellidoMaterno,
          String ocupacion,
          int estadoId,
          String telefono,
          String celular,
          String fechaNac,
          String correo,
          String genero,
          String estadoCivil,
          String numDoc,
          String foto,
          String nombreTipo,
          int tipo,
          int companieroId,
          int hijoRelacionId,
          String relacion,
          int cargaCursoId}) =>
      ContactoData(
        personaId: personaId ?? this.personaId,
        nombres: nombres ?? this.nombres,
        apellidoPaterno: apellidoPaterno ?? this.apellidoPaterno,
        apellidoMaterno: apellidoMaterno ?? this.apellidoMaterno,
        ocupacion: ocupacion ?? this.ocupacion,
        estadoId: estadoId ?? this.estadoId,
        telefono: telefono ?? this.telefono,
        celular: celular ?? this.celular,
        fechaNac: fechaNac ?? this.fechaNac,
        correo: correo ?? this.correo,
        genero: genero ?? this.genero,
        estadoCivil: estadoCivil ?? this.estadoCivil,
        numDoc: numDoc ?? this.numDoc,
        foto: foto ?? this.foto,
        nombreTipo: nombreTipo ?? this.nombreTipo,
        tipo: tipo ?? this.tipo,
        companieroId: companieroId ?? this.companieroId,
        hijoRelacionId: hijoRelacionId ?? this.hijoRelacionId,
        relacion: relacion ?? this.relacion,
        cargaCursoId: cargaCursoId ?? this.cargaCursoId,
      );
  @override
  String toString() {
    return (StringBuffer('ContactoData(')
          ..write('personaId: $personaId, ')
          ..write('nombres: $nombres, ')
          ..write('apellidoPaterno: $apellidoPaterno, ')
          ..write('apellidoMaterno: $apellidoMaterno, ')
          ..write('ocupacion: $ocupacion, ')
          ..write('estadoId: $estadoId, ')
          ..write('telefono: $telefono, ')
          ..write('celular: $celular, ')
          ..write('fechaNac: $fechaNac, ')
          ..write('correo: $correo, ')
          ..write('genero: $genero, ')
          ..write('estadoCivil: $estadoCivil, ')
          ..write('numDoc: $numDoc, ')
          ..write('foto: $foto, ')
          ..write('nombreTipo: $nombreTipo, ')
          ..write('tipo: $tipo, ')
          ..write('companieroId: $companieroId, ')
          ..write('hijoRelacionId: $hijoRelacionId, ')
          ..write('relacion: $relacion, ')
          ..write('cargaCursoId: $cargaCursoId')
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
                      ocupacion.hashCode,
                      $mrjc(
                          estadoId.hashCode,
                          $mrjc(
                              telefono.hashCode,
                              $mrjc(
                                  celular.hashCode,
                                  $mrjc(
                                      fechaNac.hashCode,
                                      $mrjc(
                                          correo.hashCode,
                                          $mrjc(
                                              genero.hashCode,
                                              $mrjc(
                                                  estadoCivil.hashCode,
                                                  $mrjc(
                                                      numDoc.hashCode,
                                                      $mrjc(
                                                          foto.hashCode,
                                                          $mrjc(
                                                              nombreTipo
                                                                  .hashCode,
                                                              $mrjc(
                                                                  tipo.hashCode,
                                                                  $mrjc(
                                                                      companieroId
                                                                          .hashCode,
                                                                      $mrjc(
                                                                          hijoRelacionId
                                                                              .hashCode,
                                                                          $mrjc(
                                                                              relacion.hashCode,
                                                                              cargaCursoId.hashCode))))))))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ContactoData &&
          other.personaId == this.personaId &&
          other.nombres == this.nombres &&
          other.apellidoPaterno == this.apellidoPaterno &&
          other.apellidoMaterno == this.apellidoMaterno &&
          other.ocupacion == this.ocupacion &&
          other.estadoId == this.estadoId &&
          other.telefono == this.telefono &&
          other.celular == this.celular &&
          other.fechaNac == this.fechaNac &&
          other.correo == this.correo &&
          other.genero == this.genero &&
          other.estadoCivil == this.estadoCivil &&
          other.numDoc == this.numDoc &&
          other.foto == this.foto &&
          other.nombreTipo == this.nombreTipo &&
          other.tipo == this.tipo &&
          other.companieroId == this.companieroId &&
          other.hijoRelacionId == this.hijoRelacionId &&
          other.relacion == this.relacion &&
          other.cargaCursoId == this.cargaCursoId);
}

class ContactoCompanion extends UpdateCompanion<ContactoData> {
  final Value<int> personaId;
  final Value<String> nombres;
  final Value<String> apellidoPaterno;
  final Value<String> apellidoMaterno;
  final Value<String> ocupacion;
  final Value<int> estadoId;
  final Value<String> telefono;
  final Value<String> celular;
  final Value<String> fechaNac;
  final Value<String> correo;
  final Value<String> genero;
  final Value<String> estadoCivil;
  final Value<String> numDoc;
  final Value<String> foto;
  final Value<String> nombreTipo;
  final Value<int> tipo;
  final Value<int> companieroId;
  final Value<int> hijoRelacionId;
  final Value<String> relacion;
  final Value<int> cargaCursoId;
  const ContactoCompanion({
    this.personaId = const Value.absent(),
    this.nombres = const Value.absent(),
    this.apellidoPaterno = const Value.absent(),
    this.apellidoMaterno = const Value.absent(),
    this.ocupacion = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.telefono = const Value.absent(),
    this.celular = const Value.absent(),
    this.fechaNac = const Value.absent(),
    this.correo = const Value.absent(),
    this.genero = const Value.absent(),
    this.estadoCivil = const Value.absent(),
    this.numDoc = const Value.absent(),
    this.foto = const Value.absent(),
    this.nombreTipo = const Value.absent(),
    this.tipo = const Value.absent(),
    this.companieroId = const Value.absent(),
    this.hijoRelacionId = const Value.absent(),
    this.relacion = const Value.absent(),
    this.cargaCursoId = const Value.absent(),
  });
  ContactoCompanion.insert({
    @required int personaId,
    this.nombres = const Value.absent(),
    this.apellidoPaterno = const Value.absent(),
    this.apellidoMaterno = const Value.absent(),
    this.ocupacion = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.telefono = const Value.absent(),
    this.celular = const Value.absent(),
    this.fechaNac = const Value.absent(),
    this.correo = const Value.absent(),
    this.genero = const Value.absent(),
    this.estadoCivil = const Value.absent(),
    this.numDoc = const Value.absent(),
    this.foto = const Value.absent(),
    this.nombreTipo = const Value.absent(),
    @required int tipo,
    this.companieroId = const Value.absent(),
    @required int hijoRelacionId,
    this.relacion = const Value.absent(),
    @required int cargaCursoId,
  })  : personaId = Value(personaId),
        tipo = Value(tipo),
        hijoRelacionId = Value(hijoRelacionId),
        cargaCursoId = Value(cargaCursoId);
  static Insertable<ContactoData> custom({
    Expression<int> personaId,
    Expression<String> nombres,
    Expression<String> apellidoPaterno,
    Expression<String> apellidoMaterno,
    Expression<String> ocupacion,
    Expression<int> estadoId,
    Expression<String> telefono,
    Expression<String> celular,
    Expression<String> fechaNac,
    Expression<String> correo,
    Expression<String> genero,
    Expression<String> estadoCivil,
    Expression<String> numDoc,
    Expression<String> foto,
    Expression<String> nombreTipo,
    Expression<int> tipo,
    Expression<int> companieroId,
    Expression<int> hijoRelacionId,
    Expression<String> relacion,
    Expression<int> cargaCursoId,
  }) {
    return RawValuesInsertable({
      if (personaId != null) 'persona_id': personaId,
      if (nombres != null) 'nombres': nombres,
      if (apellidoPaterno != null) 'apellido_paterno': apellidoPaterno,
      if (apellidoMaterno != null) 'apellido_materno': apellidoMaterno,
      if (ocupacion != null) 'ocupacion': ocupacion,
      if (estadoId != null) 'estado_id': estadoId,
      if (telefono != null) 'telefono': telefono,
      if (celular != null) 'celular': celular,
      if (fechaNac != null) 'fecha_nac': fechaNac,
      if (correo != null) 'correo': correo,
      if (genero != null) 'genero': genero,
      if (estadoCivil != null) 'estado_civil': estadoCivil,
      if (numDoc != null) 'num_doc': numDoc,
      if (foto != null) 'foto': foto,
      if (nombreTipo != null) 'nombre_tipo': nombreTipo,
      if (tipo != null) 'tipo': tipo,
      if (companieroId != null) 'companiero_id': companieroId,
      if (hijoRelacionId != null) 'hijo_relacion_id': hijoRelacionId,
      if (relacion != null) 'relacion': relacion,
      if (cargaCursoId != null) 'carga_curso_id': cargaCursoId,
    });
  }

  ContactoCompanion copyWith(
      {Value<int> personaId,
      Value<String> nombres,
      Value<String> apellidoPaterno,
      Value<String> apellidoMaterno,
      Value<String> ocupacion,
      Value<int> estadoId,
      Value<String> telefono,
      Value<String> celular,
      Value<String> fechaNac,
      Value<String> correo,
      Value<String> genero,
      Value<String> estadoCivil,
      Value<String> numDoc,
      Value<String> foto,
      Value<String> nombreTipo,
      Value<int> tipo,
      Value<int> companieroId,
      Value<int> hijoRelacionId,
      Value<String> relacion,
      Value<int> cargaCursoId}) {
    return ContactoCompanion(
      personaId: personaId ?? this.personaId,
      nombres: nombres ?? this.nombres,
      apellidoPaterno: apellidoPaterno ?? this.apellidoPaterno,
      apellidoMaterno: apellidoMaterno ?? this.apellidoMaterno,
      ocupacion: ocupacion ?? this.ocupacion,
      estadoId: estadoId ?? this.estadoId,
      telefono: telefono ?? this.telefono,
      celular: celular ?? this.celular,
      fechaNac: fechaNac ?? this.fechaNac,
      correo: correo ?? this.correo,
      genero: genero ?? this.genero,
      estadoCivil: estadoCivil ?? this.estadoCivil,
      numDoc: numDoc ?? this.numDoc,
      foto: foto ?? this.foto,
      nombreTipo: nombreTipo ?? this.nombreTipo,
      tipo: tipo ?? this.tipo,
      companieroId: companieroId ?? this.companieroId,
      hijoRelacionId: hijoRelacionId ?? this.hijoRelacionId,
      relacion: relacion ?? this.relacion,
      cargaCursoId: cargaCursoId ?? this.cargaCursoId,
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
    if (ocupacion.present) {
      map['ocupacion'] = Variable<String>(ocupacion.value);
    }
    if (estadoId.present) {
      map['estado_id'] = Variable<int>(estadoId.value);
    }
    if (telefono.present) {
      map['telefono'] = Variable<String>(telefono.value);
    }
    if (celular.present) {
      map['celular'] = Variable<String>(celular.value);
    }
    if (fechaNac.present) {
      map['fecha_nac'] = Variable<String>(fechaNac.value);
    }
    if (correo.present) {
      map['correo'] = Variable<String>(correo.value);
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
    if (foto.present) {
      map['foto'] = Variable<String>(foto.value);
    }
    if (nombreTipo.present) {
      map['nombre_tipo'] = Variable<String>(nombreTipo.value);
    }
    if (tipo.present) {
      map['tipo'] = Variable<int>(tipo.value);
    }
    if (companieroId.present) {
      map['companiero_id'] = Variable<int>(companieroId.value);
    }
    if (hijoRelacionId.present) {
      map['hijo_relacion_id'] = Variable<int>(hijoRelacionId.value);
    }
    if (relacion.present) {
      map['relacion'] = Variable<String>(relacion.value);
    }
    if (cargaCursoId.present) {
      map['carga_curso_id'] = Variable<int>(cargaCursoId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ContactoCompanion(')
          ..write('personaId: $personaId, ')
          ..write('nombres: $nombres, ')
          ..write('apellidoPaterno: $apellidoPaterno, ')
          ..write('apellidoMaterno: $apellidoMaterno, ')
          ..write('ocupacion: $ocupacion, ')
          ..write('estadoId: $estadoId, ')
          ..write('telefono: $telefono, ')
          ..write('celular: $celular, ')
          ..write('fechaNac: $fechaNac, ')
          ..write('correo: $correo, ')
          ..write('genero: $genero, ')
          ..write('estadoCivil: $estadoCivil, ')
          ..write('numDoc: $numDoc, ')
          ..write('foto: $foto, ')
          ..write('nombreTipo: $nombreTipo, ')
          ..write('tipo: $tipo, ')
          ..write('companieroId: $companieroId, ')
          ..write('hijoRelacionId: $hijoRelacionId, ')
          ..write('relacion: $relacion, ')
          ..write('cargaCursoId: $cargaCursoId')
          ..write(')'))
        .toString();
  }
}

class $ContactoTable extends Contacto
    with TableInfo<$ContactoTable, ContactoData> {
  final GeneratedDatabase _db;
  final String _alias;
  $ContactoTable(this._db, [this._alias]);
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

  final VerificationMeta _nombreTipoMeta = const VerificationMeta('nombreTipo');
  GeneratedTextColumn _nombreTipo;
  @override
  GeneratedTextColumn get nombreTipo => _nombreTipo ??= _constructNombreTipo();
  GeneratedTextColumn _constructNombreTipo() {
    return GeneratedTextColumn(
      'nombre_tipo',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tipoMeta = const VerificationMeta('tipo');
  GeneratedIntColumn _tipo;
  @override
  GeneratedIntColumn get tipo => _tipo ??= _constructTipo();
  GeneratedIntColumn _constructTipo() {
    return GeneratedIntColumn(
      'tipo',
      $tableName,
      false,
    );
  }

  final VerificationMeta _companieroIdMeta =
      const VerificationMeta('companieroId');
  GeneratedIntColumn _companieroId;
  @override
  GeneratedIntColumn get companieroId =>
      _companieroId ??= _constructCompanieroId();
  GeneratedIntColumn _constructCompanieroId() {
    return GeneratedIntColumn(
      'companiero_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _hijoRelacionIdMeta =
      const VerificationMeta('hijoRelacionId');
  GeneratedIntColumn _hijoRelacionId;
  @override
  GeneratedIntColumn get hijoRelacionId =>
      _hijoRelacionId ??= _constructHijoRelacionId();
  GeneratedIntColumn _constructHijoRelacionId() {
    return GeneratedIntColumn(
      'hijo_relacion_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _relacionMeta = const VerificationMeta('relacion');
  GeneratedTextColumn _relacion;
  @override
  GeneratedTextColumn get relacion => _relacion ??= _constructRelacion();
  GeneratedTextColumn _constructRelacion() {
    return GeneratedTextColumn(
      'relacion',
      $tableName,
      true,
    );
  }

  final VerificationMeta _cargaCursoIdMeta =
      const VerificationMeta('cargaCursoId');
  GeneratedIntColumn _cargaCursoId;
  @override
  GeneratedIntColumn get cargaCursoId =>
      _cargaCursoId ??= _constructCargaCursoId();
  GeneratedIntColumn _constructCargaCursoId() {
    return GeneratedIntColumn(
      'carga_curso_id',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        personaId,
        nombres,
        apellidoPaterno,
        apellidoMaterno,
        ocupacion,
        estadoId,
        telefono,
        celular,
        fechaNac,
        correo,
        genero,
        estadoCivil,
        numDoc,
        foto,
        nombreTipo,
        tipo,
        companieroId,
        hijoRelacionId,
        relacion,
        cargaCursoId
      ];
  @override
  $ContactoTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'contacto';
  @override
  final String actualTableName = 'contacto';
  @override
  VerificationContext validateIntegrity(Insertable<ContactoData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('persona_id')) {
      context.handle(_personaIdMeta,
          personaId.isAcceptableOrUnknown(data['persona_id'], _personaIdMeta));
    } else if (isInserting) {
      context.missing(_personaIdMeta);
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
    if (data.containsKey('ocupacion')) {
      context.handle(_ocupacionMeta,
          ocupacion.isAcceptableOrUnknown(data['ocupacion'], _ocupacionMeta));
    }
    if (data.containsKey('estado_id')) {
      context.handle(_estadoIdMeta,
          estadoId.isAcceptableOrUnknown(data['estado_id'], _estadoIdMeta));
    }
    if (data.containsKey('telefono')) {
      context.handle(_telefonoMeta,
          telefono.isAcceptableOrUnknown(data['telefono'], _telefonoMeta));
    }
    if (data.containsKey('celular')) {
      context.handle(_celularMeta,
          celular.isAcceptableOrUnknown(data['celular'], _celularMeta));
    }
    if (data.containsKey('fecha_nac')) {
      context.handle(_fechaNacMeta,
          fechaNac.isAcceptableOrUnknown(data['fecha_nac'], _fechaNacMeta));
    }
    if (data.containsKey('correo')) {
      context.handle(_correoMeta,
          correo.isAcceptableOrUnknown(data['correo'], _correoMeta));
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
    if (data.containsKey('foto')) {
      context.handle(
          _fotoMeta, foto.isAcceptableOrUnknown(data['foto'], _fotoMeta));
    }
    if (data.containsKey('nombre_tipo')) {
      context.handle(
          _nombreTipoMeta,
          nombreTipo.isAcceptableOrUnknown(
              data['nombre_tipo'], _nombreTipoMeta));
    }
    if (data.containsKey('tipo')) {
      context.handle(
          _tipoMeta, tipo.isAcceptableOrUnknown(data['tipo'], _tipoMeta));
    } else if (isInserting) {
      context.missing(_tipoMeta);
    }
    if (data.containsKey('companiero_id')) {
      context.handle(
          _companieroIdMeta,
          companieroId.isAcceptableOrUnknown(
              data['companiero_id'], _companieroIdMeta));
    }
    if (data.containsKey('hijo_relacion_id')) {
      context.handle(
          _hijoRelacionIdMeta,
          hijoRelacionId.isAcceptableOrUnknown(
              data['hijo_relacion_id'], _hijoRelacionIdMeta));
    } else if (isInserting) {
      context.missing(_hijoRelacionIdMeta);
    }
    if (data.containsKey('relacion')) {
      context.handle(_relacionMeta,
          relacion.isAcceptableOrUnknown(data['relacion'], _relacionMeta));
    }
    if (data.containsKey('carga_curso_id')) {
      context.handle(
          _cargaCursoIdMeta,
          cargaCursoId.isAcceptableOrUnknown(
              data['carga_curso_id'], _cargaCursoIdMeta));
    } else if (isInserting) {
      context.missing(_cargaCursoIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey =>
      {personaId, hijoRelacionId, tipo, cargaCursoId};
  @override
  ContactoData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ContactoData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ContactoTable createAlias(String alias) {
    return $ContactoTable(_db, alias);
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
  $AnioAcademicoAlumnoTable _anioAcademicoAlumno;
  $AnioAcademicoAlumnoTable get anioAcademicoAlumno =>
      _anioAcademicoAlumno ??= $AnioAcademicoAlumnoTable(this);
  $ProgramasEducativoTable _programasEducativo;
  $ProgramasEducativoTable get programasEducativo =>
      _programasEducativo ??= $ProgramasEducativoTable(this);
  $PlanEstudioTable _planEstudio;
  $PlanEstudioTable get planEstudio => _planEstudio ??= $PlanEstudioTable(this);
  $PlanCursosTable _planCursos;
  $PlanCursosTable get planCursos => _planCursos ??= $PlanCursosTable(this);
  $CargaCursoTable _cargaCurso;
  $CargaCursoTable get cargaCurso => _cargaCurso ??= $CargaCursoTable(this);
  $DetalleContratoAcadTable _detalleContratoAcad;
  $DetalleContratoAcadTable get detalleContratoAcad =>
      _detalleContratoAcad ??= $DetalleContratoAcadTable(this);
  $ContratoTable _contrato;
  $ContratoTable get contrato => _contrato ??= $ContratoTable(this);
  $CalendarioAcademicoTable _calendarioAcademico;
  $CalendarioAcademicoTable get calendarioAcademico =>
      _calendarioAcademico ??= $CalendarioAcademicoTable(this);
  $CalendarioPeriodoTable _calendarioPeriodo;
  $CalendarioPeriodoTable get calendarioPeriodo =>
      _calendarioPeriodo ??= $CalendarioPeriodoTable(this);
  $TiposTable _tipos;
  $TiposTable get tipos => _tipos ??= $TiposTable(this);
  $AreasBoletaTable _areasBoleta;
  $AreasBoletaTable get areasBoleta => _areasBoleta ??= $AreasBoletaTable(this);
  $NotasCalendarioBoletaTable _notasCalendarioBoleta;
  $NotasCalendarioBoletaTable get notasCalendarioBoleta =>
      _notasCalendarioBoleta ??= $NotasCalendarioBoletaTable(this);
  $ParametrosDisenioTable _parametrosDisenio;
  $ParametrosDisenioTable get parametrosDisenio =>
      _parametrosDisenio ??= $ParametrosDisenioTable(this);
  $SilaboEventoTable _silaboEvento;
  $SilaboEventoTable get silaboEvento =>
      _silaboEvento ??= $SilaboEventoTable(this);
  $RubroEvalDesempenioTable _rubroEvalDesempenio;
  $RubroEvalDesempenioTable get rubroEvalDesempenio =>
      _rubroEvalDesempenio ??= $RubroEvalDesempenioTable(this);
  $WebConfigsTable _webConfigs;
  $WebConfigsTable get webConfigs => _webConfigs ??= $WebConfigsTable(this);
  $TareaCursoTable _tareaCurso;
  $TareaCursoTable get tareaCurso => _tareaCurso ??= $TareaCursoTable(this);
  $EventoTable _evento;
  $EventoTable get evento => _evento ??= $EventoTable(this);
  $CalendarioTable _calendario;
  $CalendarioTable get calendario => _calendario ??= $CalendarioTable(this);
  $SessionUserHijoTable _sessionUserHijo;
  $SessionUserHijoTable get sessionUserHijo =>
      _sessionUserHijo ??= $SessionUserHijoTable(this);
  $ContactoTable _contacto;
  $ContactoTable get contacto => _contacto ??= $ContactoTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        persona,
        usuario,
        sessionUser,
        relaciones,
        anioAcademicoAlumno,
        programasEducativo,
        planEstudio,
        planCursos,
        cargaCurso,
        detalleContratoAcad,
        contrato,
        calendarioAcademico,
        calendarioPeriodo,
        tipos,
        areasBoleta,
        notasCalendarioBoleta,
        parametrosDisenio,
        silaboEvento,
        rubroEvalDesempenio,
        webConfigs,
        tareaCurso,
        evento,
        calendario,
        sessionUserHijo,
        contacto
      ];
}
