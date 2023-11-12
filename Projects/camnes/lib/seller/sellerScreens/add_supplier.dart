import 'package:flutter/material.dart';

class AddSupplier extends StatelessWidget {
  const AddSupplier({super.key});

  @override
  Widget build(BuildContext context) {


////TextEditingController class notifies listeners when changes are made to a text field. Listeners can then read the text, etc
     //TextEditingController class notifies listeners when changes are made to a text field. Listeners can then read the text, etc
    var fixtureController = TextEditingController();
    var nameController = TextEditingController();
    var phoneController = TextEditingController();
    var emailController = TextEditingController();
    var noteController = TextEditingController();


    //FULLNAME FIELD
    Widget buildFixture() {
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
            return "Enter the fixture supplied";
          }
          return null;
        },
        controller: fixtureController,
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          //hintText: "Enter your Fullname",
        ),
      )
      );
    }
    


    //USERNAME FIELD
    Widget buildName() {
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
            return "Enter the Company's name";
          }
          return null;
        },
        controller: nameController,
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        //  hintText: "Enter your username",
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
            return "Enter the Company's phone number";
          }
          return null;
        },
        controller: phoneController,
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
         // hintText: "Enter your phone number",
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
            return "Enter the Company's email";
          }
          return null;
        },
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          //hintText: "Enter your email",
        ),
      )
      );
    }
    

    //PASSWORD FIELD
    Widget buildNote() {
      return Container(
      height: 100,
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
            return "Note Details";
          }
          return null;
        },
        controller: noteController,
        keyboardType: TextInputType.multiline,
        maxLines: null,
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
         // hintText: "Enter your password",
        ),
      )
      );
    }


    return Scaffold(
    resizeToAvoidBottomInset : true,
    appBar: AppBar(
      iconTheme: const IconThemeData(color: Colors.white),  //changing default back arrow icon color.
      title: const Text(
        'Add Supplier',
        style: TextStyle(
          color: Colors.white,
        )
      ),
      backgroundColor: const Color(0xffb80f0a),
      centerTitle: true,
    ),


    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            //fixture
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Enter the fixture supplied:',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500
                )),
                const SizedBox(height: 10.0),
                buildFixture(),
              ],),

              const SizedBox(height: 30.0),

              //name
               Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Enter the Company's name:",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500
                )),
                const SizedBox(height: 10.0),
                buildName(),
              ],),

               const SizedBox(height: 30.0),

              //phone
               Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Enter the Company\'s phone number:',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500
                )),
                const SizedBox(height: 10.0),
                buildPhoneNumber(),
              ],),

               const SizedBox(height: 30.0),

              //email
               Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Enter the Company\'s  email address:',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500
                )),
                const SizedBox(height: 10.0),
                buildEmail(),
              ],),

               const SizedBox(height: 30.0),

              //note
               Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Note Details of the transction:',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500
                )),
                const SizedBox(height: 10.0),
                buildNote(),
              ],),

              const SizedBox(height: 30.0),

              //save button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffb80f0a),        //background color of button
                    foregroundColor: Colors.white,     // text color
                    padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical:15.0 ),
                  ),
                  child: const Text(
                    'SAVE',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0 ),)),
                ],
              ),
    
            
          ],
          
        )
        ),
    )
    );
  }
}