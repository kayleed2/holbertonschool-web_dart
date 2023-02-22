// Function to add two integers
int add(int a, int b) {
  return a + b;
}

// Function to subtract two integers
int sub(int a, int b) {
  return a - b;
}

// Function to show the output of the add() and sub() functions
String showFunc(int a, int b) {
  int sum = add(a, b);
  int diff = sub(a, b);
  String str = "Add $a + $b = $sum\n";
  str += "Sub $a - $b = $diff";
  return str;
}
