import 'encapsulation.dart';

void main() {
  // // Encapsulation
  // Actually this is the outer world
  // where I can't use private variables of a class
  Student student = Student(); // Here Student() is a default constructor

  // print(student._name = 'alex'); // Here _name can't be used this is encapsulation
  student.name = 'alex'; // Using setter
  student.age = 20; // Using Setter

  print("${student.name}'s age is ${student.age} years old"); // Using getter
}
