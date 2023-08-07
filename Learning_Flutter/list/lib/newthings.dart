class Newthing {

  late String text;       //late keyword used to indicate a variable will be initialised at a later time after it has been declared.
  late String author;

  // Newthing(String text, String author){       //constructor method used to create and initialise objects of a class.
  //   this.text = text;                 //taking and displaying parameters from object for this instance.
  //   this.author = author;
  // }


  //Using named parameters. Add {} to the constructor
// Newthing({required String text, required String author}){       //constructor method used to create and initialise objects of a class.
//     this.text = text;                 //taking and displaying parameters from object for this instance.
//     this.author = author;
//   }
// }


//  SHORTFORM FOR USING NAMED PARAMETERS.
Newthing({ required this.text, required this.author });
}

//USING NAMED PARAMETERS. Here u add the parameter as the key, then the text u wish to display.
Newthing mynewthing = Newthing(text: 'The love of Money is the root to all evil', author: 'Moi');


//USING UNNAMED PARAMETERS.
//if we wish to create a new thing and author in future.
//name of type(class), new var name  are asigning, = constructor with data to be passed for this instance
//Newthing mynewthing = Newthing('Money is the roo to all evil', 'David Michealson');