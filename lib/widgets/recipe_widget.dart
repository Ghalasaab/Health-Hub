import 'package:flutter/material.dart';
import '../services/api_service.dart';
// cus wid to display recipes
class RecipeWidget extends StatefulWidget {
  @override
  _RecipeWidgetState createState() => _RecipeWidgetState();
}

class _RecipeWidgetState extends State<RecipeWidget> {
  final ApiService apiService = ApiService();
  List<dynamic> recipes = [];

  @override
  void initState() {
    super.initState();
    fetchRecipes();
  }

  void fetchRecipes() async {
    try {
      final fetchedRecipes =
          await apiService.fetchRandomRecipes(number: 3); // Fetch 3 recipes
      setState(() {
        recipes = fetchedRecipes;
      });
    } catch (e) {
      print("Error fetching recipes: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return recipes.isEmpty
        ? Center(child: CircularProgressIndicator())
        : ListView.builder(
            itemCount: recipes.length,
            itemBuilder: (context, index) {
              final recipe = recipes[index];
              return Card(
                child: ListTile(
                  title: Text(recipe['title']),
                  subtitle:
                      Text("Ready in ${recipe['readyInMinutes']} minutes"),
                  trailing: Image.network(recipe['image']),
                ),
              );
            },
          );
  }
}
