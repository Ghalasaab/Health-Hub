import 'package:flutter/material.dart';
import 'package:healthhub/components/my_drawer.dart';
import 'package:healthhub/components/my_sliver_app_bar.dart';

import '../widgets/recipe_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("data"),
        backgroundColor: Theme.of(context).colorScheme.background,
        ),
      drawer: const MyDrawer() ,
      body: NestedScrollView(
        headerSliverBuilder:(context, innerBoxIsScrolled) => [
          const MySliverAppBar(
            child: Text('Hello'),
             title: Text('title'),
             ),
        ],
       body:RecipeWidget(),
        
        ),
    );
  }
}