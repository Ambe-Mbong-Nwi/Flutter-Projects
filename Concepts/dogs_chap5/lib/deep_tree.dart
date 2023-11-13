import 'package:flutter/material.dart';

class DeepTree extends StatelessWidget {
  const DeepTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(       // used so text doesnt go to top of screen where we cannot read.
        child: Center(        //center widget centers text both vertically and horizontallly ie in center of page.
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,  //so column os centered horizontally
            children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterLogo(),    //adding the flutter logo
                Text('Flutter is amazing'),
              ],
            ),
            Expanded(     //occupies all available space between the texts
              child: Container(
                color: Colors.purple,
              ),
            ),
            const Text('Its all widgets!'),
            const Text('i might be tired already'),
            const Text('But flutter is kind of interesting sha!')
            ],
          ),
        ),
      ),
    );
  }
}