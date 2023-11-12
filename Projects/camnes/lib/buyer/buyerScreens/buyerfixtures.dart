import 'package:flutter/material.dart';
import 'buyerfixtures/bedsheet.dart';
import 'buyerfixtures/kitchensink.dart';
import 'buyerfixtures/tap.dart';
import 'buyerfixtures/tiles.dart';
import 'buyerfixtures/toiletpot.dart';
import 'buyerfixtures/toiletsink.dart';
import 'buyerfixtures/toiletsoap.dart';

class BuyerFixtures extends StatelessWidget {
  const BuyerFixtures({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Scrollbar(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 65.0),
            child: Column(
              children: [
      
                //to tiles page
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const Tiles()
                          ),);
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 3.0,  
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
                      shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    )
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Wall and Floor Tiles',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          )
                        ),
                        
                        Icon(
                          Icons.arrow_circle_right_sharp,
                          color: Color(0xffb80f0a),
                          size: 30.0,
                          ),
                      ],)),
                      const SizedBox(height: 30.0),
      
                    
                    //to toilet sink page
                    ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const ToiletSink()
                          ),);
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 3.0,  
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
                      shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    )
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Toilet Sinks',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          )
                        ),
                        
                        Icon(
                          Icons.arrow_circle_right_sharp,
                          color: Color(0xffb80f0a),
                          size: 30.0,
                          ),
                      ],)),
                      const SizedBox(height: 30.0),
      
      
                    //to toilet pot page
                    ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const ToiletPot()
                          ),);
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 3.0,  
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
                      shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    )
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Toilet Pots',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          )
                        ),
                        
                        Icon(
                          Icons.arrow_circle_right_sharp,
                          color: Color(0xffb80f0a),
                          size: 30.0,
                          ),
                      ],)),
                      const SizedBox(height: 30.0),
      
                       //to kitchen sink page
                    ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const KitchenSink()
                          ),);
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 3.0,  
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
                      shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    )
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Kitchen Sinks',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          )
                        ),
                        
                        Icon(
                          Icons.arrow_circle_right_sharp,
                          color: Color(0xffb80f0a),
                          size: 30.0,
                          ),
                      ],)),
                      const SizedBox(height: 30.0),


                       //to taps page
                    ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const Tap()
                          ),);
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 3.0,  
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
                      shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    )
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Taps',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          )
                        ),
                        
                        Icon(
                          Icons.arrow_circle_right_sharp,
                          color: Color(0xffb80f0a),
                          size: 30.0,
                          ),
                      ],)),
                      const SizedBox(height: 30.0),
      
      
                       //to toilet soap page
                    ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const ToiletSoap()
                          ),);
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 3.0,  
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
                      shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    )
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Toilet Soap',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          )
                        ),
                        
                        Icon(
                          Icons.arrow_circle_right_sharp,
                          color: Color(0xffb80f0a),
                          size: 30.0,
                          ),
                      ],)),
                      const SizedBox(height: 30.0),

      
                       //to bedsheets page
                    ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const Bedsheet()
                          ),);
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 3.0,  
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
                      shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    )
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Bedsheets',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          )
                        ),
                        
                        Icon(
                          Icons.arrow_circle_right_sharp,
                          color: Color(0xffb80f0a),
                          size: 30.0,
                          ),
                      ],)),
                      const SizedBox(height: 30.0),
      
      
      
            ],),
          ),
        ),
      )
    );
  }
}