class User {
  String name = "";
  int age;
  double height;
  Map<String, dynamic> toJson() {
    'name': name,
    'age': age,
    'height': height,
    };
}
