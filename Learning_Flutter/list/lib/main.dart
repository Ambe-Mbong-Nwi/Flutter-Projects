//using map function to map through a list of data and output it
//map func cycles through a list of data. for each data it performs a func

import 'package:flutter/material.dart';
import 'newthings.dart';
import 'newthingcard.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

//data to be cycled through and outputed.
// List<String> newthings = [
//   'AI and tech are here to stay my freinds, don\'t be left out.',
//   'Religion and good ethics are slowly losing their place in the genz generation.',
//   '\'What was meant to be will be.\' What is your take on that statement?',
//   'Learning never ends. Keep that in mind or you will be left behind.',
//   'Goodbye friends see u in the future!!!'
// ];


//USING CLASS, CONSTRUCTOR AND NAMED PARAMETERS CREATED FROM THE NEWTHINGS FILE
List<Newthing> newthings = [              //list takes the newthing class as its data type
  Newthing(text: 'AI and tech are here to stay my freinds, don\'t be left out.', author: 'Abii'),
  Newthing(text: 'Religion and good ethics are slowly losing their place in the genz generation.', author: 'Afa'),
  Newthing(text:  '\'What was meant to be will be.\' What is your take on that statement?', author: 'Miya'),
  Newthing(text:  'Learning never ends. Keep that in mind or you will be left behind.', author: 'Melvis'),
  Newthing(text: 'Goodbye friends see u in the future!!!', author: 'moi')
];


//using CARDS to output all newthings.
//return type, func name, taking in a newthing
//its better to use the below as a stles widget so we can transform it to a stles widget and use an instance any time we want
// Widget newthingTemplate(newthing){
//     return NewthingCard(newthing: newthing);      //passing in newthing as a named parameter
// }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 10, 80, 116),
      appBar: AppBar(
        title: Text('Food for Thought',
        style: TextStyle(
        color: Colors.white, 
          )),  //title text color
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 10, 98, 170),   //appbar background color
        ),
        body: Column(

          children: newthings.map((newthing) => NewthingCard(
            newthing: newthing,
            delete: () {                  //defining the delete func which will be passed as a parameter to the stles card widget class.
              setState(() {
                newthings.remove(newthing);       //removing a new thing from its ist
              });
            }
            )).toList(),       //does same thing as below 
          //for each item in the list, map through and cycle through and fire a func for each one. in the func take the individual newthing then call the newthingTemplate func and pass in the newthing. it returns a template with a card.

          // children: newthings.map((newthing) {    //map/cycle through the newthings array. 
          //   //return Text(newthing);      //For each newthing, return it as a text widget.
          //   return Text('${newthing.author}  ${newthing.text}');    //outputing the author and text prperties of the newthing
          // }).toList(),    //children requires a list of output, so your changing all the above to a list of text widgets.Normally we have an iterable as outpu, then u transform it to a list
          )
    );
  }
}


//sent to an individual file so it can be used later.

// class NewthingCard extends StatelessWidget {

//   //NB: u can use data in a stles widget but add FINAL keyword meaning the value will not change.
//   final Newthing newthing;                  //newthing variable passed in as a named parameter above.
//   NewthingCard({ required this.newthing });        //constructor

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.all(16),
//       child: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,   //so cards stretc horizontally filling page
//           children: [
//             Text(
//               newthing.text,           //u dont need to put the $ and {} bcos we are not outputing it in a string. we just use the above strings directly
//               style: TextStyle(
//                 fontSize: 18.0,
//                 color: const Color.fromARGB(255, 10, 80, 116),
//               ),
//             ),
//              Text(
//               newthing.author,        //u dont need to put the $ and {} bcos we are not outputing it in a string. we just use the above strings directly
//               style: TextStyle(
//                 fontSize: 15.0,
//                 color: Colors.amber,
//               ),
//             ),
//               SizedBox(height: 6.0),
             
            
//           ],),
//       )
//     );
//   }
// }