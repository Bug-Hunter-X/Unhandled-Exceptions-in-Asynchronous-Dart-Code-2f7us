```dart
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        // Process the data
      } on FormatException catch (e) {
        print('Error decoding JSON: $e');
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } on SocketException catch (e) {
    print('Network error: $e');
  } on FormatException catch (e) {
    print('JSON format error: $e');
  } catch (e) {
    print('An unexpected error occurred: $e');
  }
}
```