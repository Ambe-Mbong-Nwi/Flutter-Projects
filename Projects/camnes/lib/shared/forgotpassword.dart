import 'package:camnes/shared/codeverification.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {

     //TextEditingController class notifies listeners when changes are made to a text field. Listeners can then read the text, etc
    var emailController = TextEditingController();


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
    
    

    return Scaffold(

      appBar: AppBar(
        //automaticallyImplyLeading: false,                 //removes automatic back arrow
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xffb80f0a),
        centerTitle: true,
        title: const Text(
          'Forgot Password',
        ),
      ),


      body: SingleChildScrollView(
        child: Column(
          children: [

              const SizedBox(height: 30.0),

              const Center(
                child: Image(
                image: AssetImage('assets/images/reset.png'),
                width: 330.0,
                )
              ),
              
              const SizedBox(height: 30.0),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [

                    const SizedBox(height: 70.0),

                    buildEmail(),
                  ]
              )
              ),
            

            const SizedBox(height: 110.0),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const CodeVerification()
                    ),);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffb80f0a),        //background color of button
                foregroundColor: Colors.white,     // text color
                padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical:15.0 ),
              ),
              child: const Text(
                'Send Code',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0 ),)),
            const SizedBox(height: 10.0),
            
          ]
           
        ),
      ),
      );
    
  }
}