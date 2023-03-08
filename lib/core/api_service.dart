import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  final _baseUrl = "https://www.googleapis.com/books/v1/";

  Future<Map<String, dynamic>> getResponse({
    required String endPoint,
  }) async {
    http.Response response = await http.get(Uri.parse("$_baseUrl$endPoint"));
    Map<String, dynamic> dataBock = jsonDecode(response.body);

    return dataBock;
  }
}
