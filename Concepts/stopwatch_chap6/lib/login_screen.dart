import 'package:flutter/material.dart';
import 'package:stopwatch/stopwatch.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

//controllers to handle our textfield properties and globalkey to handle our form
///textediting controllers are objects used to manipulate textfields. eg here extracting current value from textfield.
final _nameController = TextEditingController();
final _emailController = TextEditingController();
final _formKey = GlobalKey<FormState>();//globalkey is used to get access to forms state class from outside build method.
                                        //formstate class has public method validate that calls validator on all children.

class _LoginScreenState extends State<LoginScreen> { 
 // bool loggedIn = false;        //know whether user is logged in or not and forking the widget tree accordingly
  String name = '';
  @override
  Widget build(BuildContext context) {

    @override               //dispose() method called when stateful widget is removed from the tree.
    void dispose() {        //releases the state object and resources associated with the controllers when no longer needed
      _emailController.dispose();
      _nameController.dispose();
      super.dispose();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
      //  child: loggedIn ? _buildSuccess() : _buildLoginForm(),
        child: _buildLoginForm(),
      )
    );
  }


//if u logged in, your name is displayed else the login form.
// Widget _buildSuccess() {
//   return Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       const Icon(Icons.check, color: Colors.orangeAccent),
//      // Text('Hi $name')
//     ],
//   );
// }


Widget _buildLoginForm() {
  return Form(      //if all children formfield validator functions return null, then form is considered valid.
    key: _formKey,
    child: Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          TextFormField(        //name field
            controller: _nameController,
            decoration: const InputDecoration(labelText: 'Runner'),
            validator: (text) => text!.isEmpty ? 'Enter the runner\'s name.' : null,
          ),

          TextFormField(        //email field. uses a regular expression to validate its data
            controller: _emailController,
              keyboardType: TextInputType.emailAddress,     //use email keyboard
              decoration: const InputDecoration(labelText: 'Email'),
                  validator: (text) {
                    if (text!.isEmpty) {
                      return 'Enter the runner\'s email.';
                    }
                    final regex = RegExp('[^@]+@[^.]+..+');
                    if (!regex.hasMatch(text)) {
                      return 'Enter a valid email';
                    }
                    return null;
                  },
          ),

          const SizedBox(height: 20),     //to give some horizontal space
          ElevatedButton(                 //button to validate form using the validate method when clicked.
              onPressed: _validate,
              child: const Text('Continue'),
          ),
        ],
      )
    )
  );
}

//validation method. if ok navigation method takes you to next screen
void _validate() {
  final form = _formKey.currentState;
    if (form?.validate() ?? false) {
      return;
    }
    // setState(() {
    //   loggedIn = true;
    //   name = _nameController.text;
    // });

  final name = _nameController.text;
  final email = _emailController.text;
  //Navigator.of(context).push(             //default back arrow present
    Navigator.of(context).pushReplacement(      //default back arrow absent
    MaterialPageRoute(        //represents routes. expects builder instead of direct child
      builder: (_) =>  StopWatch(name: name, email: email),
      ),
  );
}
}