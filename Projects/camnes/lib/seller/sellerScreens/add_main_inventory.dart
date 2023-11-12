import 'package:flutter/material.dart';

class AddMainInventory extends StatelessWidget {
  const AddMainInventory({super.key});

  @override
  Widget build(BuildContext context) {
  
////TextEditingController class notifies listeners when changes are made to a text field. Listeners can then read the text, etc
     //TextEditingController class notifies listeners when changes are made to a text field. Listeners can then read the text, etc
    var fixtureController = TextEditingController();
    var quantityController = TextEditingController();
    var categoriesController = TextEditingController();


    //FULLNAME FIELD
    Widget buildFixture() {
      return Container(
      height: 50,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(2, 1),
            blurRadius: 2,
            color: Colors.grey,
          )
        ]
      ),
      child: TextFormField(
        validator: (value){
          if(value == null || value.isEmpty) {
            return "Enter the New Fixture";
          }
          return null;
        },
        controller: fixtureController,
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          //hintText: "Enter your Fullname",
        ),
      )
      );
    }
    


    //QUANTITY FIELD
    Widget buildQuantity() {
      return Container(
      height: 50,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(2, 1),
            blurRadius: 2,
            color: Colors.grey,
          )
        ]
      ),
      child: TextFormField(
        keyboardType: TextInputType.number,
        validator: (value){
          if(value == null || value.isEmpty) {
            return "Enter the Total Present Quantity";
          }
          return null;
        },
        controller: quantityController,
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        //  hintText: "Enter your username",
        ),
      )
      );
    }
    

    //CATEGORIES FIELD
    Widget buildCategories() {
      return Container(
      height: 50,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(2, 1),
            blurRadius: 2,
            color: Colors.grey,
          )
        ]
      ),
      child: TextFormField(
        keyboardType: TextInputType.number,
        validator: (value){
          if(value == null || value.isEmpty) {
            return "Enter the Number of Sub-Categories";
          }
          return null;
        },
        controller: categoriesController,
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
         // hintText: "Enter your phone number",
        ),
      )
      );
    }
    


    return Scaffold(
    resizeToAvoidBottomInset : true,
    appBar: AppBar(
      iconTheme: const IconThemeData(color: Colors.white),  //changing default back arrow icon color.
      title: const Text(
        'Add Inventory',
        style: TextStyle(
          color: Colors.white,
        )
      ),
      backgroundColor: const Color(0xffb80f0a),
      centerTitle: true,
    ),


    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            //fixture
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const SizedBox(height: 30.0),
                
                //fixture
                const Text('Enter the New Fixture:',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500
                )),
                const SizedBox(height: 10.0),
                buildFixture(),
              ],),

              const SizedBox(height: 30.0),

              //quantity
               Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Enter the Total Present Quantity:",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500
                )),
                const SizedBox(height: 10.0),
                buildQuantity(),
              ],),

               const SizedBox(height: 30.0),

              //categories
               Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Enter the Number of Sub-Categories:",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500
                )),
                const SizedBox(height: 10.0),
                buildCategories(),
              ],),

              const SizedBox(height: 30.0),

              //save button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);  
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffb80f0a),        //background color of button
                    foregroundColor: Colors.white,     // text color
                    padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical:15.0 ),
                  ),
                  child: const Text(
                    'SAVE',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0 ),)),
                ],
              ),
    
            
          ],
          
        )
        ),
    )
    );
  }
}