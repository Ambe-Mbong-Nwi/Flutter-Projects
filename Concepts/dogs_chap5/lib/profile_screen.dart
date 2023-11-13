//stack widget is used to place widgets on each other eg backgroind img for the dog img
//BUT u have to provide your own layout widgets. align, transform, positioned widgets
//column and row widgets are used to display lists of widgets and give the layout for the widgets as their names signify.
//the above have properties crossaxisalignment and mainaxisalignment depending on the row or column widget. 
//ie the main axis for row is x-axis and for column is y-axis. u have start, centered, end, evenly-spaced, etc

import 'package:dogs/star.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      body: Stack(children: [         //stack widget so i can stack dog img on beach img
        Image.asset('assets/beach.jpg'),      //bottom layer of the stack
        Transform.translate(      //to translate the child widget which is column by a specific offset parameter which specifies the amount of vertical and horizontal translation
          offset: const Offset(0, 100),     //ie position 100pixels down from its original position.
          child: const Column(       //using column widget to place elements on the screen. 
            children: [
              ProfileImage(),     //calling the diff classes where our information has been entered. the classes have been declared below
              ProfileDetails(),
              ProfileActions(),
        ],
        ),
        ),
      ]),
    );
  }
}

//displaying the image of the dog
class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});
  @override
  Widget build(BuildContext context) {
      return ClipOval(    //oval img  
        child: Image.asset(
          width: 200,
          height: 200,
          'assets/dog.jpg',
          fit: BoxFit.fitWidth,   //so img fits perfectly in oval circle.
        ),
      );
  }
}

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});
  @override
  Widget build(BuildContext context) {
      return Padding(   //padding seperating this widget from the img widget
        padding: const EdgeInsets.all(20.0), 
        child: Column(      //enabling all elements to be placed in a column.
          crossAxisAlignment: CrossAxisAlignment.start,   //makes sure text below is left aligned. 
          children: [
            const Text(
              'Wolfram Barkovich',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
            ),
            const StarRating(
              value: 5,
            ),
            _buildDetailsRow('Age', '4'),
            _buildDetailsRow('Status', 'Good Boy'),
          ],
          ),
      );
  }

  Widget _buildDetailsRow(String heading, String value) {
    return Row(
      children: [
        Text(
          '$heading: ',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(value),
      ],
    );
  }

}


//placing icons for the different actions the dog can take
class ProfileActions extends StatelessWidget {
  const ProfileActions({super.key});
  @override
  Widget build(BuildContext context) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _buildIcon(Icons.restaurant, 'Feed'),
          _buildIcon(Icons.favorite, 'Pet'),
          _buildIcon(Icons.directions_walk, 'Walk'),
        ]
      );
  }

Widget _buildIcon(IconData icon, String text) {
  return Padding(
  padding: const EdgeInsets.all(20.0),
  child: Column(
    children: <Widget>[
      Icon(icon, size: 40),
      Text(text),
    ],
    ),
    );
}

}