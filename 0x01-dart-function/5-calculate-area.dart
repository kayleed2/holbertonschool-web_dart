double calculateArea(double height, double base) {
  // calculate the area of the triangle using the height and base
  double area = 0.5 * height * base;
  // round the area to two decimal places
  return double.parse(area.toStringAsFixed(2));
}
