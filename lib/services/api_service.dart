import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/card_model.dart';

class ApiService {
  static const String baseUrl = 'https://your-api.com/api/cards'; // replace with your API

  static Future<List<CreditCard>> fetchCards() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      List data = json.decode(response.body);
      return data.map((json) => CreditCard.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load cards');
    }
  }

  static Future<bool> addCard(CreditCard card) async {
    final response = await http.post(
      Uri.parse(baseUrl),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(card.toJson()),
    );

    return response.statusCode == 200 || response.statusCode == 201;
  }
}
