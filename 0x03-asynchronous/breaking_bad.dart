import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printBbCharacters() async {
  try {
    final response = await http.get(Uri.parse('https://breakingbadapi.com/api/characters'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as List<dynamic>;
      for (final character in data) {
        print(character['name']);
      }
    } else {
      print('Error: ${response.statusCode}');
    }
  } catch (e) {
    print('error caught: $e');
  }
}
