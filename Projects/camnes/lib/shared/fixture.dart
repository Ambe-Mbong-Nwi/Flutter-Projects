//fixture class which has all the attributes for the various fixtures.

import 'package:flutter/widgets.dart';

class Fixture { 

  late String name;           //late keyword meaning the variable will be initialised at a later time after it has been declared.
  late int price;
  late ImageProvider image;


  //Shortform for using named parameters. The job of the constructor has also been applied here.
  Fixture({ required this.name, required this.price, required this.image });

}