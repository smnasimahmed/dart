// import 'encapsulation.dart';
// import 'abstraction.dart';
// import 'Inheritance.dart';
import 'polymorphism.dart';

void main() {
  // // // Encapsulation ============
  // // Actually this is the outer world
  // // where I can't use private variables of a class
  // Student student = Student(); // Here Student() is a default constructor

  // // print(student._name = 'alex'); // Here _name can't be used this is encapsulation
  // student.name = 'alex'; // Using setter
  // student.age = 20; // Using Setter

  // print("${student.name}'s age is ${student.age} years old"); // Using getter

  // // // Abstraction ===============
  // Dog dog = Dog();
  // Cat cat = Cat();

  // dog.makeSound();
  // cat.makeSound();
  // // // Abstraction Practice
  // Circle cicle = Circle(10.2);
  // cicle.display();

  // Rectangle(height: 10, width: 12.3).display();

  // // // Inheritance ================
  // Cat()
  //   ..meow()
  //   ..eat()
  //   ..sleep();

  // Dog()
  //   ..bark()
  //   ..eat()
  //   ..sleep();
  // // Inheritance Practice
//   Car()
//     ..start()
//     ..honk()
//     ..stop();

//   Motorcycle()
//     ..start()
//     ..rev()
//     ..stop();

  // // Polymorphism

  // Changing object on same abstract function
  List<Vehicle> garage = [Car(), Motorcycle(), Car()];

  // all function are same for all objects
  for (Vehicle vehicle in garage) {
    vehicle.start();
    vehicle.drive();
    // if we want to add sound effect
    vehicle.soundEffect();
    vehicle.stop();
    print('---');
  }
}
// Inheritance = Parent–Child connection
// Abstraction = What should the child do
// Polymorphism = How each child does it differently