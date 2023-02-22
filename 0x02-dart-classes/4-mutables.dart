class Password {
  String _password;
  Password({required String password}) : _password = password;
  String get password => _password;
  set password(String password) => _password = password;

  bool isValid() {
    // Check the length of the password
    if (_password.length < 8 || _password.length > 16) {
      return false;
    }

    // Check if the password contains uppercase letters, lowercase letters, and numbers
    bool hasUppercase = false;
    bool hasLowercase = false;
    bool hasNumber = false;

    for (int i = 0; i < _password.length; i++) {
      String char = _password[i];

      if (char.toUpperCase() != char.toLowerCase()) {
        if (char == char.toUpperCase()) {
          hasUppercase = true;
        } else {
          hasLowercase = true;
        }
      } else if (int.tryParse(char) != null) {
        hasNumber = true;
      }
    }

    return hasUppercase && hasLowercase && hasNumber;
  }

  @override
  String toString() {
    return "Your Password is: ${_password}";
  }
}
