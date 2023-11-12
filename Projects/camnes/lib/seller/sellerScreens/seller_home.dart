import 'package:camnes/seller/sellerScreens/login_seller.dart';
import 'package:camnes/seller/sellerScreens/report.dart';
import 'package:camnes/seller/sellerScreens/seller_profile.dart';
import 'package:camnes/shared/about.dart';
import 'package:camnes/shared/customer_support.dart';
import 'package:camnes/buyer/buyerScreens/buyernotification.dart';
import 'package:camnes/seller/sellercards/fixturecard.dart';
import 'package:camnes/shared/fixture.dart';
import 'package:flutter/material.dart';

import '../../shared/search_class.dart';



class SellerHome extends StatefulWidget {
  const SellerHome({super.key});

  @override
  State<SellerHome> createState() => _SellerHomeState();
}

class _SellerHomeState extends State<SellerHome> {

   List<Fixture> fixtures = [
    Fixture(name: 'Toilet Pot', price: 1000, image: const AssetImage('assets/images/toiletpot.jpeg')),
    Fixture(name: '40x40 floor tiles', price: 1000, image: const AssetImage('assets/images/tiles.jpeg')),
    Fixture(name: 'Kitchen Sink', price: 1000, image: const AssetImage('assets/images/sinkone.jpeg')),
    Fixture(name: 'Toilet Soap', price: 1000, image: const AssetImage('assets/images/soap.jpeg')),
    Fixture(name: 'Bedsheet', price: 1000, image: const AssetImage('assets/images/bedsheet.jpeg')),
    Fixture(name: '40x40 floor tiles', price: 1000, image: const AssetImage('assets/images/tiles.jpeg')),
    Fixture(name: 'Kitchen Sink', price: 1000, image: const AssetImage('assets/images/sinktwo.jpeg')),
    Fixture(name: 'Toilet Soap', price: 1000, image: const AssetImage('assets/images/soap.jpeg')),
   
  ];

  @override
  Widget build(context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: const Color(0xffb80f0a),
        title: const Text(
          'Hello Ambe',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500
          ),
          ),
        centerTitle: true,
        leading: Builder(                         //steps to change the default drawer icon
          builder: (BuildContext context) {
            return IconButton(
            icon: const Icon(
              Icons.settings,
              size: 35.0,
              color: Colors.white,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          }
            ),

            //SEARCH ICON
            actions: [                          //used for the search bar.
              IconButton(onPressed: () {        //triggers the showsearch which then runs the mysearch delegate which is our custom class that extends the searchdelegate.
                showSearch(
                  context: context,
                  delegate: MySearchDelegate(),       //search class gotten from search file.
                );
              },
              icon: const Icon(
                Icons.search,
                size: 35.0,
                color: Colors.white
                )
              )
            ],
          ),



      //drawer navigation for the settings
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,           //remove default padding from listview
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xffb80f0a),
              ),
              child: Center(
                child: Text('Ambe',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                )),
              ),
            ),

            //profile
            ListTile(
              leading: const Icon(Icons.person),        //used to place icon before title. trailing places icon at the far right 
              title: const Text('Profile'),
              onTap: () {
                Navigator.pop(context);   //so it closes drawer navigation before moving to the clicked page.

                Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const SellerProfile()
                )
              );
              },
            ),

            //divider
             const Padding(
               padding: EdgeInsets.symmetric(horizontal: 10.0),
               child: Divider(
                  height: 20.0,
                  color: Color.fromARGB(255, 204, 203, 203)
                ),
             ),

            //Notifications
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text('Notifications'),
              onTap: () {
                Navigator.pop(context);   //so it closes drawer navigation before moving to the clicked page.

                Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const NotificationPage()
                )
              );
              },
            ),

            //divider
             const Padding(
               padding: EdgeInsets.symmetric(horizontal: 10.0),
               child: Divider(
                  height: 20.0,
                  color: Color.fromARGB(255, 204, 203, 203)
                ),
             ),

             //report
            ListTile(
              leading: const Icon(Icons.summarize),
              title: const Text('Report'),
              onTap: () {
                Navigator.pop(context);   //so it closes drawer navigation before moving to the clicked page.

                Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const Reporting()
                )
              );
             
              },
            ),

             //divider
             const Padding(
               padding: EdgeInsets.symmetric(horizontal: 10.0),
               child: Divider(
                  height: 20.0,
                  color: Color.fromARGB(255, 204, 203, 203)
                ),
             ),


            //support
            ListTile(
              leading: const Icon(Icons.support_agent),
              title: const Text('Support'),
              onTap: () {
                Navigator.pop(context);   //so it closes drawer navigation before moving to the clicked page.

                Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const CustomerSupport()
                )
              );
             
              },
            ),

             //divider
             const Padding(
               padding: EdgeInsets.symmetric(horizontal: 10.0),
               child: Divider(
                  height: 20.0,
                  color: Color.fromARGB(255, 204, 203, 203)
                ),
             ),


            //About
            ListTile(
              leading: const Icon(Icons.info_outlined),
              title: const Text('About Us'),
              onTap: () {
                Navigator.pop(context);   //so it closes drawer navigation before moving to the clicked page.

                Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const AboutPage()
                )
              );
              },
            ),

             //divider
             const Padding(
               padding: EdgeInsets.symmetric(horizontal: 10.0),
               child: Divider(
                  height: 20.0,
                  color: Color.fromARGB(255, 204, 203, 203)
                ),
             ),


            //Logout
            ListTile(
              iconColor: const Color(0xffb80f0a),
              leading: const Icon(Icons.logout_rounded),
              title: const Text('Logout',
              style: TextStyle(
                color: Color(0xffb80f0a),
              )),
              onTap: () {                           ///logout by replacing the present page with the login page.
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) =>  const LoginSeller()));
                  }, 
            ),
          ],
        )
        ),

      
       body: Scrollbar(             //adds scrollbar for easy scrolling.
         child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Wrap(             //widget ensures cards wrap to the next line when they exceed the line.
                  runSpacing: 30.0,                 //vertical spacing
                  spacing: 15.0,                    //horizontal spacing
                  children: fixtures.map((fixture) => FixtureCard(    //for every newnotification in the newnotifications list, display using the notification card. 
                    fixture: fixture,
                    // delete: () {              //defining the delete func which will be passed as a parameter to the stles card widget class.
                    //   setState(() {
                    //     newsuppliers.remove(newsupplier);      //removing a new thing from its list
                    //   });
                    // }
                  )).toList(),        //children requires a list of output, so your changing all the above to a list of text widgets.Normally we have an iterable as outpu, then u transform it to a list
       
       
                  
          ),
              ],
            ),
       
          
             )
           ),
       ),

      
      
    );
  }
}

