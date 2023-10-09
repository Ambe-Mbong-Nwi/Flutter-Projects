//stful widget lifecycle: initstate(), build(), and dispose()
//initState() - called once when widget is created
//build() - builds widget tree every time we use setstate()
//dispose() - used when widget or state is removed from tree.
//asynchronous code represents an action that starts now and finishes sometime in the future so it is non-blocking so the rest of the code should continue.

import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {


// //asynchronous code in action
// //we can use await only in {} but we still don't block the rest of the code from executing.
//   void getData() async {

//     //simulate network request for a username
//     //ie wait for 6 seconds and fire the function after that which is the print statement.
//     String username = await Future.delayed(Duration(seconds: 6), () {    //await meaning it must finish executing before going to the next lines.
//       return "Ambe";
//     });
//   //the above waits for the username value then asigns it to the variable username. Then the code continues.


//  //simulate network request for a bio using the username above.
//     String bio = await Future.delayed(Duration(seconds: 2), () {    //await meaning it must finish executing before going to the next lines.
//       return "I am an engineering student. Nice to meet you!!!";
//     });

//     print('$username - $bio');
//   //SUMMARY: We wait for the username to be assigned, then the bio, then print them.
//   //Applicable with APIs.
//   }


// //fires once when we first load up the widget
// @override  //override any init function found in this state class.
//   void initState() {
//     super.initState();    //run the initial function we are overriding
//     // print("init state");
//     getData();              //callx func so it runs when widget is loaded.
//     print("i display and don't wait for the async code");
//   }

int counter = 3;


//fires everytime we need to build the widget tree
  @override
  Widget build(BuildContext context) {
    print('build state ran');
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 191, 168, 231),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 238, 218, 241),
        title: Text(
          'Choose a Location',
          style: TextStyle(
            color: Colors.deepPurple,
          )),
        centerTitle: true,
      ),
      body: ElevatedButton(
        onPressed: () {
          setState(() {                 //everytime we increment counter using this, the build func builds the widget tree.
            counter += 2;               //incrementing counter by 2
          });
        },
        child: Text('Number $counter now.')
      )
    );
  }
}