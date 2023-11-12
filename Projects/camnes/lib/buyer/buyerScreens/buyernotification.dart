
import 'package:flutter/material.dart';
import '../buyercards/notificationcard.dart';
import '../buyerclasses/notification_class.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {

//USING CLASS, CONSTRUCTOR AND NAMED PARAMETERS CREATED FROM THE NOTIFICATION CLASS FILE.
//list named newnotification takes in NewNotification class as its data type.
List<NewNotification> newnotifications = [
  NewNotification(title: 'New Tiles', details: 'New floor bathroom tiles of dimensions 25*30 and 60*60 have been added to the shop. Visit the fixtures page for more details', time: '1 hour ago'),
  NewNotification(title: 'New Toilet Pots', details: 'New floor bathroom tiles of dimensions 25*30 and 60*60 have been added to the shop. Visit the fixtures page for more details', time: '1 day ago'),
  NewNotification(title: 'New Taps', details: 'New floor bathroom tiles of dimensions 25*30 and 60*60 have been added to the shop. Visit the fixtures page for more details', time: '7 hours ago'),
  NewNotification(title: 'New Cement', details: 'New floor bathroom tiles of dimensions 25*30 and 60*60 have been added to the shop. Visit the fixtures page for more details', time: '1 hour ago'),
  NewNotification(title: 'New Tiles', details: 'New floor bathroom tiles of dimensions 25*30 and 60*60 have been added to the shop. Visit the fixtures page for more details', time: '1 hour ago'),
  NewNotification(title: 'New Tiles', details: 'New floor bathroom tiles of dimensions 25*30 and 60*60 have been added to the shop. Visit the fixtures page for more details', time: '1 hour ago')
];


//USE THE NOTIFICATION CARD IMPORTED FROM ITS FILE TO OUTPUT THE NOTIFICATIONS.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xffb80f0a),
        centerTitle: true,
        title: const Text(
          'Notifications',
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: newnotifications.map((newnotification) => NotificationCard(    //for every newnotification in the newnotifications list, display using the notification card. 
              newnotification: newnotification,
              delete: () {              //defining the delete func which will be passed as a parameter to the stles card widget class.
                setState(() {
                  newnotifications.remove(newnotification);      //removing a new thing from its list
                });
              }
            )).toList(),        //children requires a list of output, so your changing all the above to a list of text widgets.Normally we have an iterable as outpu, then u transform it to a list
        ),
      )
    ),
    );
  }
}
