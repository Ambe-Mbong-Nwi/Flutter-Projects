import 'package:camnes/shared/newpassword.dart';
import 'package:flutter/material.dart';

class CodeVerification extends StatelessWidget {
  const CodeVerification({super.key});

  @override
  Widget build(BuildContext context) {

     //TextEditingController class notifies listeners when changes are made to a text field. Listeners can then read the text, etc
    var emailController = TextEditingController();


    Widget buildBox() {
      return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        border: Border.all(
        color: Colors.black,
        width: 0.5)
      ),
      child: TextFormField(
        // validator: (value){
        //   if(value == null || value.isEmpty) {
        //     return "Enter your email";
        //   }
        // },
        controller: emailController,
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
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
          'Verification',
        ),
      ),


      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
        
                const SizedBox(height: 30.0),
        
                Center(
                  child: Column(
                    children: [
        
                      const Image(
                      image: AssetImage('assets/images/otp.png'),
                      width: 300.0,
                      ),
        
                      const SizedBox(height: 20.0),
        
                      const Text(
                        'Please enter the code sent to',
                        style: TextStyle(
                          fontSize: 22.0,
                        )),
        
                      const Text(
                        'ambe*******@gmail',
                        style: TextStyle(
                          fontSize: 22.0,
                        )),
        
                      const SizedBox(height: 30.0),
        
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          buildBox(),
                          buildBox(),
                          buildBox(),
                          buildBox(),
                          buildBox(),
                        ],),

                      const SizedBox(height: 40.0),

                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Didn't receive code?",
                            style: TextStyle(
                            fontSize: 18.0,
                          )),
                          SizedBox(width: 10.0),
                          Text(
                            "Resend",
                            style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xffb80f0a),
                          )),
                        ],
                      ),
                    ],
                  )
                ),
                
                const SizedBox(height: 55.0),
                
        
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const NewPassword()
                      ),);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffb80f0a),        //background color of button
                  foregroundColor: Colors.white,     // text color
                  padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical:15.0 ),
                ),
                child: const Text(
                  'Verify',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0 ),)),
              
            ]
             
          ),
        ),
      ),
      );
    
  }
}