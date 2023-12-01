import 'package:intl/intl.dart';

class HumanFormats {
  // CON STATIC NO SE OCUPA CREAR UNA INSTANCIA PARA LLAMAR UNOS DE
  // LOS METODOS
  static String humanReadbleNumber(double number) {
    final formatterNumber = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
    ).format(number);

    return formatterNumber;
  }
}
