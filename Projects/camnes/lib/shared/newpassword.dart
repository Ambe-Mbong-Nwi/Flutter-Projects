import 'package:camnes/shared/role.dart';
import 'package:flutter/material.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    //TextEditingController class notifies listeners when changes are made to a text field. Listeners can then read the text, etc
    var passwordController = TextEditingController();
    var confirmPController = TextEditingController();


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
            return "Password";
          }
          return null;
        },
        controller: passwordController,
        decoration: const InputDecoration(
          border: InputBorder.none,
         contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          hintText: "Password",
        ),
      )
      );
    }
    

    Widget buildConfirmP() {
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
            return "Confirm password";
          }
          return null;
        },
        controller: confirmPController,
        decoration: const InputDecoration(
          border: InputBorder.none,
         contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          hintText: "Confirm password",
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
          'Create New Password',
        ),
      ),


      body: SingleChildScrollView(
        child: Column(
          children: [

              const SizedBox(height: 30.0),

              const Center(
                child: Image(
                image: AssetImage('assets/images/login.png'),
                width: 330.0,
                )
              ),
              
              const SizedBox(height: 10.0),

              const Text(
                "Enter your new password",
                style: TextStyle(
                fontSize: 18.0,
              )),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [

                    const SizedBox(height: 20.0),

                    buildPassword(),

                    const SizedBox(height: 30.0),

                    buildConfirmP()
                  ]
              )
              ),
            

            const SizedBox(height: 80.0),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const Role()
                    ),);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffb80f0a),        //background color of button
                foregroundColor: Colors.white,     // text color
                padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical:15.0 ),
              ),
              child: const Text(
                'Confirm',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0 ),)),
          ]
           
        ),
      ),
      );
    
  }
}