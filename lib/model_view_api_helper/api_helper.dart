import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ApiHelper {
  static Future<Response> postProduct(
      {required String url, required Map<String, dynamic> body}) async {
    Response data = Response('', 500);
    try {
      Response data =
      await http.post(Uri.parse(url), body: jsonEncode(body), headers: {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      });
      return data;
    } catch (e) {
      return data;
    }
  }
}
