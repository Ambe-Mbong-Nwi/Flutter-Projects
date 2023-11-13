import 'package:flutter/material.dart';
import 'package:world_time_app/services/world_time.dart';


class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

String time = 'loading';    //initial value of time when screen is loading and reaching out to api


//creating an instance of the worldtime class. To use await keyword, we must use async func
  void setupWorldTime() async {
    //creating an instance of the class. We can then use it to get time in the future using the getTime() method above. 
    //data type, name of variable = constructor instance
    WorldTime instance = WorldTime(location: "Cameroon", flag: "Cameroon.png", url: "Africa/Douala");
    await instance.getTime();   //place await bcos the print below requires time property. to get it we need to reach put to api which can take time. so await ensures we wait before moving to the next line.
    // ignore: use_build_context_synchronously
    // Navigator.pushReplacementNamed(context, './home', arguments: {
    //   'location': instance.location,
    //   'flag': instance.flag,
    //   'time': instance.time,
    // });  //replacing loading screen with home screen. Better than push method to stack home on loading screen.
    
    
    
    print(instance.time);
    setState(() {     //after reaching out to api, we change value to that gotten from api.
      time = instance.time;
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text(time))  //displaying the value of the variable time.
    );
  }
}

  // @override
  // Widget build(BuildContext context) {
  //   // TODO: implement build
  //   throw UnimplementedError();
  // }
