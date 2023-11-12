import 'package:flutter/material.dart';

class TilesCalculation extends StatefulWidget {
  const TilesCalculation({super.key});

  @override
  State<TilesCalculation> createState() => _TilesCalculationState();
}

class _TilesCalculationState extends State<TilesCalculation> {
 // TilesCalculation({super.key});
  final List<String> dimensions = [ '20X20', '20X30', '25X40', '30X30', '30X40', '40X40', '60X60' ];

  //initial selected value
  String chooseDimension = '20X20';

  @override
  Widget build(BuildContext context) {

    

    ////TextEditingController class notifies listeners when changes are made to a text field. Listeners can then read the text, etc
    var areaController = TextEditingController();


    //DIMENSION FIELD
    Widget myDimension() {
      return DropdownButton<String>(
        value: chooseDimension,       //initial value
        items: dimensions.map((String dimension) {                //displaying the list of dimensions
          return DropdownMenuItem<String>(
            value: dimension,
            child: Text(dimension),
            );
        }).toList(),
        onChanged: (String? newValue) {                //click new dimension, the newvalue becomes the default chooseDimension value now displayed.
          setState(() {
            chooseDimension = newValue!;
          });
        }
        );
    }


    //SURFACE AREA FIELD
    Widget buildArea() {
      return Container(
      height: 30,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(2, 1),
            blurRadius: 1,
            color: Colors.grey,
          )
        ]
      ),
      child: TextFormField(
        validator: (value){
          if(value == null || value.isEmpty) {
            return "Area";
          }
          return null;
        },
        controller: areaController,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          hintText: "Input the Area",
        ),
      )
      );
    }



  //display
    return Scaffold(
       appBar: AppBar(
        automaticallyImplyLeading: false,                 //removes automatic back arrow
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xffb80f0a),
        centerTitle: true,
        title: const Text(
          'Tiles Calculation',
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
              const Text(
              'What quantity of tiles do you need?',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 22.0
              )
            ),

            //clip art
             const Center(
              child: Image(
                image: AssetImage('assets/images/final.png'),
                width: 250)
             ),

             const Divider(
              height: 60.0,
              color: Colors.grey
             ),

               //dimensions
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  const Text('Choose the Tile Dimension:',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold
                  ),
                ),

                myDimension(),
                //DropdownMenuExample(),
              ],),
            
              const SizedBox(height: 20),

              //area
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Input Area in Metres Square:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                )),

                const SizedBox(height: 20.0),

                buildArea(),
              ],),

              const SizedBox(height: 20),

              //calculate button
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(onPressed: () {},
                     style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffb80f0a),        //background color of button
                        foregroundColor: Colors.white,     // text color
                        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical:15.0 ),
                      ),
                    child: const Text('Calculate'),
                    ),
                ],
              ),

              const SizedBox(height: 40),

              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Number of Cartons Needed:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                )),

                SizedBox(width: 20.0),

                Text('12',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffb80f0a), 
                )),
                ],)
            ]),
        ),
    ),
    );
  }
}


// class DropdownMenuExample extends StatefulWidget {
//   const DropdownMenuExample({super.key});

//   @override
//   State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
// }

// class _DropdownMenuExampleState extends State<DropdownMenuExample> {
//   int dropdownValue = dimension.first;

//   @override
//   Widget build(BuildContext context) {
//     return DropdownMenu<int>(
//       initialSelection: dimension.first,
//       onSelected: (int? value) {
//         // This is called when the user selects an item.
//         setState(() {
//           dropdownValue = value!;
//         });
//       },
//       dropdownMenuEntries: dimension.map<DropdownMenuEntry<int>>((int value,) {
//         return DropdownMenuEntry<int>(value: value, label: value);
//       }).toList(),
//     );
//   }
// }
