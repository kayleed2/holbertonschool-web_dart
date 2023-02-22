import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String> generateQuote(int id) async {
  try {
    final response = await http.get(Uri.parse('https://breakingbadapi.com/api/quotes/$id'));
    final data = jsonDecode(response.body);
    final quote = '${data[0]['author']} : ${data[0]['quote']}';
    return quote.replaceAll(RegExp(r'&#(\d+);'), (match) {
      final code = int.parse(match.group(1)!);
      return String.fromCharCode(code);
    });
  } catch (e) {
    return 'There are no quotes';
  }
}
