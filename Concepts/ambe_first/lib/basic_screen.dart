//setting up a Scaffold widget. provides basic structure for android screen.Cupertino for iOS.
//add previous widget created to here but bring it under control using AspectRatio and Center Widgets.
//Scaffold is recomended widget used to create screens.
//widget that dont begin with scaffold are intended to be components used to create screens.

import 'package:flutter/material.dart';
//import './immutable_widget.dart';
import './text_layout.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(     //start every new screen with this for layout consistency.
      appBar: AppBar(   //platform aware widget which renders differentlt on android and ios.
        backgroundColor: Colors.blue,
        centerTitle: true,        //centers the below title.
        title: const Text("Ambe's first"),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.edit),
          ),
        ],
      ),
     // body: Center(       //center widget centers child both horizontally and vertically
        body: Column(
          
          // children: const [
          //   AspectRatio(      //sizes a widget following a specific aspect ratio
          //    aspectRatio: 1.0,        //sets height equal to largest width in its context.
          //    child: ImmutableWidget(),
          // ),


// adding an image
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Semantics(      //widget provides accessibility information for users with disabilities eg screen readers
              image: true,
              label: 'My dream beach',
              child: Image.asset('assets/beach.jpg')),
            const TextLayout(),
          ],
          ),
          drawer: Drawer(
            child: Container(
              color: Colors.lightBlue,
                child: const Center(
                child: Text("I'm a drawer"),)
            )
          )
    );
  }
}