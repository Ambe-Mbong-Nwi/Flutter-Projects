//basic card layout for all suppliers


import 'package:flutter/material.dart';

import '../sellerclasses/supplier_class.dart';


class SupplierCard extends StatelessWidget {
  // const SupplierCard({super.key});

                                          // NB: u can use data in a stles widget but add FINAL keyword meaning the value will not change.
  final NewSupplier newsupplier;          // //newthing variable passed in as a named parameter above.
  final void Function() delete;                //taking in delete func defined in notification.dart as a parameter.               
  const SupplierCard({super.key,  required this.newsupplier, required this.delete });            //receiving the above into the constructor.

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
                      newsupplier.fixture,
                      style: const TextStyle(
                        color: Color(0xffb80f0a),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Company Name:'),
                        Text(newsupplier.name,
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ))
                      ],),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Phone Number:'),
                        Text(newsupplier.phone.toString(),        //changing phone to string so it can display in a text widget
                          style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            )
                            )
                            ]),        
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Email:'),
                        Text(newsupplier.email,
                          style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ))
                      ],),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Date Supplied:'),
                        Text(newsupplier.date,
                          style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ))
                      ],),
                    const SizedBox(height: 10.0),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Note:',
                          style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        )),
                        Text(newsupplier.note)
                      ],),

                    
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

                       TextButton(onPressed: () {},
                        child: const Text(
                          'Edit',
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