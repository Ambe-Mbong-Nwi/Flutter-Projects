//Custompaint widget used to draw what you want. eg drawing a star in this case.

import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  final Color color;
  final double size;
                      //below is a construcotor askin for a color and size which will be passed down to the painter
                      //constructor creates and initialises an object
                      //require kwyword ensuring caller provides values for all required parameters
    const Star({required this.color, required this.size, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CustomPaint(   //custompaint is an abstract class meaning it cannot be instanciated directly and so can be used only via inheritance
        painter: _StarPainter(color),
      )
    );
  }
}

class _StarPainter extends CustomPainter {
  final Color color;
  _StarPainter(this.color);

              //paint method is where shape is drawn.
  @override  //override paint method so subclass can provide its own implementation.
  void paint(Canvas canvas, Size size) {      //canvas object
    final paint = Paint()..color = color;
    final path = Path()       //use path API to draw star. 
          ..moveTo(size.width * 0.5, 0)
          ..lineTo(size.width * 0.618, size.height * 0.382) //use % and calc so star looks good at any size. gotten from sketch or figma or adobe

          ..lineTo(size.width, size.height * 0.382)
          ..lineTo(size.width * 0.691, size.height * 0.618)

          ..lineTo(size.width * 0.809, size.height)
          ..lineTo(size.width * 0.5, size.height * 0.7639)

          ..lineTo(size.width * 0.191, size.height)
          ..lineTo(size.width * 0.309, size.height * 0.618)

          ..lineTo(0, size.height * 0.382)
          ..lineTo(size.width * 0.382, size.height * 0.382)

          ..close();

          canvas.drawPath(path, paint);  //after drawing, commit to drawpath method which takes the vector shape and rasterize it(convert to pixels) using a Paint object to describe how it should be filled
  }
            //shouldrepaint method is for optimisation purposes when it needs to determine whether a custom widget need to be repainted.
  @override //override this too for above reason
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class StarRating extends StatelessWidget {
  final Color color;
  final int value;
  final double starSize;
  const StarRating({
    super.key,
    required this.value,
    this.color = Colors.deepOrange,
    this.starSize = 25,
  });
  @override
  Widget build(BuildContext context){
    return Row(
      children: List.generate(    
        value,
        (_) => Padding(   //index name replaced with _ meaning we are ignoring that value while complying with the required API.
          padding: const EdgeInsets.all(2.0),
          child: Star(
            color: color,
            size: starSize,
            ),
        ),
      ),
      );
  }
}

//syntax for generato closure: E generator(int index)
//when the closure is called the framework will pass an index value used to build the element
//this case not necesary