//detailed inventory class with necessary properties so all other new ones can use them in future.
class NewDetailedInventory {

  late String description;        //late keyword meaning the variable will be initialised at a later time after it has been declared.
  late int serialN;
  late DateTime date;
  late int inputQuantity;
  late int outputQuantity;
  late int balance;

//Shortform for using named parameters. The job of the constructor has also been applied here.
NewDetailedInventory({ required this.description, required this.serialN, required this.date, required this.outputQuantity, required this.inputQuantity, required this.balance });

}