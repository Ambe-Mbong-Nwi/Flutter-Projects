import 'package:flutter/material.dart';

class BuyerProfile extends StatelessWidget {
  const BuyerProfile({super.key});

  @override
  Widget build(BuildContext context) {


////TextEditingController class notifies listeners when changes are made to a text field. Listeners can then read the text, etc
    var usernameController = TextEditingController();
    var emailController = TextEditingController();
    var phoneController = TextEditingController();


    return Scaffold(
    resizeToAvoidBottomInset : false,
    appBar: AppBar(
      iconTheme: const IconThemeData(color: Colors.white),  //changing default back arrow icon color.
      title: const Text(
        'Profile',
        style: TextStyle(
          color: Colors.white,
        )
      ),
      backgroundColor: const Color(0xffb80f0a),
      centerTitle: true,
    ),


    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
    
    
            //profile picture. 
            Center(
              child: Stack(     //Use stack so profile and camera can be placed on each other
                children: [ 
                  const CircleAvatar(
                    backgroundColor: Color(0xffb80f0a),
                    backgroundImage: AssetImage("assets/images/ambe.jpg"),
                    radius: 120.0,
                 ),
                 Positioned(          //placing the camara on profile.
                  right: 10,
                  top: 180,
                  child:   Container(       //container surrounding the icon.
                    decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Color(0xffb80f0a),
                  ),
                   child: IconButton(
                          onPressed: () {}, 
                          icon: const Icon( Icons.camera_alt_rounded),
                          iconSize: 40.0,
                          color: Colors.white,
                    ),
            ),
                 )
          ],),),
            const SizedBox(height: 50.0),
    
    
            //username
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Expanded(     //using expanded widgets because they act like flex, causing info to wrap to next line if it becomes long.
                  flex: 1,
                  child: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                ),
               // SizedBox(width: 20.0),
    
                const Expanded(
                  flex: 7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Username',
                        style: TextStyle(
                          color: Colors.grey,
                        )),
                        Text(
                          'Ambe Mbong',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          )
                        )
                    ],),
                ),
                //SizedBox(width: 170),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    onPressed: () {
                        showModalBottomSheet<void>(       //modal popup to enable edits
                        context: context,
                        builder: (BuildContext context) {
                          return SizedBox(
                            height: 300,
                            child: Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Enter your username',
                                          style: TextStyle(
                                            fontSize: 18.0
                                          ),
                                        ),
                                        TextField(
                                          controller: usernameController,
                                          decoration: const InputDecoration(
                                            border: UnderlineInputBorder(),
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 50),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                          // primary: const Color(0xffb80f0a),
                                            foregroundColor: const Color(0xffb80f0a),
                                          ),
                                          onPressed: () => Navigator.pop(context),
                                          child: const Text('Cancel'),
                                        ),
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                          // primary: const Color(0xffb80f0a),
                                            foregroundColor: const Color(0xffb80f0a),
                                          ),
                                          onPressed: () => Navigator.pop(context),
                                          child: const Text('Save'),
                                    ),
                                      ],
                                    ),
                            
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    icon: const Icon(Icons.edit),
                    iconSize: 30.0,
                    color: const Color(0xffb80f0a),
                  ),
                ),
              ],),
             // SizedBox(height: 20.0),
    
              const Divider(
                height: 60.0,
                color: Color.fromARGB(255, 204, 203, 203)
              ),
    
    
    
            //Email
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.email,
                    color: Colors.grey,
                  ),
                ),
                //SizedBox(width: 20.0),
    
                const Expanded(
                  flex: 7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(
                          color: Colors.grey,
                        )),
                        Text(
                          'ambembongnwi@gmail.com',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          )
                        )
                    ],),
                ),
              //  SizedBox(width: 170),
               Expanded(
                  flex: 1,
                  child: IconButton(
                    onPressed: () {
                        showModalBottomSheet<void>(         //modal popup to enable edits
                        context: context,
                        builder: (BuildContext context) {
                          return SizedBox(
                            height: 300,
                            child: Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Enter your email',
                                          style: TextStyle(
                                            fontSize: 18.0
                                          ),
                                        ),
                                        TextField(
                                          controller: emailController,
                                          decoration: const InputDecoration(
                                            border: UnderlineInputBorder(),
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 50),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                          // primary: const Color(0xffb80f0a),
                                            foregroundColor: const Color(0xffb80f0a),
                                          ),
                                          onPressed: () => Navigator.pop(context),
                                          child: const Text('Cancel'),
                                        ),
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                          // primary: const Color(0xffb80f0a),
                                            foregroundColor: const Color(0xffb80f0a),
                                          ),
                                          onPressed: () => Navigator.pop(context),
                                          child: const Text('Save'),
                                    ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );                 
                    },
                    icon: const Icon(Icons.edit),
                    iconSize: 30.0,
                    color: const Color(0xffb80f0a),
                  ),
                ),
              ],),
              //SizedBox(height: 20.0),
    
              const Divider(
                height: 60.0,
                color: Color.fromARGB(255, 204, 203, 203)
              ),
    
    
            //phone number
            Row(
              children: [
                const Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.phone,
                    color: Colors.grey,
                  ),
                ),
               // SizedBox(width: 20.0),
    
                const Expanded(
                  flex: 7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Phone',
                        style: TextStyle(
                          color: Colors.grey,
                        )),
                        Text(
                          '+237 681891868',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          )
                        )
                    ],),
                ),
               // SizedBox(width: 170),
               Expanded(
                  flex: 1,
                  child: IconButton(
                    onPressed: ()  {
                      showModalBottomSheet<void>(           //modal popup to enable edits
                        context: context,
                        builder: (BuildContext context) {
                          return SizedBox(
                            height: 300,
                            child: Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Enter your phone number',
                                          style: TextStyle(
                                            fontSize: 18.0
                                          ),
                                        ),
                                        TextField(
                                          controller: phoneController,
                                          keyboardType: const TextInputType.numberWithOptions(),
                                          decoration: const InputDecoration(
                                            border: UnderlineInputBorder(),
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 50),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                          // primary: const Color(0xffb80f0a),
                                            foregroundColor: const Color(0xffb80f0a),
                                          ),
                                          onPressed: () => Navigator.pop(context),
                                          child: const Text('Cancel'),
                                        ),
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                          // primary: const Color(0xffb80f0a),
                                          foregroundColor: const Color(0xffb80f0a),
                                          ),
                                          onPressed: () => Navigator.pop(context),
                                          child: const Text('Save'),
                                    ),
                                      ],
                                    ),
                            
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    icon: const Icon(Icons.edit),
                    iconSize: 30.0,
                    color: const Color(0xffb80f0a),
                  ),
                ),
              ],)
          ],
          
        )
        ),
    )
    );
  }
}