import 'package:flutter/material.dart';
import 'package:world_time_app/pages/choose_location.dart';
import 'package:world_time_app/pages/home.dart';
import 'package:world_time_app/pages/loading.dart';

void main() => runApp(MaterialApp(
  //home: Home(),
  initialRoute: '/',      //overrides initial loading screen below and displays home screen first.
  routes: {
    '/': (context) => Loading(),    //'/' is for the base route. context object describes where exactly in the widget tree we are
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
  },
));