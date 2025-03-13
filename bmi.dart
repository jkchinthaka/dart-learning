import 'dart:io';

void main (){
  stdout.write("Enter your weight in kg: ");
  double weight = double.parse(stdin.readLineSync()!);

  stdout.write("Enter your height in cm: ");
  double height = double.parse(stdin.readLineSync()!);

  double bmi = weight / ((height / 100) * (height / 100));

  print (" \n Your BMI is : ${bmi.toStringAsFixed(2)}");
  if (bmi < 18.5){
    print ("category : Normal weight ");
  } else if (bmi < 24.9){
    print ("category : Normal weight ");
  } else if (bmi < 29.9){
    print ("category : Overweight ");
  } else {
    print ("category : Obesity ");
  }
}