//basic card layout for all notifiacations.


import 'package:flutter/material.dart';
import '../sellerclasses/notification_class.dart';
//import 'notificationClass.dart';

class NotificationCard extends StatelessWidget {           //NB: u can use data in a stles widget but add FINAL keyword meaning the value will not change.
  final NewNotification newnotification;                    //newthing variable passed in as a named parameter above.
  final void Function() delete;                                //taking in delete func defined in notification.dart as a parameter.               

  const NotificationCard({super.key,  required this.newnotification, required this.delete });   //receiving the above into the constructor.

  
  @override
  Widget build(BuildContext context) {
    return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    newnotification.title,
                    style: const TextStyle(
                      color: Color(0xffb80f0a),
                    )
                  ),
      
                  const SizedBox(height: 10.0),
        
                  Text(
                    newnotification.details,
                    
                    style: const TextStyle(
                      fontSize: 15.0,
                    )
                  ),
      
                  //SizedBox(height: 10.0),
        
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        newnotification.time,
                        style: const TextStyle(
                          fontWeight: FontWeight.w300,
                        )
                      ),

                      IconButton(
                        onPressed: delete,        ////delete works bcos it is a defined func in stful widget passed as parameter in this stles widget
                        icon: const Icon(Icons.delete),
                        )
                    ],
                  ),
      
                  const SizedBox(height: 40.0),
                ],);
  }
}