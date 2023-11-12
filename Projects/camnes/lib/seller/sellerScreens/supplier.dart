
import 'package:camnes/seller/sellerScreens/add_supplier.dart';
import 'package:flutter/material.dart';
import '../sellercards/suppliercard.dart';
import '../sellerclasses/supplier_class.dart';

class Supplier extends StatefulWidget {
   const Supplier({super.key});

  @override
  State<Supplier> createState() => _SupplierState();
}

class _SupplierState extends State<Supplier> {
//USING CLASS, CONSTRUCTOR AND NAMED PARAMETERS CREATED FROM THE SUPPLIER CLASS FILE.
List<NewSupplier> newsuppliers = [
  NewSupplier(fixture: 'Floor Tiles', name: 'Mr. Asongna Frank', phone: 677342345, email: 'asongna@gmail.com', date: '12/09/23', note: 'ten cartons of balck 60*60 tiles were purchased for 100,000frs.'),
  NewSupplier(fixture: 'Toilet pot', name: 'Mr. Fonge Bertin', phone: 677342345, email: 'asongna@gmail.com', date: '12/09/23', note: 'ten cartons of balck 60*60 tiles were purchased for 100,000frs.'),
  NewSupplier(fixture: 'Toilet Taps', name: 'Mrs. Tasha Olivia', phone: 677342345, email: 'asongna@gmail.com', date: '12/09/23', note: 'ten cartons of balck 60*60 tiles were purchased for 100,000frs.'),
  NewSupplier(fixture: 'Cement', name: 'Mrs. Stephny', phone: 677342345, email: 'asongna@gmail.com', date: '12/09/23', note: 'ten cartons of balck 60*60 tiles were purchased for 100,000frs.'),
  NewSupplier(fixture: 'Sinks', name: 'Mrs Tekwe Akom', phone: 677342345, email: 'asongna@gmail.com', date: '12/09/23', note: 'ten cartons of balck 60*60 tiles were purchased for 100,000frs.'),
  NewSupplier(fixture: 'Floor Tiles', name: 'Mr. Charles Dickons', phone: 677342345, email: 'asongna@gmail.com', date: '12/09/23', note: 'ten cartons of balck 60*60 tiles were purchased for 100,000frs.')
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
          'Suppliers',
        ),
        actions: [
          IconButton( onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const AddSupplier()
                    ),);
              },
          icon: const Icon(Icons.add_circle_outline),)
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: newsuppliers.map((newsupplier) => SupplierCard(    //for every newnotification in the newnotifications list, display using the notification card. 
              newsupplier: newsupplier,
              delete: () {              //defining the delete func which will be passed as a parameter to the stles card widget class.
                setState(() {
                  newsuppliers.remove(newsupplier);      //removing a new thing from its list
                });
              }
            )).toList(),        //children requires a list of output, so your changing all the above to a list of text widgets.Normally we have an iterable as outpu, then u transform it to a list
        ),
      )
    ),
    );
  }
}
