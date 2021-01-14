import 'package:moor_flutter/moor_flutter.dart';
import 'package:padre_mentor/src/data/repositories/moor/model/parametros_disenio.dart';
import 'package:padre_mentor/src/data/repositories/moor/tools/serializable_convert.dart';
import 'package:padre_mentor/src/domain/entities/calendario_periodio_ui.dart';
import 'package:padre_mentor/src/domain/entities/contrato_ui_ui.dart';
import 'package:padre_mentor/src/domain/entities/curso_boleta_ui.dart';
import 'package:padre_mentor/src/domain/entities/tipo_nota_enum_ui.dart';
import 'package:padre_mentor/src/domain/repositories/curso_repository.dart';

import 'database/app_database.dart';

class DataCursoRepository extends CursoRepository{
  @override
  Future<List<CalendarioPeriodoUI>> getCalendarioPerios(int programaEducativoId, int alumnoId, int anioAcademicoId) async{
    print("getCalendarioPerios" );
    AppDataBase SQL = AppDataBase();
    try{

      /*
      * Obtner calendario Periodo
      *  CALENDARIO_PERIODO_CREADO = 214, CALENDARIO_PERIODO_VIGENTE = 215, CALENDARIO_PERIODO_CERRADO = 217
      *
      * */
      var query=  await SQL.select(SQL.calendarioPeriodo).join([
        innerJoin(SQL.calendarioAcademico, SQL.calendarioAcademico.calendarioAcademicoId.equalsExp(SQL.calendarioPeriodo.calendarioAcademicoId)),
        innerJoin(SQL.anioAcademicoAlumno, SQL.anioAcademicoAlumno.idAnioAcademico.equalsExp(SQL.calendarioAcademico.idAnioAcademico)),
        innerJoin(SQL.tipos, SQL.tipos.tipoId.equalsExp(SQL.calendarioPeriodo.tipoId))
      ]);
      query.where(SQL.anioAcademicoAlumno.personaId.equals(alumnoId));
      query.where(SQL.anioAcademicoAlumno.idAnioAcademico.equals(anioAcademicoId));
      query.where(SQL.calendarioAcademico.programaEduId.equals(programaEducativoId));
      query.groupBy([SQL.calendarioPeriodo.calendarioPeriodoId]);
      var rows = await query.get();
      List<CalendarioPeriodoUI> calendarioPeriodoList = [];

      CalendarioPeriodoUI calendarioPeriodoUI;

      for(var data in rows){
        CalendarioPeriodoData calendarioPeriodoData = data.readTable(SQL.calendarioPeriodo);
        Tipo tipo = data.readTable(SQL.tipos);
        calendarioPeriodoUI = CalendarioPeriodoUI(id: calendarioPeriodoData.calendarioPeriodoId, nombre: tipo.nombre, selected: calendarioPeriodoData.estadoId==215, fechaFin: calendarioPeriodoData.fechaFin, fechaInicio: calendarioPeriodoData.fechaInicio, estadoId: calendarioPeriodoData.estadoId);
        calendarioPeriodoList.add(calendarioPeriodoUI);
      }


      if (!calendarioPeriodoList.isEmpty && calendarioPeriodoUI == null){
        final List<CalendarioPeriodoUI> orderList = [];
        orderList.addAll(calendarioPeriodoList);
        orderList.sort((a, b) => b.fechaFin.compareTo(a.fechaFin));

        //#region Buscar el calendario en el estado creado proximo a estar vigente
        int count = 0;
        calendarioPeriodoUI =  orderList[0];
        for(var item in orderList){
          if (calendarioPeriodoUI.estadoId == 214)
          {
            calendarioPeriodoUI =  item;
            if (count != 0 &&
                orderList[count - 1].estadoId == 217)
            {
              calendarioPeriodoUI = orderList[count - 1];
              break;
            }
          }

          count++;
        }

        calendarioPeriodoUI.selected = true;
        //#endregion
      }

      return calendarioPeriodoList;
    }catch(e){
      throw Exception(e);
    }
  }

  @override
  Future<void> saveBoletaNotas(Map<String, dynamic> datosBoleta)async {
    AppDataBase SQL = AppDataBase();
    try{
      await SQL.batch((batch) async {
        // functions in a batch don't have to be awaited - just
        // await the whole batch afterwards.
        var bEBoletaNotasList = SerializableConvert.converListSerializeNotasCalendarioBoleta(datosBoleta["bEBoletaNotas"]);

        if(datosBoleta.containsKey("bEBoletasAreas")){
          if(!bEBoletaNotasList.isEmpty){
            batch.insertAll(SQL.areasBoleta, SerializableConvert.converListSerializeAreasBoleta(datosBoleta["bEBoletasAreas"]), mode: InsertMode.insertOrReplace );
          }
        }

        if(datosBoleta.containsKey("bEBoletaNotas")){
          batch.insertAll(SQL.notasCalendarioBoleta, bEBoletaNotasList, mode: InsertMode.insertOrReplace );
        }

      });
    }catch(e){
      throw Exception(e);
    }
  }

