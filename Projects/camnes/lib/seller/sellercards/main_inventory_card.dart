//basic card layout for all suppliers


import 'package:camnes/seller/sellerScreens/detailed_inventory_page.dart';
import 'package:camnes/seller/sellerclasses/main_inventory.dart';
import 'package:flutter/material.dart';


class MainInventoryCard extends StatelessWidget {
  // const SupplierCard({super.key});

                                          // NB: u can use data in a stles widget but add FINAL keyword meaning the value will not change.
  final NewMainInventory newMainInventory;          // //newthing variable passed in as a named parameter above.
  final void Function() delete;                //taking in delete func defined in notification.dart as a parameter.               
 const MainInventoryCard({super.key,  required this.newMainInventory, required this.delete });            //receiving the above into the constructor.

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 20.0),         //vertical padding seperates the cards from each other.
      child: Material(        //wrapping container with material widget so i can use the elevation property.
        elevation: 10.0,       //z-axis. lifts the card at the bottom
        child: Container(
         // height: 260.0,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            // border:Border.all(
            //   color: const Color(0xFF000000),
            // ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5.0,
                offset: Offset(0, -2),  //so card is also lifted at the top.
              )
            ]
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      newMainInventory.fixture,
                      style: const TextStyle(
                        color: Color(0xffb80f0a),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Total Quantity:'),
                        Text(newMainInventory.quantity.toString(),    //changing quantity to string so it can display in a text widget
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ))
                      ],),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Number Of Categories:'),
                        Text(newMainInventory.categories.toString(),        //changing categories to string so it can display in a text widget
                          style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            )
                            )
                            ]),        
                  ],
                ),
              ),

                Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(onPressed: delete,
                       child: const Text(
                        'Delete',
                        style: TextStyle(
                        color: Color(0xffb80f0a),
                        ),
                       )
                       ),

                       const SizedBox(width: 20.0),

                       TextButton(onPressed: () {
                           Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) => const DetailedInventoryPage()
                              ),);
                                },
                        child: const Text(
                          'See More',
                          style: TextStyle(
                          color: Color(0xffb80f0a),
                          ),
                        ))
                    ],),
            ],
          ),
        ),
      ),
    );
  }
}