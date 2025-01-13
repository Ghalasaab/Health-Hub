import 'package:flutter/material.dart';

import '../widgets/recipe_widget.dart';

class RecipesPage extends StatelessWidget {
  const RecipesPage({super.key});
// recipes --> api
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:RecipeWidget(),

    );
  }
}