import 'package:flutter/material.dart';

import '../../../shared/fixture.dart';
import '../../buyercards/productcard.dart';

class KitchenSink extends StatefulWidget {
  const KitchenSink({super.key});

  @override
  State<KitchenSink> createState() => _KitchenSinkState();
}

class _KitchenSinkState extends State<KitchenSink> {
  
   List<Fixture> fixtures = [
    Fixture(name: 'Kitchen Sink', price: 1000, image: const AssetImage('assets/images/sinkone.jpeg')),
    Fixture(name: 'Kitchen Sink', price: 1000, image: const AssetImage('assets/images/sinktwo.jpeg')),
    Fixture(name: 'Kitchen Sink', price: 1000, image: const AssetImage('assets/images/sinkone.jpeg')),
    Fixture(name: 'Kitchen Sink', price: 1000, image: const AssetImage('assets/images/sinktwo.jpeg')),
    Fixture(name: 'Kitchen Sink', price: 1000, image: const AssetImage('assets/images/sinkone.jpeg')),
    Fixture(name: 'Kitchen Sink', price: 1000, image: const AssetImage('assets/images/sinktwo.jpeg')),
    Fixture(name: 'Kitchen Sink', price: 1000, image: const AssetImage('assets/images/sinkone.jpeg')),
    Fixture(name: 'Kitchen Sink', price: 1000, image: const AssetImage('assets/images/sinktwo.jpeg')),
   
   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xffb80f0a),
        centerTitle: true,
        title: const Text(
          'Kitchen Sinks'
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