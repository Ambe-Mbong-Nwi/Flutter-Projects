import 'package:camnes/clipper/clipper1.dart';
import 'package:camnes/clipper/clipper2.dart';
import 'package:camnes/seller/sellerScreens/seller_bottom_navigation.dart';
import 'package:camnes/seller/sellerScreens/signup_seller.dart';
import 'package:camnes/shared/role.dart';
import 'package:flutter/material.dart';

import '../../shared/forgotpassword.dart';
import '../../shared/responsive_layout_builder.dart';

class LoginSeller extends StatelessWidget {
  const LoginSeller({super.key});

  @override
  Widget build(BuildContext context) {

    //accessing global layout builder from their file. Note that these values can still be readjusted from here.
    final customPaintHeight = ResponsiveLayerBuilder.getCustomPaintHeight(context);     //get the responsive custom paint method from its file and asign to this variable
    final buttonWidth = ResponsiveLayerBuilder.getButtonWidth(context);
    final buttonHeight = ResponsiveLayerBuilder.getButtonHeight(context);

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // Flexible(
          //   flex: 3,                  //custom paint takes a flex of 3
          //   fit: FlexFit.loose,       //occupies only space it needs and at most the space of the parent.
          //   child: Column(       //column for paint decoration at top.
          //     children: [
          //       Stack(                  //custom paints
          //         children: [
          //           CustomPaint(
          //           size: Size(MediaQuery.of(context).size.width, customPaintHeight),
          //           painter: RSCustomPainter(),
          //         ),
          //         Positioned(
          //           top: 16,
          //           right: -5,
          //           child: CustomPaint(
          //             size: Size(MediaQuery.of(context).size.width, customPaintHeight),
          //             painter: RPSCustomPainter(),
          //             )
          //           ),
                          
          //         Positioned(                     //back icon to pop current page  and return to the previous page
          //           top: 40,
          //           left: 10,
          //           child: IconButton(
          //             icon: const Icon(
          //               Icons.arrow_back,
          //               size: 35.0,
          //             ),
          //             onPressed: () {
          //               Navigator.pushReplacement(
          //               context,
          //               MaterialPageRoute(builder: (context) =>  const Role()));
          //             },
          //             )
          //           ),
          //         ]),
          //   ],),
          // ),

          //login and welcome message
                  const Flexible(
                    flex: 2,                  //custom paint takes a flex of 3
                    fit: FlexFit.loose, 
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
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
                      ),
                    ),
                  ),
                 

              Flexible(
                flex: 5,                  //custom paint takes a flex of 3
                fit: FlexFit.loose, 
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
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
                ),
              ),


          

          Flexible(
            flex: 2,                  //custom paint takes a flex of 3
            fit: FlexFit.loose,       //occupies only space it needs and at most the space of the parent.
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const SellerBottomNavigation()
                        ),);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffb80f0a),        //background color of button
                    foregroundColor: Colors.white,     // text color
                    padding: EdgeInsets.symmetric(
                      horizontal: buttonWidth, 
                      vertical: buttonHeight,
                      ),
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
                            builder: (BuildContext context) => const SignUpSeller()
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
                  ],),
              ],
            ),
          )
        ],
         
      ),
    );
  }
}