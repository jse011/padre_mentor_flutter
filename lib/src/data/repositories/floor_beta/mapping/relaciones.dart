import 'package:floor/floor.dart';

@entity
class Relaciones{
    static const int PADRE= 181, MADRE=182, TIO=491, ABUELO=469 , HERMANO=183;

    @PrimaryKey(autoGenerate: false)
   int idRelacion;
   int personaPrincipalId;
   int personaVinculadaId;
   int tipoId;
   bool activo;

   Relaciones({this.idRelacion, this.personaPrincipalId, this.personaVinculadaId,
     this.tipoId, this.activo});
}