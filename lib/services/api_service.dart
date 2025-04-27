import 'dart:convert';
import 'package:http/http.dart' as http';
class ApiService {
  static const base = 'https://your_backend_url';
  static Future<List> getMatches() async {
    final res = await http.get(Uri.parse('\$base/api/matches'));
    if (res.statusCode == 200) return jsonDecode(res.body);
    throw Exception('Failed');
  }
}