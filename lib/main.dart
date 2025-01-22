import 'package:flutter/material.dart';
import 'package:healthhub/auth/login_or_register.dart';
import 'package:healthhub/models/restaurant.dart';
//import 'package:healthhub/widgets/recipe_widget.dart';
import 'package:healthhub/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  // Api().getData();
  runApp(
    MultiProvider(
      providers: [
        //Provider<Restaurant>(create: (_) => Restaurant()),
            ChangeNotifierProvider(create: (context) => ThemeProvider()),
            ChangeNotifierProvider(create: (context) => Restaurant()),
      ],
      child: MainApp(),
      ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
      theme: Provider.of<ThemeProvider> (context).themeData,
    );
  }
}