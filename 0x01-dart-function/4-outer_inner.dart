String name = "", id = "";

void outer(String name, String id) {
  // set the name and id to global variables to be used by the inner() function
  outer.name = name;
  outer.id = id;
  // call the inner() function to generate the output
  print(inner());
}

String inner() {
  // extract the first letter of the first and last name
  String firstName = name.split(" ")[0].substring(0, 1);
  String lastName = name.split(" ")[1].substring(0, 1);
  // concatenate the output string
  String output = "Hello Agent $lastName.$firstName your id is $id\n";
  // return the output
  return output;
}
