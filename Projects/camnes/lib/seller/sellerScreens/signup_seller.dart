import 'package:camnes/seller/sellerScreens/seller_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:camnes/clipper/clipper1.dart';
import 'package:camnes/clipper/clipper2.dart';

class SignUpSeller extends StatelessWidget {
  const SignUpSeller({super.key});

  @override
  Widget build(BuildContext context) {

    //TextEditingController class notifies listeners when changes are made to a text field. Listeners can then read the text, etc
    var fullnameController = TextEditingController();
    var usernameController = TextEditingController();
    var phoneController = TextEditingController();
    var emailController = TextEditingController();
    var passwordController = TextEditingController();


    //FULLNAME FIELD
    Widget buildFullname() {
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
            return "Enter your Fullname";
          }
          return null;
        },
        controller: fullnameController,
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          hintText: "Enter your Fullname",
        ),
      )
      );
    }
    


    //USERNAME FIELD
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
    

    //PHONE NUMBER FIELD
    Widget buildPhoneNumber() {
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
        keyboardType: TextInputType.number,
        validator: (value){
          if(value == null || value.isEmpty) {
            return "Enter your phone number";
          }
          return null;
        },
        controller: phoneController,
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          hintText: "Enter your phone number",
        ),
      )
      );
    }
    

    //EMAIL FIELD
    Widget buildEmail() {
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
            return "Enter your email";
          }
          return null;
        },
        controller: emailController,
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          hintText: "Enter your email",
        ),
      )
      );
    }
    

    //PASSWORD FIELD
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
                        Navigator.pop(context);
                      },
                      )
                    ),

                    
                  const Positioned(
                    top: 220,
                    left: 30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Create Account',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
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
                   // const SizedBox(height: 20.0),
                    buildFullname(),
                    const SizedBox(height: 20.0),
                    buildUsername(),
                      const SizedBox(height: 20.0),
                    buildPhoneNumber(),
                      const SizedBox(height: 20.0),
                    buildEmail(),
                      const SizedBox(height: 20.0),
                    buildPassword(),
                    const SizedBox(height: 8.0),
                  ]
              )
              )
            ],),
            const SizedBox(height: 60.0),
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
                padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical:15.0 ),
              ),
              child: const Text(
                'CREATE ACCOUNT',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0 ),)),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account?",
                 style: TextStyle(
                   fontWeight: FontWeight.w300,
                    fontSize: 17,
                          )  
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const SignUpSeller()
                        ),);
                  }, 
                  child: const Text(
                    'Login',
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