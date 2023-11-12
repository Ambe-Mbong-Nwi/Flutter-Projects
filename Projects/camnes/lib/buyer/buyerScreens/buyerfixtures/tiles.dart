import 'package:flutter/material.dart';

import '../../../shared/fixture.dart';
import '../../buyercards/productcard.dart';

class Tiles extends StatefulWidget {
  const Tiles({super.key});

  @override
  State<Tiles> createState() => _TilesState();
}

class _TilesState extends State<Tiles> {


  List<Fixture> fixtures = [
    Fixture(name: '40x40 floor tiles', price: 1000, image: const AssetImage('assets/images/tiles.jpeg')),
    Fixture(name: '40x40 floor tiles', price: 1000, image: const AssetImage('assets/images/tiles.jpeg')), 
    Fixture(name: '40x40 floor tiles', price: 1000, image: const AssetImage('assets/images/tiles.jpeg')),
    Fixture(name: '40x40 floor tiles', price: 1000, image: const AssetImage('assets/images/tiles.jpeg')), 
    Fixture(name: '40x40 floor tiles', price: 1000, image: const AssetImage('assets/images/tiles.jpeg')),
    Fixture(name: '40x40 floor tiles', price: 1000, image: const AssetImage('assets/images/tiles.jpeg')), 
   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xffb80f0a),
        centerTitle: true,
        title: const Text(
          'Wall and Floor Tiles'
        ),
      ),


       body: Scrollbar(             //adds scrollbar for easy scrolling.
         child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Wrap(             //widget ensures cards wrap to the next line when they exceed the line.
                  runSpacing: 30.0,                 //vertical spacing
                  spacing: 15.0,                    //horizontal spacing
                  children: fixtures.map((fixture) => FixtureCard(    //for every newnotification in the newnotifications list, display using the notification card. 
                    fixture: fixture,
                    // delete: () {              //defining the delete func which will be passed as a parameter to the stles card widget class.
                    //   setState(() {
                    //     newsuppliers.remove(newsupplier);      //removing a new thing from its list
                    //   });
                    // }
                  )).toList(),        //children requires a list of output, so your changing all the above to a list of text widgets.Normally we have an iterable as outpu, then u transform it to a list
       
       
                  
          ),
              ],
            ),
       
          
             )
           ),
       ),
    );
  }
}