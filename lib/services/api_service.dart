import 'dart:convert';
import 'package:http/http.dart' as http;

// req to spoon
class ApiService {
  final String apiKey = "69ba9830ef194b2795fd61687ec10fc5";
  final String baseUrl = "https://api.spoonacular.com/recipes";

  Future<List<dynamic>> fetchRandomRecipes({int number = 1}) async {
    final url = "$baseUrl/random?apiKey=$apiKey&number=$number";

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return data['recipes']; // Returns list of recipes
      } else {
        throw Exception("Failed to fetch recipes");
      }
    } catch (e) {
      throw Exception("Error: $e");
    }
  }
}
