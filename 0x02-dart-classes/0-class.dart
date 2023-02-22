class User {
  String name;

  User({required this.name});

  String showName() {
    return "Hello ${name}";
  }
}
