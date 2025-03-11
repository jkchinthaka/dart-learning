import 'dart:io';
void main (){
  //asking for user input 
  stdout.write("Enter your name: ");
  String? name = stdin.readLineSync();
  // accepts input as a string 

  stdout.write("Enter your age: ");
  int age = int.parse(stdin.readLineSync()!);
  // accepts input as a string and convert it to an integer

  stdout.write("Enter your city: "); 
  String? city = stdin.readLineSync();
  // accepts input as a string

  print("Name: $name");
  print("Age: $age");
  print("City: $city");


}