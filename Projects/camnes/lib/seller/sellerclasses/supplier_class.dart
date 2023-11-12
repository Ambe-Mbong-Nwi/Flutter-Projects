//supplier class with necessary properties so all other new suppliers can use them in future.
class NewSupplier {

  late String fixture;        //late keyword meaning the variable will be initialised at a later time after it has been declared.
  late String name;
  late int phone;
  late String email;
  late String date;
  late String note;



//Shortform for using named parameters. The job of the constructor has also been applied here.
NewSupplier({ required this.fixture, required this.name, required this.phone, required this.email, required this.date, required this.note });

}