import 'package:flutter/material.dart';

class FeedbackPage extends StatelessWidget {
  const FeedbackPage({super.key});

  @override
  Widget build(BuildContext context) {

    var emailController = TextEditingController();
    var subjectController = TextEditingController();
    var emailContentController = TextEditingController();

    Widget yourEmail() {
      return Container(
        height: 50,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 1,
              //offset: Offset(2, 1),
            )
            ]
        ),
         child: TextFormField(
          validator: (value){
          if(value == null || value.isEmpty) {
            return "Enter your Email";
          }
          return null;
        },
         controller: emailController,
         decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          hintText: "Enter your Email",
          hintStyle: TextStyle(
            fontWeight: FontWeight.w300,
          )
        ),
         )
      );
    }

  Widget emailSubject() {
        return Container(
          height: 50,
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 1,
                //offset: Offset(2, 1),
              )
              ]
          ),
          child: TextFormField(
            validator: (value){
            if(value == null || value.isEmpty) {
              return "Enter Email Subject";
            }
            return null;
          },
          controller: subjectController,
          decoration: const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            hintText: "Email Subject",
            hintStyle: TextStyle(
            fontWeight: FontWeight.w300,
          ),
          ),
          )
        );
      }


     Widget emailContent() {
      return Container(
        height: 250,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius:BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 1,
              //offset: Offset(2, 1),
            )
            ]
        ),
         child: TextFormField(
          validator: (value){
          if(value == null || value.isEmpty) {
            return "Enter Email Content";
          }
          return null;
        },
         controller: emailContentController,
         decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          hintText: "Enter Email Content",
          hintStyle: TextStyle(
            fontWeight: FontWeight.w300,
          )
        ),
         )
      );
    }



    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xffb80f0a),
      ),

      body: SingleChildScrollView(      //so keyboard doesnt push content out of the page.
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Our Contacts',
                 style: TextStyle(
                          color: Colors.black,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                 )
              ),
      
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text(
                'Mobile:',
                style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300
                 )
                ),
                Text(
                  '+237 681 89 18 68',
                  style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300
                 )
                )
              ],
              ),
      
               const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text(
                'Email:',
                style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300
                 )
                ),
                Text(
                  'ambenchang@gmail.com',
                  style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300
                 )
                )
              ],
              ),
      
              const SizedBox(height: 30.0),
              
              const Text(
                'Feedback/Suggestions',
                 style: TextStyle(
                          color: Colors.black,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                 )
              ),
      
              const SizedBox(height: 20),
      
              yourEmail(),
      
              const SizedBox(height: 20),
      
              emailSubject(),
      
              const SizedBox(height: 20),
      
              emailContent(),
      
              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color(0xffb80f0a), 
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Send',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    )),
                ],
              )

            ],),
        ),
      )
    );
  }
}