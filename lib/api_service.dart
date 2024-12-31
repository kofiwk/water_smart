/* import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:water_smart/models/farmers_model.dart';


class ApiService {
  final String baseUrl = "http://127.0.0.1:3000"; // Replace with your server IP and port

  Future<List<Farmer>> fetchFarmers() async {
    final response = await http.get(Uri.parse('$baseUrl/farmers'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => Farmer.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load farmers.');
    }
  }
}
 */