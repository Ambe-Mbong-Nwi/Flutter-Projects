import 'package:camnes/clipper/clipper2.dart';
import 'package:camnes/shared/responsive_layout_builder.dart';
import 'package:flutter/material.dart';

import '../buyer/buyerScreens/login_buyer.dart';
import '../clipper/clipper1.dart';
import '../seller/sellerScreens/login_seller.dart';



class Role extends StatelessWidget {
  const Role({super.key});

  @override
  Widget build(BuildContext context) {

//accessing global layout builder from their file
    final customPaintHeight = ResponsiveLayerBuilder.getCustomPaintHeight(context);     //get the responsive custom paint method from its file and asign to this variable
    final buttonWidth = ResponsiveLayerBuilder.getButtonWidth(context);
    final buttonHeight = ResponsiveLayerBuilder.getButtonHeight(context);

    return Scaffold(
      // body: LayoutBuilder(       //access parents constraint ie flex 3 via the boxconstraints object.
      //         builder: (BuildContext context, BoxConstraints constraints) { 
      //           final maxWidth = constraints.maxWidth;
      //           final maxHeight = constraints.maxHeight;
      //           double customPaintHeight = constraints.maxHeight * 0.99;  //calculate the custompaint height as a fraction of the parents height.
      
      body: Column(
        children: [
          
          Flexible(
            flex: 3,                  //custom paint takes a flex of 3
            fit: FlexFit.loose,       //occupies only space it needs and at most the space of the parent.

            child: Column(       //column for paint decoration at top.
                children: [
                  Stack(
                    children: [
                      CustomPaint(
                      size: Size(MediaQuery.of(context).size.width, customPaintHeight),   //use the height here.
                      painter: RSCustomPainter(),
                    ),
                    Positioned(
                      top: 16,
                      right: -5,
                      child: CustomPaint(
                        size: Size(MediaQuery.of(context).size.width, customPaintHeight),
                        painter: RPSCustomPainter(),
                        )
                        )
                    ]
                ),
              ],),
             
          ),
         
          Flexible(
            flex: 5,
            fit: FlexFit.tight,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(       //column for children buttons.
                mainAxisAlignment: MainAxisAlignment.start,    //align children to the center
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20.0),
                  ElevatedButton(
                   onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const LoginBuyer()
                        ),);
                },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, 
                      backgroundColor: const Color(0xffb80f0a), // text color
                      padding: EdgeInsets.symmetric(
                        horizontal: buttonWidth* 3.5, 
                      vertical: buttonHeight * 1.2
                         ),
                    ),
                    child: const Text(
                      'Buyer',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0 ),)),

                SizedBox(height: 20.0),
            
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const LoginSeller()
                        ),);
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, 
                    backgroundColor: const Color(0xffb80f0a),     // text color
                    padding: EdgeInsets.symmetric(
                      horizontal: buttonWidth * 3.5, 
                      vertical: buttonHeight * 1.2
                       ),
                  ),
                  child: const Text(
                    'Seller',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0 ),))
                ],
              ),
            ),
          ),
        ]
      ),
    );
       }  
  }
