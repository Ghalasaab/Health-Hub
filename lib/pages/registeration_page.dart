import 'package:flutter/material.dart';
import 'package:healthhub/components/my_button.dart';
import 'package:healthhub/components/my_textfield.dart';
import 'package:healthhub/pages/home_page.dart';

class RegisterationPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterationPage({
    super.key,
     required this.onTap});

  @override
  State<RegisterationPage> createState() => _RegisterationPageState();
}

class _RegisterationPageState extends State<RegisterationPage> {
       // cont
  final TextEditingController emailController =TextEditingController();
  final TextEditingController passwordController =TextEditingController();
  final TextEditingController confirmpasswordController =TextEditingController();


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
        Text("Let's create an account for you" ,
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

         //confirm password textfield
        MyTextfield(
            controller: confirmpasswordController,
            hintText: "confirm password",
           obscureText: true,
           ),

          const SizedBox(height: 10),

        // sign up button --> customized
      MyButton(
        text: "sign up",
         onTap: () {
          Navigator.pushReplacement(
            context,
             MaterialPageRoute(builder: (context) => const HomePage()),
             );
         },
         ),

          const SizedBox(height: 10),

        // already have an account? Login now
         Row(
          mainAxisAlignment :MainAxisAlignment.center,
          children: [
            Text(
              "already have an account? ",
               style:TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary),
            ),
          const SizedBox(width: 4),
          GestureDetector(
            onTap: widget.onTap ,
            child : Text(
              "Login now",
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