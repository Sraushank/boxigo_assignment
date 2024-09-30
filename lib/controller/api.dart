import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/boxigo.dart';

Future<Boxigo?> fetchBoxigoData() async {
  final url = Uri.parse('http://test.api.boxigo.in/sample-data/');
  final response = await http.get(url);
  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    return Boxigo.fromJson(data);
  } else {
    return null;
  }
}

