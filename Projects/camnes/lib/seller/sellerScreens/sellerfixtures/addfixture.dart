
import 'dart:io';   //provides classes and utilities for performing input and output functionalities. eg uploading an image
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddFixture extends StatefulWidget {
  const AddFixture({super.key});

  @override
  State<AddFixture> createState() => _AddFixtureState();
}

class _AddFixtureState extends State<AddFixture> {


//uploading an image from your gallery or the camera.
  XFile ? image;

  final ImagePicker picker = ImagePicker();

  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);
  

  setState(() {
    image = img;
  });
  }



  @override
  Widget build(BuildContext context) {


////TextEditingController class notifies listeners when changes are made to a text field. Listeners can then read the text, etc
  
    var fixturenameController = TextEditingController();
    var fixturepriceController = TextEditingController();
   // var fixtureimageController = TextEditingController();



    //FIXTURE NAME FIELD
    Widget fixtureName() {
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
            return "Enter the Fixture's Name";
          }
          return null;
        },
        controller: fixturenameController,
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        ),
      )
      );
    }
    

    //PRICE FIELD
    Widget fixturePrice() {
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
            return "Enter the Fixture's Price";
          }
          return null;
        },
        controller: fixturepriceController,
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
         // hintText: "Enter your phone number",
        ),
      )
      );
    }
    


    //FIXTURE IMAGE FIELD
    //popup to choose upload from gallery or camera.
    void chooseUpload() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            content: SizedBox(
              height: MediaQuery.of(context).size.height / 6,
              child: Column(
                children: [

                  //from gallery
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.gallery);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffb80f0a),        //background color of button
                    foregroundColor: Colors.white,     // text color
                    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical:15.0 ),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.image),
                      SizedBox(width: 20.0),
                      Text('From Gallery'),
                    ],)
                  ),

                  const SizedBox(height: 30.0),

                  //from camera
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.camera);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffb80f0a),        //background color of button
                    foregroundColor: Colors.white,     // text color
                    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical:15.0 ),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.camera),
                      SizedBox(width: 20.0),
                      Text('From Camera'),
                    ],)
                  ),
                ],)
            )
          );
        }
      );
    }


    return Scaffold(
    resizeToAvoidBottomInset : true,
    appBar: AppBar(
      iconTheme: const IconThemeData(color: Colors.white),  //changing default back arrow icon color.
      title: const Text(
        'Add Fixture',
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
            
            //fixture name
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Enter the fixture's name:",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500
                )),
                const SizedBox(height: 10.0),
                 fixtureName(),
              ],),

              const SizedBox(height: 30.0),

              //price
               Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Enter the Fixture's price:",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500
                )),
                const SizedBox(height: 10.0),
                fixturePrice(),
              ],),

               const SizedBox(height: 30.0),

              //fixture image
              image != null          //display when an image is present.
                ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.file(
                      File(image!.path),
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      ),
                    ),
                  )
                
              //display when an image is absent.
              : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 300.0,
                      width: 370.0,
                      decoration: BoxDecoration (
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(2, 1),
                            blurRadius: 2,
                            color: Colors.grey,
                          )],
                          border: Border.all(
                            color: Colors.grey,
                            width: 1)
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.cloud_upload_outlined,
                            size: 40.0,
                            ),
                          Text('Add an Image'),
                        ],)

                  ),
                ],
              ),


              const SizedBox(height: 15.0),
              
              //image pop up button
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   ElevatedButton(
                      onPressed: () {
                       chooseUpload();             //popup displaying when upload button clicked.
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: const Color(0xffb80f0a),     // text color
                        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical:5.0 ),
                      ),
                      child: const Row(
                        children: [
                          Text(
                            'UPLOAD',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0 ),
                              ),

                          Icon(Icons.upload),
                        ],
                      )),
                 ],
               ),


              const SizedBox(height: 45.0),

              //save button. When clicked, pops current page and returns to previous page
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                  onPressed: () {
                    Navigator.pop;
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffb80f0a),        //background color of button
                    foregroundColor: Colors.white,     // text color
                    padding: const EdgeInsets.symmetric(horizontal: 120.0, vertical:15.0 ),
                  ),
                  child: const Text(
                    'ADD FIXTURE',
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