void outer(String name, String id) {
  String inner() {
    // extract the first letter of the first and last name
    String firstName = name.split(" ")[0].substring(0, 1);
    String lastName = name.split(" ")[1].substring(0, 1);
    // concatenate the output string
    String output = "Hello Agent $lastName.$firstName your id is $id\n";
    // return the output
    return output;
  }
  print(inner());
}
