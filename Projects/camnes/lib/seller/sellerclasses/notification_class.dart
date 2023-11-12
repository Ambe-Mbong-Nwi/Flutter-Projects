//notification class with necessary properties so all other notifications can use them in future.

class NewNotification {

  late String title;      //late keyword meaning the variable will be initialised at a later time after it has been declared.
  late String details;
  late String time;


//Shortform for using named parameters. The job of the constructor has also been applied here.
NewNotification({ required this.title, required this.details, required this.time });

}