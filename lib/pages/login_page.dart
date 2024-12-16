import 'package:eatbytes/components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:eatbytes/components/my_textfield.dart';

class LoginPage extends StatefulWidget{

  final void Function()? onTap;

  LoginPage({super.key, required this. onTap})

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //ttttttext editing
  final TextEditingController emailcontroller = TextEditingController();

  final TextEditingController password= TextEditingController();

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
          //logo
          Icon(Icon.lock_open_rounded,
          size: 100,
          color: Theme.of(context).colorScheme.inversePrimary,
          ),

          const SizedBox(height: 25),

          Text(
            "Food Delivery App",
            style: TextStyle(fontSize: 16,
            color: Theme.of(context).colorScheme.inversePrimary,
            ),//TextStyle
          ),//Text

          const SizedBox(height: 25),

          //message, app slogan

          // email textfield 
          MyTextField(
            controller: emailcontroller,
            hintText: "Email",
            obscureText: false,
          ),

          const SizedBox(height: 10)

          // password 
          MyTextField(
            controller: passwordController,
            hintText: "Password",
            obscureText: false,
          ),

          const SizedBox(height: 10)

          //sign in button
          MyButton(
            text: "Sign In",
            onTap: () {},
            ),

            const SizedBox(height: 25)

          //not a member?

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Not a member?",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
              ),
              const SizedBox(width: 4,)
              GestureDetector(
                onTap: widget.onTap,
                child: Text,
                child: Text(
                  "Register now"
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary
                    FontWeight: FontWeight.bold,
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
