import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiManager {
  // final String API_KEY = "46a6fa6fa24a0af2975bb780";
  final String BASE_URL =
      "https://v6.exchangerate-api.com/v6/46a6fa6fa24a0af2975bb780/latest/";

  final String CONVERSION_URL =
      'https://v6.exchangerate-api.com/v6/46a6fa6fa24a0af2975bb780/pair/';

  Future<Map<String, dynamic>> getExchangeRates(String basecountryCode) async {
    final response = await http.get(Uri.parse(BASE_URL + basecountryCode));
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      return jsonResponse['conversion_rates'];
    } else {
      throw Exception('Failed to fetch exchange rates');
    }
  }

  Future<dynamic> getConversionRatesPair(
      String baseCurrency, String targetCurrency) async {
    final response = await http
        .get(Uri.parse('$CONVERSION_URL$baseCurrency/$targetCurrency'));
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      return jsonResponse['conversion_rate'];
    } else {
      throw Exception('Failed to fetch exchange rates');
    }
  }
}
