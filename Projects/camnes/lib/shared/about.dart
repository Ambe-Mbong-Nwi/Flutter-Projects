import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xffb80f0a),
        centerTitle: true,
        // title: const Text(
        //   'About Us',
        // ),
      ),

      body: Scrollbar(
        child: SingleChildScrollView(
      
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //introduction
            children: [
              Container(
                height: 300,
                color: const Color(0xffb80f0a),
                child: const Column(
                  children: [
                    
                    SizedBox(height: 10.0),
        
                    Padding(
                      padding: EdgeInsets.all(25.0),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              "We're on a mission to make ",
                              style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 25.0,
                                 fontWeight: FontWeight.w500
                                 ),
                              ),
        
                              Text(
                              "your bathroom experience as",
                              style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 25.0,
                                 fontWeight: FontWeight.w500
                                 ),
                              ),
        
                              Text(
                              "comfortable as possible.",
                              style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 25.0,
                                 fontWeight: FontWeight.w500
                                 ),
                              ),
      
                              SizedBox(height: 30.0),
      
                              Text(
                              "We offer you extremely comfortable and high",
                              style: TextStyle(
                                 color: Color.fromARGB(255, 228, 219, 219),
                                 fontSize: 15.0,
                                 fontWeight: FontWeight.w300
                                 ),
                              ),
      
                              Text(
                              "quality bathroom fixtures at affordable prices.",
                              style: TextStyle(
                                 color: Color.fromARGB(255, 228, 219, 219),
                                 fontSize: 15.0,
                                 fontWeight: FontWeight.w300
                                 ),
                              ),
      
                              Text(
                              "Why wait? Shop with us now!!!",
                              style: TextStyle(
                                 color: Color.fromARGB(255, 228, 219, 219),
                                 fontSize: 15.0,
                                 fontWeight: FontWeight.w300
                                 ),
                              ),
                          ],
                        ),
                      ),
                    )
                  ],)
                ),
      
      
            // our Story
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.0),
      
                  Text(
                    'Our Story',
                    style: TextStyle(
                      color: Color(0xffb80f0a),
                      fontSize: 25.0,
                      fontWeight: FontWeight.w500
                    )
                  ),
      
                  SizedBox(height: 10.0),
      
                  Text(
                    'Camnes is a small family-owned business specialised in selling bathroom fixtures such as tiles, toilet pots, sinks, and toilet taps. The business was created from a place of love for bathroom comfort by the couple Camillus and Ernestine. This establishment has been in business for one year now since its creation in 2022.',
                    style: TextStyle(
                      fontSize: 13.0,
                    ),
                  ),
      
                  SizedBox(height: 10.0),
      
                  Text(
                    'Our love for bathroom comfort push us to associate ourselves with extremely high quality goods, making us unique in the industry. We love to share this comfort with any one interested in it.',
                    style: TextStyle(
                      fontSize: 13.0,
                    ),
                  )
                ],),
            ),
      
      
            //Our founders
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  const Text(
                      'Our Founders',
                      style: TextStyle(
                        color: Color(0xffb80f0a),
                        fontSize: 25.0,
                        fontWeight: FontWeight.w500
                      )
                    ),

                    const SizedBox(height: 10.0),
      
                    const Text(
                    'Camnes was founded by the lovely couple Camiluss and Ernestine.',
                    style: TextStyle(
                      fontSize: 13.0,
                    ),
                  ),

                  const SizedBox(height: 20.0),

                  //image of founder I
                   Container(
                    height: 300,
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/ambe.jpg"),fit: BoxFit.fill),
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                  ),

                  const SizedBox(height: 10.0),

                  const Text(
                    'lorem Lorem iNulla facilisi. Proin sit amet semper justo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed gravida turpis vel finibus dapibus. Nullam eleifend mauris quis nisi hendrerit, at tincidunt odio bibendum.',
                    style: TextStyle(
                      fontSize: 13.0,
                    ),
                  ),

                  const SizedBox(height: 40.0),

                  //image of second founder
                   Container(
                    height: 300,
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/ambe.jpg"),fit: BoxFit.fill),
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                  ),

                  const SizedBox(height: 10.0),

                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipis ac eleifeenectus et netus et malesuada fames ac turpis egestas. Sed gravida turpis vel finibus dapibus. Nullam eleifend mauris quis nisi hendrerit, at tincidunt odio bibendum.',
                    style: TextStyle(
                      fontSize: 13.0,
                    ),
                  ),
                ],),
            ),


            //our location
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                      'Our Location',
                      style: TextStyle(
                        color: Color(0xffb80f0a),
                        fontSize: 25.0,
                        fontWeight: FontWeight.w500
                      )
                    ),

                    SizedBox(height: 10.0),
      
                    Text(
                    'We are located in Yaounde, Simbock.',
                    style: TextStyle(
                      fontSize: 13.0,
                    ),
                  ),
                ],),
            ),
      

            //our contact
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                      'Our Contacts',
                      style: TextStyle(
                        color: Color(0xffb80f0a),
                        fontSize: 25.0,
                        fontWeight: FontWeight.w500
                      )
                    ),

                    SizedBox(height: 10.0),
      
                   Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text(
                'Mobile:',
                style: TextStyle(
                      fontSize: 13.0,
                    ),
                ),
                Text(
                  '+237 681 89 18 68',
                  style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold
                    ),
                )
              ],
              ),
      
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text(
                'Email:',
                style: TextStyle(
                      fontSize: 13.0,
                    ),
                ),
                Text(
                  'ambenchang@gmail.com',
                  style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold
                    ),
                )
              ],
              ),
      
              SizedBox(height: 30.0),
                ],),
            )
      
      
            ],
          ),
      
           
        ),
      )
    );
  }
}