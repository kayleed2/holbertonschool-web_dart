import 'dart:convert';
import 'dart:async';

Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );

Future<bool> checkCredentials() =>
    Future.delayed(const Duration(seconds: 2), () => true);
main() async {
  print(await loginUser());
}

Future<String> greetUser() async {
  try {
    final userData = await fetchUserData();
    final name = userData['name'] as String;
    final name = json.decode(name);
    return 'Hello $name!';
  } catch (e) {
    return 'error caught: $e';
  }
}

Future<String> loginUser() async {
  try {
    final isAuthorized = await checkCredentials();
    if (isAuthorized) {
      final greeting = await greetUser();
      return greeting;
    } else {
      return 'Wrong credentials';
    }
  } catch (e) {
    return 'Error caught: $e';
  }
}
