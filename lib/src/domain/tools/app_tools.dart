class AppTools {
  static String capitalize(String texto) {
    try{
      return "${texto[0].toUpperCase()}${texto.substring(1).toLowerCase()}";
    }catch(e){
      return '';
    }
  }

  static String f_fecha_letras(DateTime timesTamp) {
    String mstr_fecha = "";

    var vobj_days = ["Dom", "Lun", "Mart", "Mié", "Jue", "Vie", "Sáb"];
    var vobj_Meses = ["Ene.", "Feb.", "Mar.", "Abr.", "May.", "Jun.", "Jul.", "Ago.", "Sept.", "Oct.", "Nov.", "Dic."];

    int year = timesTamp.year;
    int month = timesTamp.month; // Jan = 0, dec = 11
    int dayOfMonth = timesTamp.day;
    int dayOfWeek = timesTamp.weekday;
    mstr_fecha = vobj_days[dayOfWeek - 1] + " "+ dayOfMonth.toString() +" de "+ vobj_Meses[month-1];

    return mstr_fecha;
  }


}