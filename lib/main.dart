import 'package:flutter/material.dart';
import 'package:healthhub/auth/login_or_register.dart';
import 'package:healthhub/models/restaurant.dart';
//import 'package:healthhub/widgets/recipe_widget.dart';
import 'package:healthhub/themes/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
// api anon key: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBtZmJsemZrZmF1YXpkc3F3eGJ1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzY5MTU0OTUsImV4cCI6MjA1MjQ5MTQ5NX0.eZelvNfNmgUGtnxeM3Xtz6Nu2PStlwT9JjER650qQ10
// URL : https://pmfblzfkfauazdsqwxbu.supabase.co

/*void main(){
  WidgetsFlutterBinding.ensureInitialized();
}*/
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  //supabase
  await Supabase.initialize(
    url: ' https://pmfblzfkfauazdsqwxbu.supabase.co' ,
    anonKey:'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBtZmJsemZrZmF1YXpkc3F3eGJ1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzY5MTU0OTUsImV4cCI6MjA1MjQ5MTQ5NX0.eZelvNfNmgUGtnxeM3Xtz6Nu2PStlwT9JjER650qQ10' ,
    );
    runApp(
    MultiProvider(providers: [
       // theme provider
    ChangeNotifierProvider(create: (context) => ThemeProvider()),

       //rest provider
    ChangeNotifierProvider(create: (context) => Restaurant()),

    ],
    child: MainApp(),
    ),
      //child: const MainApp(),      
  ); // Api().getData(); 
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