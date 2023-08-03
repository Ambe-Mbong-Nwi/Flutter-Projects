import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Moi(),
 ));
}

// class Moi extends StatelessWidget {
//   const Moi({super.key});

//   @override
//   Widget build(BuildContext context) {
    // return Scaffold(
    //   backgroundColor: Colors.amberAccent,  //back color for entire body
    //   appBar: AppBar(
    //     title: const Text(
    //       "Ambe's ID Card",
    //       style: TextStyle(color: Colors.black,)),    //changing te title text color
    //     centerTitle: true,      //centralising title
    //     backgroundColor: Colors.amber,        //back color for appbar
    //     elevation: 0.0,       //removing the default drop shadow.
    //   ),

    //   body: const Padding(
    //     padding: EdgeInsets.fromLTRB(30, 40.0, 30, 10.0),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: const <Widget>[
    //         Center(
    //           child: CircleAvatar(           //so avatar is in a circled box
    //             backgroundImage: AssetImage('assets/avatar.jpeg'),
    //             radius: 40.0,           //used to increase the avatar size
    //           ),
    //         ),
    //         Divider(          //used to seperate avator from rest of info below
    //           height: 60.0,           //this is the seperated height but the divider line still remains thin
    //           color: Colors.red,
    //         ),
    //         Text(
    //           'NAME',
    //           style: TextStyle(
    //             color: Colors.green,
    //             letterSpacing: 4.0,
    //           ),
    //         ),
    //         SizedBox(height: 10.0),     //good way to add space between two widgets
    //          Text(
    //           'ABONG',
    //           style: TextStyle(
    //             color: Colors.black,
    //             letterSpacing: 4.0,
    //             fontSize: 30,
    //             fontWeight: FontWeight.bold,
    //           ),
    //         ),
    //         SizedBox(height: 20.0),  
    //         Text(
    //           'NATIONALITY',
    //           style: TextStyle(
    //             color: Colors.green,
    //             letterSpacing: 4.0,
    //           ),
    //         ),
    //         SizedBox(height: 10.0),     //good way to add space between two widgets
    //          Text(
    //           'CAMEROONIAN',
    //           style: TextStyle(
    //             color: Colors.black,
    //             letterSpacing: 4.0,
    //             fontSize: 30,
    //             fontWeight: FontWeight.bold,
    //           ),
    //         ),
    //         SizedBox(height: 20.0),
    //         Text(
    //           'EMAIL',
    //           style: TextStyle(
    //             color: Colors.green,
    //             letterSpacing: 4.0,
    //           )
    //         ),
    //         SizedBox(height: 10.0),
    //         Row(
    //           children: [
    //             Icon(
    //               Icons.email,
    //               color: Colors.black,
    //             ),
    //             SizedBox(width: 10.0),
    //             Text(
    //               'abongnwi19@gmail.com',
    //               style: TextStyle(
    //                 color: Colors.black,
    //                 fontSize: 20.0,
    //                 letterSpacing: 0.2,
    //               )
    //             )
    //           ],
    //         )
    //       ],)
    //   )
    // );
//   }
// }


//converting the above to a stateful widget. You can just click on the widget, then on the lightbulb and make the conversion.


class Moi extends StatefulWidget {
  const Moi({super.key});

  @override
  State<Moi> createState() => _MoiState();  //linking created object below with the above widget
}

class _MoiState extends State<Moi> {     //building state object. ie when state changes it rebuilds and displays the current state value

//declaring variable whic will be used dynamically. use hot restart when state changes
int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,  //back color for entire body
      appBar: AppBar(
        title: Text(
          "Ambe's ID Card",
          style: TextStyle(color: Colors.black,)),    //changing te title text color
        centerTitle: true,      //centralising title
        backgroundColor: Colors.amber,        //back color for appbar
        elevation: 0.0,       //removing the default drop shadow.
      ),

      floatingActionButton: FloatingActionButton(     //button at right bottom of screen
        onPressed: () {
          setState(() {         //setstate func triggers build everytime with the present state.
            age += 1;           //ie when the button is clicked, increment age by 1
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.deepOrangeAccent[700],    //[] gives color intensity
        ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40.0, 30, 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(           //so avatar is in a circled box
                backgroundImage: AssetImage('assets/avatar.jpeg'),
                radius: 40.0,           //used to increase the avatar size
              ),
            ),
            Divider(          //used to seperate avator from rest of info below
              height: 60.0,           //this is the seperated height but the divider line still remains thin
              color: Colors.red,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.green,
                letterSpacing: 4.0,
              ),
            ),
            SizedBox(height: 10.0),     //good way to add space between two widgets
             Text(
              'ABONG',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 4.0,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),  
            Text(
              'AGE',
              style: TextStyle(
                color: Colors.green,
                letterSpacing: 4.0,
              ),
            ),
            SizedBox(height: 10.0),     //good way to add space between two widgets
             Text(
             // '1',
             '$age',                        //outputing age value dynamically
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 4.0,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),  
            Text(
              'NATIONALITY',
              style: TextStyle(
                color: Colors.green,
                letterSpacing: 4.0,
              ),
            ),
            SizedBox(height: 10.0),     //good way to add space between two widgets
             Text(
              'CAMEROONIAN',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 4.0,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'EMAIL',
              style: TextStyle(
                color: Colors.green,
                letterSpacing: 4.0,
              )
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                SizedBox(width: 10.0),
                Text(
                  'abongnwi19@gmail.com',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    letterSpacing: 0.2,
                  )
                )
              ],
            )
          ],)
      )
    );
  }
}


