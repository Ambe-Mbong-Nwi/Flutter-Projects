import 'package:camnes/buyer/buyerScreens/buyer_bottom_navigation.dart';
import 'package:camnes/buyer/buyerScreens/signup_buyer.dart';
import 'package:camnes/clipper/clipper1.dart';
import 'package:camnes/clipper/clipper2.dart';
import 'package:camnes/shared/forgotpassword.dart';
import 'package:flutter/material.dart';

import '../../shared/role.dart';

class LoginBuyer extends StatelessWidget {
  const LoginBuyer({super.key});

  @override
  Widget build(BuildContext context) {

     //TextEditingController class notifies listeners when changes are made to a text field. Listeners can then read the text, etc
    var usernameController = TextEditingController();
    var passwordController = TextEditingController();


    Widget buildUsername() {
      return Container(
      height: 50,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(2, 1),
            blurRadius: 2,
            color: Colors.grey,
          )
        ]
      ),
      child: TextFormField(
        validator: (value){
          if(value == null || value.isEmpty) {
            return "Enter your username";
          }
          return null;
        },
        controller: usernameController,
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          hintText: "Enter your username",
        ),
      )
      );
    }
    

    Widget buildPassword() {
      return Container(
      height: 50,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(2, 1),
            blurRadius: 2,
            color: Colors.grey,
          )
        ]
      ),
      child: TextFormField(
        validator: (value){
          if(value == null || value.isEmpty) {
            return "Enter your password";
          }
          return null;
        },
        controller: passwordController,
        decoration: const InputDecoration(
          border: InputBorder.none,
         contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          hintText: "Enter your password",
        ),
      )
      );
    }
    

    

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(       //column for paint decoration at top.
              children: [
                Stack(
                  children: [
                    CustomPaint(
                    size: Size(MediaQuery.of(context).size.width, 300),
                    painter: RSCustomPainter(),
                  ),
                  Positioned(
                    top: 16,
                    right: -5,
                    child: CustomPaint(
                      size: Size(MediaQuery.of(context).size.width, 300),
                      painter: RPSCustomPainter(),
                      )
                      ),

                  Positioned(                     //back icon to pop current page  and return to the previous page
                    top: 40,
                    left: 10,
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 35.0,
                      ),
                       onPressed: () {
                        Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) =>  const Role()));
                      },
                      )
                    ),


                  const Positioned(
                    top: 240,
                    left: 30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Login',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          )
                        ),
                        Text(
                          'Welcome back to CAMNES',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 17,
                          )
                        ),
                      ],
                    )
                  )
                  ]
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(height: 40.0),
                    buildUsername(),
                    const SizedBox(height: 30.0),
                    buildPassword(),
                    const SizedBox(height: 8.0),
                    TextButton(
                      onPressed: () { 
                         Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => const ForgotPassword()
                            ),);
                       },
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(0),       //remove default padding so it aligns to left of screen.
                      ),
                      child: const Text(
                      'Forgot Password',
                      style: TextStyle(
                        color: Color(0xffb80f0a),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ), 
                      )
                    ),
                  ]
              )
              )
            ],),
            const SizedBox(height: 170.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const BuyerBottomNavigation()
                    ),);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffb80f0a),        //background color of button
                foregroundColor: Colors.white,     // text color
                padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical:15.0 ),
              ),
              child: const Text(
                'LOGIN',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0 ),)),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                 style: TextStyle(
                   fontWeight: FontWeight.w300,
                    fontSize: 17,
                          )  
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const SignUpBuyer()
                        ),);
                  },
                  child: const Text(
                    'Create Account',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 17,
                      color: Color(0xffb80f0a),
                          ) 
                  ))
              ],)
          ],
           
        ),
      ),
    );
  }
}