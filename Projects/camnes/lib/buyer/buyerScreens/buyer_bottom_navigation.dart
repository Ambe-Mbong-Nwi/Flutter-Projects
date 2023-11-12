//Bottom navigation bar for the buyer screens.

import 'package:flutter/material.dart';
import '../../shared/tiles_calculation.dart';
import 'buyer_home.dart';
import '../buyerScreens/buyerfixtures.dart';
import '../buyerScreens/buyernotification.dart';

class BuyerBottomNavigation extends StatefulWidget {
  const BuyerBottomNavigation({super.key});

  @override
  State<BuyerBottomNavigation> createState() => _BuyerBottomNavigationState();
}

class _BuyerBottomNavigationState extends State<BuyerBottomNavigation> {

  int index = 0;                  //index controlling the pages shown. Index 0 is for the home page
  final screens = [               //different screens to be displayed
    const BuyerHome(),
    const BuyerFixtures(),
    const TilesCalculation(),
    const NotificationPage()
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       //bottom tab navigation
     bottomNavigationBar: NavigationBarTheme(
      data: NavigationBarThemeData(                     //enables styling items in the navigation bar.
        indicatorColor: const Color(0xffb80f0a),
        labelTextStyle: MaterialStateProperty.all(
          const TextStyle(
            fontWeight: FontWeight.w500
          )
        )
      ),
       child: NavigationBar(
        backgroundColor: Colors.white,
        animationDuration: const Duration(seconds: 3),          //number of animation seconds when you select an icon on the nav bar
        selectedIndex: index,                           //holds the index which determines the page to be displayed.
        onDestinationSelected: (index) =>               //when a new page is clicked, setstate by changing the present index to the newly clicked one
              setState(() => this.index = index ),

        
        destinations: const [                           //different pages in the nav bar.
          NavigationDestination(
            icon: Icon(Icons.home_outlined),           //icon look when not selected
            selectedIcon: Icon(Icons.home),             //icon look when selected
            label: 'Home'),
     
          NavigationDestination(
            icon: Icon(Icons.production_quantity_limits_outlined),
            selectedIcon: Icon(Icons.production_quantity_limits),
            label: 'Product'),
     
          NavigationDestination(
            icon: Icon(Icons.calculate_outlined),
            selectedIcon: Icon(Icons.calculate),
            label: 'Calculation'),
     
          NavigationDestination(
            icon: Icon(Icons.notifications_outlined),
            selectedIcon: Icon(Icons.notifications),
            label: 'Notifications'),
     
        ]),
     ),

      body: screens[index],
    );
  }
}