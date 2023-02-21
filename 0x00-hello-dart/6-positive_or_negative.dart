void main(List<String> args) {
  var number = int.parse(args[0]);
  if (number == 0) {
	print("$number is zero");
  }
  else if (number.isNegative) {
	print("$number is negative");
  } 
  else if (!number.isNegative) {
	print("$number is positive");
  }
}
