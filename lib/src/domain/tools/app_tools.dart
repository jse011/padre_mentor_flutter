class AppTools {
  static String capitalize(String texto) {
    try{
      return "${texto[0].toUpperCase()}${texto.substring(1).toLowerCase()}";
    }catch(e){
      return '';
    }
  }
}