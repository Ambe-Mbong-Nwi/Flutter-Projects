//basic card layout for all suppliers


import 'package:camnes/shared/fixture.dart';
import 'package:flutter/material.dart';



class FixtureCard extends StatelessWidget {
  // const SupplierCard({super.key});

                                          // NB: u can use data in a stles widget but add FINAL keyword meaning the value will not change.
  final Fixture fixture;          // //newthing variable passed in as a named parameter above.

  const FixtureCard({super.key,  required this.fixture });            //receiving the above into the constructor.

  @override
  Widget build(BuildContext context) {
     
      return Material(        //wrapping container with material widget so i can use the elevation property.
        elevation: 10.0,       //z-axis. lifts the card at the bottom
        child: Container(
          padding: EdgeInsets.zero,
          height: 280.0,
          width: 178.0,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5.0,
                offset: Offset(0, -2),  //so card is also lifted at the top.
              )
            ]
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                            //fixture image
                            SizedBox(                          //first child stack container on which button will lie. but it doesnt enable container show beyond the image end.
                              height: 180.0,
                              child: Image(image:fixture.image,
                              height: 180.0,
                              ),
                            ),
                          ]
                        ),

                        //fixture name
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0.0),
                           child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                fixture.name,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500,
                                )
                              ),
                        
                          //fixture price
                          Text(
                            'XAF ${fixture.price}',         //changing price to string so it can display in a text widget
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            )
                          ),

                          //edit and delete buttons
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              //delete button
                              ElevatedButton(onPressed: () {},
                             style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffb80f0a),        //background color of button
                                foregroundColor: Colors.white,     // text color
                                padding: const EdgeInsets.symmetric(horizontal: 1.0, vertical:1.0 ),
                              ),
                              child: const Text(
                                'Delete',
                              )
                              ),

                              ElevatedButton(onPressed: () {},
                              style: const ButtonStyle(
                                padding: MaterialStatePropertyAll(EdgeInsets.zero)
                              ),
                                child: const Text(
                                  'Edit',
                                  style: TextStyle(
                                  color: Color(0xffb80f0a),
                                  ),
                                ))
                    ],
                    ),
                            ],
                          ),
                        ), 
                        
                      ],
          ),
              ),
            
          
          
    );
  }
      
  }
