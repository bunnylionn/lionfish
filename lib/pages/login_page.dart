import 'package:eatbytes/components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:eatbytes/components/my_textfield.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget{
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text editing controller
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  // login methd

  void login(){
    /*
    fill out authentication
  */

  // navigat to home page
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const HomePage(),
     )
    ); 
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
          //logo
          Icon(
            Icons.lock_open_rounded,
            size: 100,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),

          const SizedBox(height: 25),

          //message, app slogan
          Text(
            "Food Delivery App",
            style: TextStyle(fontSize: 16,
            color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          const SizedBox(height: 25),

          // email textfield 
          MyTextField(
            controller: emailcontroller,
            hintText: "Email",
            obscureText: false,
          ),

          const SizedBox(height: 10),

          // password 
          MyTextField(
            controller: passwordcontroller,
            hintText: "Password",
            obscureText: false,
          ),

          const SizedBox(height: 25),

          //sign in button
          MyButton(
            text: "Sign In",
            onTap: login,
            ),

            const SizedBox(height: 25),

          //not a member?

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Not a member?",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
              ),
              const SizedBox(width: 4,),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  "Register now",
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
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {

//   // login methd

//   void login(){
//     /*
//     fill out authentication
//   */

//   // navigat to home page

//   Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (context) => const HomePage(),
//     )
//   ); 
// }

//  @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).colorScheme.background,
  //     body: Center(
  //       child:Column(
  //         mainAxisAlignment:MainAxisAlignment.center,
  //         children: [
  //         //logo
  //         Icon(
  //           Icons.lock_open_rounded,
  //           size: 100,
  //           color: Theme.of(context).colorScheme.inversePrimary,
  //         ),

  //         const SizedBox(height: 25),

  //         //message, app slogan
  //         Text(
  //           "Food Delivery App",
  //           style: TextStyle(fontSize: 16,
  //           color: Theme.of(context).colorScheme.inversePrimary,
  //           ),
  //         ),

  //         const SizedBox(height: 25),

  //         // email textfield 
  //         MyTextField(
  //           controller: emailcontroller,
  //           hintText: "Email",
  //           obscureText: false,
  //         ),

  //         const SizedBox(height: 10),

  //         // password 
  //         MyTextField(
  //           controller: passwordcontroller,
  //           hintText: "Password",
  //           obscureText: false,
  //         ),

  //         const SizedBox(height: 25),

  //         //sign in button
  //         MyButton(
  //           text: "Sign In",
  //           onTap: login,
  //           ),

  //           const SizedBox(height: 25),

  //         //not a member?

  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             Text(
  //               "Not a member?",
  //               style: TextStyle(
  //                 color: Theme.of(context).colorScheme.inversePrimary),
  //             ),
  //             const SizedBox(width: 4,),
  //             GestureDetector(
  //               onTap: widget.onTap,
  //               child: Text(
  //                 "Register now",
  //                 style: TextStyle(
  //                   color: Theme.of(context).colorScheme.inversePrimary,
  //                   fontWeight: FontWeight.bold,
  //                 ),
  //                 ),
  //                 ),
  //             ],
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

