import 'package:dogs/deep_tree.dart';
import 'package:dogs/flex_screen.dart';
import 'package:dogs/profile_screen.dart';
import 'package:flutter/material.dart';
//import 'profile_screen.dart';
//import 'flex_screen.dart';
//import 'deep_tree.dart';
import 'e_commerce_screen_before.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,    //creating global theme color which is default. appbar references this for its background if none is placed below
        brightness: Brightness.light,      //set brightness of apps ui to dark
        appBarTheme: AppBarTheme(     //defines visual properties for appbar
          elevation: 10,        //controls shadow that appears below appbar giving it a sens of seperation.
          titleTextStyle: const TextTheme(  //textTheme defines a set of textstyles
            headline6: TextStyle(
              fontFamily: 'LeckerliOne',
              fontSize: 24,
            ),
          ).titleLarge,
        ),
      ),
    //  home: const ProfileScreen(),
    home: const FlexScreen(),
      // home: const DeepTree(),
      // home: ECommerceScreen(),
    );
  }
}

// class StaticApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ),
//       home: ECommerceScreen(),
//     );
//   }
// }

