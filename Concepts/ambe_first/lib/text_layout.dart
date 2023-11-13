//text widgets scale their font if user wishes to adjust systems font size.

import 'package:flutter/material.dart';
//
//


//import 'package:google_fonts/google_fonts.dart';

class TextLayout extends StatelessWidget {
  const TextLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children : [
        const Text(         //these texts can tale a single style object.
          'Hi meet Ambe',
          // style: GoogleFonts.leckerliOne(fontSize: 40),
          style: TextStyle(fontFamily: 'LeckerliOne', fontSize: 30)
        ),
        Text(
          'Text can wrap without issue',
          style: Theme.of(context).textTheme.titleLarge,   //used to access data from other parts higher up the widget tree. bcos every build method has a context object which is a marker of the widgets location in the tree and can be used to travel up and down the tree
        ),                                                //the Theme.of(context) method searches up the tree to find the closest Theme widget which has predetermined colors and styles to be added to this widget to have a consistent look in app.
                                                          //it also adds the global headline6 style to this text widget.
        const Text(
          'wow who sthej  ehrjhh  ehrl ehrlf wleh thaw  hrfovh thorf thorfh rhto rhto wieufh thwoe htod rthwihf rhto '
        ),
        
        const Divider(), //like enter which gives space between paragraphs.
        RichText(   //creates tree of textspan where each child inherits its parents style but can ovveride it with its own.
          text: const TextSpan(
          text: 'Flutter text is ',
          style: TextStyle(       //textstyle object aids with styling.
            fontSize: 25, 
            color: Colors.black),
            children: <TextSpan>[
              TextSpan(
              text: 'really',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
              children: [
                TextSpan(       //this last span will be styled with the sum of all its parents spans in the tree.
                  text: 'powerful.',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.double,
                    fontSize: 40,
                  ),
                ),
              ],
              ),
            ],
          ),),
      ],
    );
  }
}