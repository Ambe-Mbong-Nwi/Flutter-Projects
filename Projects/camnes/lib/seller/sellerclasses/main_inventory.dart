//main inventory class with necessary properties so all other new ones can use them in future.
class NewMainInventory {

  late String fixture;        //late keyword meaning the variable will be initialised at a later time after it has been declared.
  late int quantity;
  late int categories;

//Shortform for using named parameters. The job of the constructor has also been applied here.
NewMainInventory({ required this.fixture, required this.quantity, required this.categories });

}