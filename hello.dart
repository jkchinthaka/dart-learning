void main() {
  //Explicitly typed variable
  int age = 30;
  double height = 5.9;
  String name = "John Doe";
  bool isStudent = true;

  // using var keyword
  var city = "colombo";
  var temperatutre = 30.56;

  print("Name: $name");
  print("Age: $age"); 
  print ("Height: $height");
  print("City: $city");
  print("Temperature: $temperatutre");
  print("Is Student: $isStudent");
}

//dart is a statically typed language, but you can use the var keyword to let the compiler infer the type of the variable.
//The var keyword is used to declare a variable without specifying the type explicitly. The type of the variable is inferred from the value assigned to it.
