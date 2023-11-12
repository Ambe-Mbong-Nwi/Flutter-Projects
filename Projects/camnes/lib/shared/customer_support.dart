import 'package:camnes/shared/feedback.dart';
import 'package:flutter/material.dart';

class CustomerSupport extends StatefulWidget {
  const CustomerSupport({super.key});

  @override
  State<CustomerSupport> createState() => _CustomerSupportState();
}

class _CustomerSupportState extends State<CustomerSupport> {

//creating individual variables and methods for each so they are controlled individually.

  bool isReadMore1 = false;        //boolean is initially false, so just a single line is displayed with its corresponding dropdown icon
  bool isReadMore2 = false;  
  bool isReadMore3 = false;  
  bool isReadMore4 = false;  

  Widget buildText1( String text ) {                //when you click on icon, this func is ran to control the text displayed.
      final maxLines = isReadMore1 ? null : 1;      //if isReadmore true, show all text, else maximum number of lines is 1.

      return Text(
        text,
        maxLines: maxLines,
      );
     }
  
  Widget buildText2( String text ) {                //when you click on icon, this func is ran to control the text displayed.
      final maxLines = isReadMore2 ? null : 1;      //if isReadmore true, show all text, else maximum number of lines is 1.

      return Text(
        text,
        maxLines: maxLines,
      );
     }

  Widget buildText3( String text ) {                //when you click on icon, this func is ran to control the text displayed.
      final maxLines = isReadMore3 ? null : 1;      //if isReadmore true, show all text, else maximum number of lines is 1.

      return Text(
        text,
        maxLines: maxLines,
      );
     }

  Widget buildText4( String text ) {                //when you click on icon, this func is ran to control the text displayed.
      final maxLines = isReadMore4 ? null : 1;      //if isReadmore true, show all text, else maximum number of lines is 1.

      return Text(
        text,
        maxLines: maxLines,
      );
     }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffb80f0a),
        foregroundColor: Colors.white,
        title: const Text(
          'Customer Support',
          style: TextStyle(
            color: Colors.white,
          )
        ),
        centerTitle: true,
      ),

      body: ListView(     //listview is better than scrollview bcos it provides optimisation when handling large datasets.
        padding: const EdgeInsets.all(20),
        children: [
           const Text(
              'How can we help you?',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24.0
              )
            ),
            const SizedBox(height: 20.0),

            Image.asset(
              "assets/images/text.jpg",
              height: 190.0,
              //width: 160.0,
              ),
            const SizedBox(height:20.0),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const FeedbackPage()
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
                children: [
                  Text(
                    'Leave a Message',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                    )
                  ),
                  SizedBox(width: 160.0),
                  Icon(
                    Icons.arrow_circle_right_sharp,
                    color: Color(0xffb80f0a),
                    size: 30.0,
                    ),
                ],)),
                const SizedBox(height: 30.0),

                const Text(
                    'Frequently Asked Questions',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    )
                  ),

                const SizedBox(height: 20.0),

            Column(
            children: [
              ElevatedButton(onPressed: () {
                setState(() {
                  isReadMore1 = ! isReadMore1;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                elevation: 3.0,       //height of buttons shadow.
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                )
              ),

              child: Row(
                children: [
                  Flexible(
                    child: buildText1(
                      'How can I place an order? \n\nClick on the order button on any card to get in touch with the seller'
                    ),
                  ),
                  Icon(isReadMore1 ? Icons.keyboard_arrow_up_sharp : Icons.keyboard_arrow_down_sharp),      //icon changes depending on the boolean value of isReadMore
                ],)
              ),

              const SizedBox(height:20.0),

              ElevatedButton(onPressed: () {
                setState(() {
                  isReadMore2 = ! isReadMore2;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                elevation: 3.0,       //height of buttons shadow.
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                )
              ),

              child: Row(
                children: [
                  Flexible(
                    child: buildText2(
                      'How will i know if there are updates? \n\nYou will get notifications when fixtures are oploaded. Visit the notification page to get this information'
                    ),
                  ),
                  Icon(isReadMore2 ? Icons.keyboard_arrow_up_sharp : Icons.keyboard_arrow_down_sharp),      //icon changes depending on the boolean value of isReadMore
                ],)
              ),

              const SizedBox(height:20.0),

              ElevatedButton(onPressed: () {
                setState(() {
                  isReadMore3 = ! isReadMore3;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                elevation: 3.0,       //height of buttons shadow.
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                )
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: buildText3(
                      'What is the location of the shop? \n\nOur shop is located in Yaounde'
                    ),
                  ),
                  Icon(isReadMore3 ? Icons.keyboard_arrow_up_sharp : Icons.keyboard_arrow_down_sharp),      //icon changes depending on the boolean value of isReadMore
                ],)
              ),

              const SizedBox(height:20.0),

              ElevatedButton(onPressed: () {
                setState(() {
                  isReadMore4 = ! isReadMore4;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                elevation: 3.0,       //height of buttons shadow.
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                )
              ),

              child: Row(
                children: [
                  Flexible(
                    child: buildText4(
                      'How can I place an order? \n\nClick on the order button on any card to get in touch with the seller'
                    ),
                  ),
                  Icon(isReadMore4 ? Icons.keyboard_arrow_up_sharp : Icons.keyboard_arrow_down_sharp),      //icon changes depending on the boolean value of isReadMore
                ],)
              ),

              
            ],),
        ],)
      );
      
    }
}