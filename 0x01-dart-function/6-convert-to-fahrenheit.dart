List<double> convertToF(List<double> temperaturesInC) {
  // use the map method to convert each temperature from Celsius to Fahrenheit
  List<double> temperaturesInF = temperaturesInC.map((celsius) => (celsius * 9 / 5) + 32).toList();
  // round each temperature to two decimal places
  temperaturesInF = temperaturesInF.map((fahrenheit) => double.parse(fahrenheit.toStringAsFixed(2))).toList();
  // return the list of temperatures in Fahrenheit
  return temperaturesInF;
}