  @override
  Future<List<CursoBoletaUi>> getBoletaNotas(int alumnoId, int anioAcademicoId, int calendarioPeridoId, int programaEducativoId, int periodoId, int seccionId) async {
    print("getBoletaNotas" );
    AppDataBase SQL = AppDataBase();
    try{

      /*
      * Obtner boleta notas
      *  CALENDARIO_PERIODO_CREADO = 214, CALENDARIO_PERIODO_VIGENTE = 215, CALENDARIO_PERIODO_CERRADO = 217
      *  PRE_MATRICULA = 189, MATRICULA = 190
      *  VALOR_NUMERICO = 410, SELECTOR_NUMERICO = 411, SELECTOR_VALORES = 412, SELECTOR_ICONOS = 409, VALOR_ASISTENCIA= 474
      * */

      var _queryAreaBoleta =  await SQL.select(SQL.areasBoleta)..where((tbl) => tbl.calendarioPeriodoId.equals(calendarioPeridoId));
      _queryAreaBoleta.where((tbl) => tbl.seccionId.equals(seccionId));
      _queryAreaBoleta.where((tbl) => tbl.periodoId.equals(periodoId));
      //_queryAreaBoleta.where((tbl) => tbl.anioAcademicoId.equals(anioAcademicoId));
      //_queryAreaBoleta.where((tbl) => tbl.programaEducativoId.equals(programaEducativoId));
      /*queryAreaBoleta.orderBy([
            (tbl)=> OrderingTerm(expression: tbl.tipoConceptoId),
            (tbl)=> OrderingTerm(expression: tbl.totalHt),
            (tbl)=> OrderingTerm(expression: tbl.nombre),
            (tbl)=> OrderingTerm(expression: tbl.competenciaId)]);*/

      List<AreasBoletaData> areasBoletaList = await _queryAreaBoleta.get();
      List<CursoBoletaUi> cursoBoletaUiList = [];
      List<CursoBoletaUi> asignados = [];

      await Future.forEach(areasBoletaList, (boleta) async{


        CursoBoletaUi cursoBoletaUi = CursoBoletaUi(
            rubroEvalResultadoId: boleta.rubroEvalResultadoId,
            competencia: boleta.competencia,
            competenciaId: boleta.competenciaId,
            tipoNotaEnum: getTipoNotaEnumUi(boleta.tipoNotaId),
            nombre: boleta.nombre,
            silaboEventoId: boleta.silaboEventoId,
            tipoConceptoId: boleta.tipoConceptoId,
            totalHt: boleta.totalHt,
            cursoBoletaUiList: []
        );


        cursoBoletaUiList.add(cursoBoletaUi);
        var queryNotasCalendarioBoletas = SQL.select(SQL.notasCalendarioBoleta)..where((tbl) => tbl.alumnoId.equals(alumnoId));
        queryNotasCalendarioBoletas.where((tbl) => tbl.rubroEvalResultadoId.equals(boleta.rubroEvalResultadoId));
        NotasCalendarioBoletaData notasCalendarioBoleta = await queryNotasCalendarioBoletas.getSingle();
        if(notasCalendarioBoleta!=null){
          cursoBoletaUi.nota = notasCalendarioBoleta.nota;
          cursoBoletaUi.tipoNotaEnum = getTipoNotaEnumUi(boleta.tipoNotaId);
          cursoBoletaUi.color = notasCalendarioBoleta.color;

          if((cursoBoletaUi.tipoNotaEnum == TipoNotaEnumUi.VALOR_NUMERICO||
              cursoBoletaUi.tipoNotaEnum == TipoNotaEnumUi.SELECTOR_NUMERICO) && cursoBoletaUi.nota!=null && !cursoBoletaUi.nota.isEmpty){
            try{
              int notaformat = double.parse(cursoBoletaUi.nota).toInt();
              if (notaformat < 11) {
                cursoBoletaUi.color = "#f44336";
              }
              if (notaformat >= 11) {
                cursoBoletaUi.color  = "#3a4fc6";
              }
              cursoBoletaUi.nota = notaformat.toString();
            }catch(e){
              print(e.toString());
            }

          }
        }

        SilaboEventoData silaboEventoData = await (SQL.select(SQL.silaboEvento)..where((tbl) => tbl.silaboEventoId.equals(cursoBoletaUi.silaboEventoId))).getSingle();
        ParametrosDisenioData parametrosDisenioData = await (SQL.select(SQL.parametrosDisenio)..where((tbl) => tbl.parametroDisenioId.equals(silaboEventoData==null?0:silaboEventoData.parametroDisenioId))).getSingle();
        if(parametrosDisenioData!=null){
          cursoBoletaUi.colorCurso = parametrosDisenioData.color1;
          cursoBoletaUi.colorCurso2 = parametrosDisenioData.color2;
          cursoBoletaUi.colorCurso3 = parametrosDisenioData.color3;
        }

      });


      List<CursoBoletaUi> finales = [];
      for (CursoBoletaUi cursoBoletaUi in cursoBoletaUiList){
        if(cursoBoletaUi.competenciaId==0){
          finales.add(cursoBoletaUi);
          asignados.add(cursoBoletaUi);
        }
      }

      for (CursoBoletaUi _final in finales){
        List<CursoBoletaUi> hijos = [];
        for (CursoBoletaUi cursoBoletaUi in cursoBoletaUiList){
          if(_final.silaboEventoId==cursoBoletaUi.silaboEventoId&&cursoBoletaUi.competenciaId!=0){
            hijos.add(cursoBoletaUi);
            asignados.add(cursoBoletaUi);
          }
        }
        _final.cursoBoletaUiList = hijos;
      }

      //cursoBoletaUiList.removeAll(asignados);
      for(var asignado in asignados)cursoBoletaUiList.remove(asignado);


      for (CursoBoletaUi cursoBoletaUi in cursoBoletaUiList){
        cursoBoletaUi.tranversal = true;
        cursoBoletaUi.cursoBoletaUiList.add(cursoBoletaUi);
      }

      finales.addAll(cursoBoletaUiList);

      //Collections.sort(finales,new CursoBoletaUiComprador());
      finales.sort((o1, o2){
        int value1 = o2.totalHt.compareTo(o1.totalHt);
        if (value1 == 0) {
          int value2 = o1.tipoConceptoId.compareTo(o2.tipoConceptoId);
          if (value2 == 0) {
            int value3 = (o1.nombre!=null&&o1.nombre.isNotEmpty?o1.nombre:"").compareTo(o2.nombre);
            if(value3==0){
              return o1.competenciaId.compareTo(o2.competenciaId);
            }else {
              return value3;
            }
          } else {
            return value2;
          }
        }
        return value1;
      });

      return finales;
    }catch(e){
      throw Exception(e);
    }

  }

