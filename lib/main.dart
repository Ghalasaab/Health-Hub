import 'package:flutter/material.dart';
import 'package:healthhub/auth/login_or_register.dart';

import 'package:healthhub/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  // Api().getData();
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MainApp(),
       ),
  );
}

class MyApp {
  const MyApp();
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