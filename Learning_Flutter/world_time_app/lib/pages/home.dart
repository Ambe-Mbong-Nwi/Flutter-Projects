import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {


    //data = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: SafeArea(     //safearea moves the child widget down to a safearea on the screen.
        child: Column(
          children: <Widget>[
            ElevatedButton.icon(
              onPressed: () {                 //when pressed helps u navigate to the location page.
                Navigator.pushNamed(context, '/location');        //push location screen on this screen
              },
              icon: Icon(Icons.edit_location),
              label: Text('Edit your Location'),)
          ],)),    

    );
  }
}