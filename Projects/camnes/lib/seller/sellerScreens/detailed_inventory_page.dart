import 'package:camnes/seller/sellercards/detailed_inventory_card.dart';
import 'package:flutter/material.dart';

import '../../shared/search_class.dart';
import '../sellerclasses/detailed_inventory.dart';

class DetailedInventoryPage extends StatefulWidget {
  const DetailedInventoryPage({super.key});

  @override
  State<DetailedInventoryPage> createState() => _DetailedInventoryPageState();
}

class _DetailedInventoryPageState extends State<DetailedInventoryPage> {

  List<NewDetailedInventory> newDetailedInventorys = [
  NewDetailedInventory(description: '60X60 black floor tiles', serialN: 01, date: DateTime(2022, 10, 31), inputQuantity: 10, outputQuantity: 5, balance: 5 ),
  NewDetailedInventory(description: '20X20 brown wall tiles', serialN: 02, date: DateTime(2022, 08, 31), inputQuantity: 10, outputQuantity: 5, balance: 5 ),
  NewDetailedInventory(description: '25X40 white wall tiles', serialN: 03, date: DateTime(2022, 01, 31), inputQuantity: 10, outputQuantity: 5, balance: 5 ),
  NewDetailedInventory(description: '40X40 white floor tiles', serialN: 04, date: DateTime(2022, 04, 31), inputQuantity: 10, outputQuantity: 5, balance: 5 ),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xffb80f0a),
        centerTitle: true,
        title: const Text(
          'Details',
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

      body: SingleChildScrollView(
        child: Scrollbar(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: newDetailedInventorys.map((newDetailedInventory) =>  DetailedInventoryCard(    //for every newnotification in the newnotifications list, display using the notification card. 
                newDetailedInventory: newDetailedInventory,
                addRow: () {              //defining the addRow func which will be passed as a parameter to the stles card widget class.
                  setState(() {
                    newDetailedInventorys.add(       //adding a new empty row.
                      NewDetailedInventory(
                        description: '',
                        serialN: 0,
                        date: DateTime.now(),
                        inputQuantity: 10,
                        outputQuantity: 5,
                        balance: 5 
                        ),
                      );      //adding a new thing to list
                  });
                },
        
                delete: () {        //deleting a whole inventory table
                  setState(() {
                    newDetailedInventorys.clear();
                  });
                }
              )).toList(),        //children requires a list of output, so your changing all the above to a list of text widgets.Normally we have an iterable as outpu, then u transform it to a list
          ),
              ),
        )
    ),
    );
  }
}
