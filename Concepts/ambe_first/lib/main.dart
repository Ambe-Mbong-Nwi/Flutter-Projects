//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

//import 'immutable_widget.dart';
import 'basic_screen.dart';

void main() => runApp(const StaticApp()); //initialises fluttter framework and places a staticapp(stateless widget) at the root of the widget tree.
class StaticApp extends StatelessWidget {   //widget used to setup global data to be accessed by the rest of the app.
                                            //CONSTRUCTOR(create and initialize an object). const saying only one instance of this object is created and no field values can be changed.
                                        //super.key is an optional parameter boc enclosed in {}.its passed to constructor
                                        //super refers to parent class ie statelesswidget. key is one of its properties used to uniquely identify a widget.
  @override   //method below is intended to override a method with same name in the superclass
  const StaticApp({super.key});
  @override
  Widget build(BuildContext context) {     //build method is the core of statelesswidgets ie flutter calls it every time it needs to repaint a given set of widgets.
    return MaterialApp (    //materialapp is a widget. primary building blocks for apps that follow google design. implements navigation, theming and localisation. For apple = CupertinoApp, creating yours, = WidgetsApp
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      //home: const ImmutableWidget(),      //custom widget ie one you create.
      home: const BasicScreen(),
    );
  }
}





//MaterialApp is root of flutter tree here. and uses 'home' to describe its children.
//  scaffold uses body to describe children.