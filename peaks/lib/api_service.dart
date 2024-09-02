import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String apiKey = 'YOUR_API_KEY';  // Nahraďte skutočným API kľúčom
  final String baseUrl = 'https://api.example.com'; // Nahraďte základnou URL API

  // Konstruktor triedy (voliteľný)
  ApiService();

  // Funkcia na získanie dát z API
  Future<Map<String, dynamic>> fetchData(String endpoint) async {
    final response = await http.get(
      Uri.parse('$baseUrl/$endpoint'),
      headers: {'Authorization': 'Bearer $apiKey'},
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data');
    }
  }
}
