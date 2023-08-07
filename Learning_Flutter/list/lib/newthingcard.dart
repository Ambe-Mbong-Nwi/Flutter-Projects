//when using delete here we have to do that in the stateful widget bcos stateless widgets cnnot tamper with data.


import 'package:flutter/material.dart';
import 'newthings.dart';

class NewthingCard extends StatelessWidget {
  // const NewthingCard({                   //unecessary for now
  //   super.key,
  // });

  //NB: u can use data in a stles widget but add FINAL keyword meaning the value will not change.
  final Newthing newthing;                  //newthing variable passed in as a named parameter above.
  final void Function() delete;                //taking in delete func defined in main as a parameter. 
  NewthingCard({ required this.newthing, required this.delete });        //constructor. Receive delete parameter in the constructor

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,   //so cards stretc horizontally filling page
          children: [
            Text(
              newthing.text,           //u dont need to put the $ and {} bcos we are not outputing it in a string. we just use the above strings directly
              style: TextStyle(
                fontSize: 18.0,
                color: const Color.fromARGB(255, 10, 80, 116),
              ),
            ),
            SizedBox(height: 6.0),
             Text(
              newthing.author,        //u dont need to put the $ and {} bcos we are not outputing it in a string. we just use the above strings directly
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.amber,
              ),
            ),
            SizedBox(height: 8.0),
            ElevatedButton.icon(
              onPressed: delete, //() {
              //   delete(newthing);       //delete works bcos it is a defined func in stful widget passed as parameter in this stles widget
              // },
              label: Text('Delete'),
              icon: Icon(Icons.delete),
            )
            
          ],),
      )
    );
  }
}