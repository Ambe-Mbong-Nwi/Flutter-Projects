import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


//simple dart object. constructor accepts a title and message body
class PlatformAlert {
  final String title;
  final String message;
  const PlatformAlert({required this.title, required this.message, required String messsage});
//show method looks at apps context and determines what type of device is running and shows the appropriate widget
  void show(BuildContext context) {
    final platform = Theme.of(context).platform;
    if (platform == TargetPlatform.iOS) {   //shows potential options where flutter can be hosted. new is fuchsia under dev by google. might replace android.
      _buildCupertinoAlert(context);
    } else {
      _buildMaterialAlert(context);
    }
  }

//android popup
_buildMaterialAlert(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(     //action component.
            child: const Text('Close'),
            onPressed: () => Navigator.of(context).pop())
        ]
      );
    }
  );
}

//iOS popup
_buildCupertinoAlert(BuildContext context) {
  showCupertinoDialog(
    context: context,
    builder: (context) {
      return CupertinoAlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          CupertinoButton(
            child: const Text('Close'),
            onPressed: () => Navigator.of(context).pop())
        ]
      );
    }
  );
}

}