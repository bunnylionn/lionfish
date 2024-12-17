import 'package:flutter/material.dart';
import '../components/my_button.dart';
import '../components/my_textfield.dart';

class RegisterPage extends StatefulWidget{
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap,});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>{
  //text editing controller
    final TextEditingController emailcontroller = TextEditingController();
    final TextEditingController passwordController= TextEditingController();
    final TextEditingController confirmpasswordController= TextEditingController();

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
          //logo
          Icon(Icons.lock_open_rounded,
          size: 100,
          color: Theme.of(context).colorScheme.inversePrimary,
          ),

          const SizedBox(height: 25),

          Text(
            "Let's create an account for you",
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

          const SizedBox(height: 10),

          // password 
          MyTextField(
            controller: passwordController,
            hintText: "Password",
            obscureText: false,
          ),

          const SizedBox(height: 10),

          // comfirm password 
          MyTextField(
            controller: confirmpasswordController,
            hintText: "Confirm Password",
            obscureText: false,
          ),

          const SizedBox(height: 10),

          //sign Up button
          MyButton(
            text: "Sign Un",
            onTap: () {},
            ),

            const SizedBox(height: 25),

          //already have account? login here

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "already have account?",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
              ),
              const SizedBox(width: 4,),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  "Login now",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
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
