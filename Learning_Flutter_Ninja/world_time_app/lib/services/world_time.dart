//import 'dart:html';

import 'package:http/http.dart';
import 'dart:convert';    //allows us convert json string we get from the http request to a format we can work with



class WorldTime {
  late String location;    //location name for the UI
  late String time;        //the time in that location
  late String flag;        //url to an asset flag icon
  late String url;         //location url for api endpoint

  //creating the constructor
  WorldTime({ required this.location, required this.flag, required this.url });


//to use await keyword in front of custom func we create, we add 'Future' keyword and place void in <>
//this tells dart that the func will temporarily return a placeholder value ie future, until the func is complete. at that point it returns the return type void and then everything can move on
Future<void> getTime() async {
    
    
    try {
        Response response = await get(Uri.parse("http://worldtimeapi.org/api/timezone/$url"));    //endpoint that returns some JSON data.
    Map data = jsonDecode(response.body);       //usx the jsondecode, we now have json as a map. We store it in the variable data of type Map.
    // print(data);

    //getting properties from the data
    String datetime = data['datetime'];
    String utc_offset = data['utc_offset'].substring(1,3);  //cutting string from +01:00 to 01
    // print(datetime);
    // print(utc_offset);

    //formula for time = datetime + utc_offset.
    // creating a DateTime object stored in a variable called now, of type DateTime.
    DateTime now = DateTime.parse(datetime);    //parse() method takes in string and converts into DateTime format.
    now = now.add(Duration(hours: int.parse(utc_offset)));    //parse() method converts string to int, then adds the value to the datetime stored in the variable now and stores to the new instance of the now variable.
    

//set the time property
    time = now.toString();
    }
    catch (e) {
      print("caught error: $e");
      time = 'could not get time data';
    }

    }
  
}

// //creating an instance of the class. We can then use it to get time in the future using the getTime() method above. 
// //data type, name of variable = constructor instance
// WorldTime instance = WorldTime(location: "Cameroon", flag: "Cameroon.png", url: "Africa/Douala");





//   //asynchronous code in action
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






//USING HTTP REQUEST AND API. Read about async and await above.
//NB: explicitely write Uri.parse bcos funcs now explicitely use it.
//store the info gotten from the api in the Response object.
//NB: you cannot get individual properties of the response object because the output is a string even though it looks like an object or a map.
//soln:The JSON string above can be converted using a function called JSON decode. So u can now get individual properties.

  // void getData() async {
  
  //   Response response = await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1')); //endpoint that returns some JSON data.
  //   // print(response.body);       //the actual data we need is found in the api body. This prints on the terminal.
  //   Map data = jsonDecode(response.body);     //usx the jsondecode, we now have json as a map. We store it in the variable data of type Map.
  //   print(data);
  //   print(data['title']);           //printing the title property
  // }


  // @override
  // void initState() {
  //   super.initState();
  //   getData();
  // }




//check the explanation above.
//USING HTTP REQUEST AND API. Read about async and await above.
//NB: explicitely write Uri.parse bcos funcs now explicitely use it.
//store the info gotten from the api in the Response object.
//NB: you cannot get individual properties of the response object because the output is a string even though it looks like an object or a map.
//soln:The JSON string above can be converted using a function called JSON decode. So u can now get individual properties.
  