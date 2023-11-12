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
   return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),         //vertical padding seperates the cards from each other.
      child: Material(        //wrapping container with material widget so i can use the elevation property.
        elevation: 10.0,       //z-axis. lifts the card at the bottom
        child: Container(
          height: 260.0,
          width: 178.0,
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
              Column(
                children: [
                 
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        
                        
                        Stack(
                          children: [
                            //fixture image
                            SizedBox(                          //first child stack container on which button will lie. but it doesnt enable container show beyond the image end.
                              height: 180.0,
                              child: Image(image:fixture.image,
                              height: 180.0,
                              ),
                            ),

                            Container(                         //solution: second container to increase the height so the button can show.
                              height: 200.0
                            ),

                             Positioned(          //placing the camara on profile.
                              right: 10,
                              top: 150,
                              child:   Container(       //container surrounding the icon.
                                decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(50)),
                                color: Color.fromARGB(255, 197, 194, 194),
                              ),
                              child: IconButton(
                                      onPressed: () {}, 
                                      icon: const Icon( Icons.shopping_bag),
                                      iconSize: 20.0,
                                      color: Colors.black,
                                      padding: EdgeInsets.zero,
                                ),
                        ),
                            ),
                          ]
                        ),

                        //fixture name
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
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
                            ],
                          ),
                        ), ],),
                      ],
                    ),
            ], 
          ),
              ),
            
          ),
          
    );
  }
      
  }
