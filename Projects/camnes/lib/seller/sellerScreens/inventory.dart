import 'package:camnes/seller/sellerclasses/main_inventory.dart';
import 'package:flutter/material.dart';

import '../sellercards/main_inventory_card.dart';
import 'add_main_inventory.dart';

class InventoryManagement extends StatefulWidget {
  const InventoryManagement({super.key});

  @override
  State<InventoryManagement> createState() => _InventoryManagementState();
}

class _InventoryManagementState extends State<InventoryManagement> {

  //USING CLASS, CONSTRUCTOR AND NAMED PARAMETERS CREATED FROM THE SUPPLIER CLASS FILE.
List<NewMainInventory> newMainInventorys = [
  NewMainInventory(fixture: 'Floor Tiles', quantity: 1203, categories: 67, ),
  NewMainInventory(fixture: 'Toilet pot', quantity: 1203, categories: 67, ),
  NewMainInventory(fixture: 'Toilet Taps', quantity: 1203, categories: 67, ),
  NewMainInventory(fixture: 'Cement',  quantity: 1203, categories: 67, ),
  NewMainInventory(fixture: 'Sinks', quantity: 1203, categories: 67, ),
  NewMainInventory(fixture: 'Floor Tiles',  quantity: 1203, categories: 67, ),
];

 //USE THE SUPPLIER CARD IMPORTED FROM ITS FILE TO OUTPUT THE SUPPLIERS.
  @override
  Widget build(BuildContext context) {
 return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xffb80f0a),
        centerTitle: true,
        title: const Text(
          'Inventory',
        ),
        actions: [
          IconButton( onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const AddMainInventory()
                    ),);
              },
          icon: const Icon(Icons.add_circle_outline),)
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: newMainInventorys.map((newMainInventory) =>  MainInventoryCard(    //for every newnotification in the newnotifications list, display using the notification card. 
              newMainInventory: newMainInventory,
              delete: () {              //defining the delete func which will be passed as a parameter to the stles card widget class.
                setState(() {
                  newMainInventorys.remove(newMainInventory);      //removing a new thing from its list
                });
              }
            )).toList(),        //children requires a list of output, so your changing all the above to a list of text widgets.Normally we have an iterable as outpu, then u transform it to a list
        ),
      )
    ),
    );
  }
}
