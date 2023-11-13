import 'package:flutter/material.dart';
import 'dart:math' as math;


class ImmutableWidget extends StatelessWidget {
  const ImmutableWidget({super.key});   //CONSTRUCTOR(create and initialize an object). const saying only one instance of this object is created and no field values can be changed.
                                        //super.key is an optional parameter boc enclosed in {}.its passed to constructor
                                        //super refers to parent class ie statelesswidget. key is one of its properties used to uniquely identify a widget.
  @override
  Widget build(BuildContext context) {
    return Container(     //returns a green container widget which contains a padding widget
     // color: Colors.green,
    decoration: const BoxDecoration(color: Colors.green),
    foregroundDecoration: const BoxDecoration(    //containers support foreground and background decorations which can be blended as shown below.
      backgroundBlendMode: BlendMode.colorBurn,
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xAA0d6123),
          Color(0x00000000),
          Color(0xAA0d6123),
        ],
      ),),


      child: Padding(       //this is a Padding widget created.(capital P)
        padding: const EdgeInsets.all(80),
        child: Transform.rotate(
          angle: 180 / math.pi,    //rotations are supplied in radians.
          child: Container(   //another container widget contained in the padding widget
            //color: Colors.black,
           // padding: const EdgeInsets.all(24),  //padding is one of the properties of container widgets specifying padding for the container itself. (small p)
                                                //alternative to creating a padding class

            width: 250,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.purple,
              boxShadow: [
                BoxShadow(
                  color: Colors.deepPurple.withAlpha(120),
                  spreadRadius: 4,
                  blurRadius: 15,
                  offset: Offset.fromDirection(1.0, 30),
                ),
              ],
              borderRadius: const
              BorderRadius.all(Radius.circular(20)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(50.0),
            


            //  child: const ColoredBox(    //used when color is the only property of a container.
               // color: Colors.blue,
               child: _buildShinyCircle(),
              ),
        ),
            ),
      ),
    );
  }


//turning small box in center to a circle.
//circles are one kind of shapes that can be defined in a container. others are rounded rectangles
  Widget _buildShinyCircle() {
    return Container(       //containers have decoration or color not both.
      decoration: const BoxDecoration(    //can include gradients,shapes,shadows,borders or images
         shape: BoxShape.circle,
         gradient: RadialGradient(
          colors: [
          Colors.lightBlueAccent,
          Colors.blueAccent,
         ],
         center: Alignment(-0.3, -0.5),
         ),
         boxShadow: [
          BoxShadow(blurRadius: 20),
         ],
      ),
    );
  }
}