  TipoNotaEnumUi getTipoNotaEnumUi(int tipoNotaId){
    TipoNotaEnumUi tipoNotaEnumUi = TipoNotaEnumUi.VALOR_NUMERICO;
    if(tipoNotaId == 410){
      tipoNotaEnumUi = TipoNotaEnumUi.VALOR_NUMERICO;
    }else if (tipoNotaId == 411){
      tipoNotaEnumUi = TipoNotaEnumUi.SELECTOR_NUMERICO;
    }else if (tipoNotaId == 412){
      tipoNotaEnumUi = TipoNotaEnumUi.SELECTOR_VALORES;
    }else if (tipoNotaId == 409){
      tipoNotaEnumUi = TipoNotaEnumUi.SELECTOR_ICONOS;
    }else if (tipoNotaId == 474){
      tipoNotaEnumUi = TipoNotaEnumUi.VALOR_ASISTENCIA;
    }
    return tipoNotaEnumUi;
  }

  @override
  Future<ContratoUi> getContratoUi(int anioAcademicoId, int alumnoId) async{
    print("getBoletaNotas" );
    AppDataBase SQL = AppDataBase();
    try{
    var queryContrato =  await SQL.select(SQL.contrato)..where((tbl) => tbl.personaId.equals(alumnoId));
    queryContrato.where((tbl) => tbl.estadoId.equals(190));
    queryContrato.where((tbl) => tbl.idAnioAcademico.equals(anioAcademicoId));
    ContratoData contratoData = await queryContrato.getSingle();

    int contratoId = contratoData!=null?contratoData.idContrato:0;
    int periodoId = contratoData!=null?contratoData.periodoId:0;
    int seccionId = contratoData!=null?contratoData.seccionId:0;

    return ContratoUi(id: contratoId, periodoId: periodoId, seccionId: seccionId);
    }catch(e){
      throw Exception(e);
    }
  }


}