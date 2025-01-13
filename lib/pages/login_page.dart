import 'package:flutter/material.dart';
import 'package:healthhub/components/my_button.dart';
import 'package:healthhub/components/my_textfield.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;


   const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // cont
  final TextEditingController emailController =TextEditingController();
  final TextEditingController passwordController =TextEditingController();

  // login method
  void login(){
    // auths
    // nav to home
    Navigator.push(
      context,
       MaterialPageRoute(
        builder: (context) => const HomePage(),
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background, // افضل من تحديد لون معين لانه بيكون افضل عند التغيير
      body: Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       children: [
        // logo
         Icon(
          Icons.lock_open_rounded,
          size: 100,
           color:Theme.of(context).colorScheme.inversePrimary,
          ),

          const SizedBox(height: 25),

        // message, app's slogan(رسالة)
        Text("Food Delivery App" ,
         style:TextStyle(
          fontSize: 16,
          color:  Theme.of(context).colorScheme.inversePrimary,
          ),
          ),

          const SizedBox(height: 25),

        //email textfield
          MyTextfield(
            controller: emailController,
            hintText: "email",
           obscureText: false,
           ),

          const SizedBox(height: 10),

        // password textfield
        MyTextfield(
            controller: passwordController,
            hintText: "password",
           obscureText: true,
           ),

          const SizedBox(height: 10),

        // sign in button --> customized
      MyButton(
        text: "sign in",
         onTap: () {
          Navigator.pushReplacement(
            context,
             MaterialPageRoute(builder: (context) => const HomePage()),
             );
         },
         ),

          const SizedBox(height: 10),

        // not a member? register now (signup)
         Row(
          mainAxisAlignment :MainAxisAlignment.center,
          children: [
            Text(
              "Not a member?",
               style:TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary),
            ),
          const SizedBox(width: 4),
          GestureDetector(
            onTap: widget.onTap ,
            child : Text(
              "register now!",
               style:TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontWeight:FontWeight.bold,
               ),
              ),
          ),
          ],
        ),
      ],
    ),
    ),
    );
  }
}
