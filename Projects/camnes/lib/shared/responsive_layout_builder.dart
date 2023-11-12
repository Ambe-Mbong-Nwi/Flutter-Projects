//creating general property constraints to be used in all the pages of the app.

import 'package:flutter/material.dart';

class ResponsiveLayerBuilder extends StatelessWidget {
  final Widget Function(BuildContext, BoxConstraints) builder;

  const ResponsiveLayerBuilder({Key? key, required this.builder}) : super(key: key);

  
  //retrieves the max width from the Mediaquery of the given Buildcontext
  static double getMaxWidth(BuildContext context) {
    final constraints = MediaQuery.of(context).size;
    return constraints.width;
  }

   //retrieves the max height from the Mediaquery of the given Buildcontext
  static double getMaxHeight(BuildContext context) {
    final constraints = MediaQuery.of(context).size;
    return constraints.height;
  }

//calculates the button width based on the max width above.
  static double getButtonWidth(BuildContext context) {
    final maxWidth = getMaxWidth(context);
    return maxWidth * 0.10;
  }

//calculates the button height based on the max width above.
  static double getButtonHeight(BuildContext context) {
    final maxHeight = getMaxHeight(context);
    return maxHeight * 0.015;
  }

//custompaint height based on the max height above.
  static double getCustomPaintHeight(BuildContext context) {
    final maxHeight = getMaxHeight(context);
    return maxHeight * 0.30;
  }
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) => builder(context, constraints),);
  }
}