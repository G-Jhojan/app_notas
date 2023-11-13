class Constants {
  static const Map <int, String> NAME_MONTH = {
    1:"Enero",
    2:"Febrero",
    3:"Marzo",
    4:"Abril",
    5:"Mayo",
    6:"Junio",
    7:"Julio",
    8:"Agosto",
    9:"Septiembre",
    10:"Octubre",
    11:"Noviembre",
    12:"Diciembre"
  };

  static const Map <int, String> NAME_DAY = {
    1:"Lunes",
    2:"Martes",
    3:"Miercoles",
    4:"Jueves",
    5:"Viernes",
    6:"Sabado",
    7:"Domingo"
  };

  static const Map <String, String> HEADERS = {
    "content-type": "application-json",

  };
  /// Urls Estáticas
    static const String MAIN_SERVICE = "https://notas-war-corp.herokuapp.com/api/v1/notes";

     static const String MAIN_TITLE = "Notas WAR CORP.";
     static const String SUB_TITLE = "Escribe, Crea, Anota cuaquier actividad por hacer.";
}
