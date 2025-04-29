enum Grade { A, B, C, D, F }

class Person {
  String givenName, sureName;

  Person(this.givenName, this.sureName);

  String get fullName => '$givenName $sureName';

  @override
  String toString() => fullName;
}

// class Student {
//   String givenName, sureName;
//   var grades = <Grade>[];

//   Student(this.givenName, this.sureName);

//   String get fullName => '$givenName $sureName';

//   @override
//   String toString() => fullName;
// }

// Insted of doing this we can extend Person class

class Student extends Person {
  Student(String first, String last) : super(first, last);
  List<Grade> grades = [];

  @override
  String get fullName => '$givenName $sureName';
}

// Multi-level hierarchy
class SchoolBandMember extends Student {
  SchoolBandMember(String firstName, String surName)
      : super(firstName, surName);
  static const minimumPracticeTime = 2;
}

// Sibling classes of Student class
class StudentAthlete extends Student {
  StudentAthlete(String givenName, String surName) : super(givenName, surName);
  bool get isEligible => grades.every((grade) => grade != Grade.F);
}

class SomeParent {
  void doSomeWork() {
    print('Parent working');
  }
}

class SomeChild extends SomeParent {
  // the things is first doSomeWork() is same as Super/Parent class
  // so when it need to used doSomeWork() needs to override
  // So we are changing doSomeWork() function. Inside the function
  // we called parents doSomeWork() not overriding direct use
  // So super.doSomeWork() is nessecery
  @override
  void doSomeWork() {
    super.doSomeWork();
    print('Child doint some other work');
  }
}

// Mini-exercises 1
class Fruit {
  String colour;

  Fruit(this.colour);

  void describeColor() {
    print("colour is $colour");
  }
}

class Melon extends Fruit {
  Melon(super.colour);
}

class Watermelon extends Melon {
  Watermelon(super.waterMelonColour);

  @override
  void describeColor() {
    print("Watermelon colour is $colour");
  }
}

class Cantaloupe extends Melon {
  Cantaloupe(super.cantaloupeColour);

  @override
  void describeColor() {
    print("cantaloupe colour is $colour");
  }
}

// Abstract classes
abstract class Animal {
  bool isAlive = true;
  void eat();
  void move();
}

// class Platypus extends Animal {
//   Platypus();
//   @override
//   void eat() {
//     print('Munch munch');
//   }

//   @override
//   void move() {
//     print('Glide glide');
//   }

//   void layEggs() {
//     print('Plop plop');
//   }
// }

// Using a Interfaces
// using factory
abstract class DataRepository {
  factory DataRepository() => FakeWebServer();
  double? fetchTemperature(String city);
}

class FakeWebServer implements DataRepository {
  @override
  double? fetchTemperature(String city) {
    return 42.0;
  }
}

// Mini-exercises 2
abstract class Bottle {
  // factory Bottle() => SodaBottle(); // Tightly coupled Not testing feasible
  void open();
}

class SodaBottle implements Bottle {
  @override
  void open() {
    print('Fizz fizz');
  }
}

class BottleFactory {
  static Bottle createBottle() => SodaBottle(); // Now it's Losely coupled
}

// Mixins
mixin EggLayer {
  void layEggs() {
    print('Plop Plop');
  }
}

mixin Flyer {
  void fly() {
    print('Swoosh swoosh');
  }
}

abstract class Bird {
  void fly();
  void layEggs();
}

class Robin extends Bird with EggLayer, Flyer {
  @override
  void fly() {
    print('Swoosh swoosh');
  }

  // If a mixin provides an implementation of an abstract method, you don't have
  // to implement it again manually in your class
  // @override
  // void layEggs() {
  //   print('Plop ');
  // }
}

// Platypus class commented cause this class using for Challenges
// class Platypus extends Animal with EggLayer {
//   Platypus();
//   @override
//   void eat() {
//     print('Munch munch');
//   }

//   @override
//   void move() {
//     print('Glide glide');
//   }

//   // void layEggs() {
//   //   print('Plop plop');
//   // }
// }

// Mini-exercises 3
mixin Adder {
  void sum(double firstValue, double secondValue) {
    print(firstValue + secondValue);
  }
}

class Calculator with Adder {}

// Extension methods

extension NumberExtension on int {
  bool isDivisibleBy(int other) {
    return this % other == 0;
  }
}

// String encode(String input) {
//   //  StringBuffer() a special tool in Dart to build strings efficiently
//   // like an empty box where you can add characters one by one.
//   final output = StringBuffer();

//   for (final codepoint in input.runes) {
//     output.writeCharCode(codepoint + 1);
//   }
//   return output.toString();
// }

extension Encoding on String {
  // Converting to an extension
  String get encoded {
    return _code(1, this);
  }
}

extension Decoding on String {
  // Converting to an extension
  String get decoded {
    return _code(-1, this);
  }
}

// Refactoring to remove code duplication
//  StringBuffer() a special tool in Dart to build strings efficiently
// like an empty box where you can add characters one by one.
String _code(int step, String input) {
  final output = StringBuffer();
  for (var codepoint in input.runes) {
    output.writeCharCode(codepoint + step);
  }
  return output.toString();
}
// Note:
// While we’re inside String, there’s no need to
// pass 'input' as an argument. If we need a reference to
// the string object, we can use the 'this' keyword.

// Enum extension example
enum ProgrammingLanguage { dart, swift, javaScript }

extension EnumExtention on ProgrammingLanguage {
  bool get isStronglyTyped {
    switch (this) {
      case ProgrammingLanguage.dart:
      case ProgrammingLanguage.swift:
        return true;
      case ProgrammingLanguage.javaScript:
        return false;
      default:
        throw Exception('Unknown Programming Language $this');
    }
  }
}

// Challenges Advance Class
// Challenge 1: Heavy monotremes
class Platypus extends Animal with EggLayer implements Comparable<Platypus> {
  int weight;

  Platypus(this.weight);
  @override
  void eat() {
    print('Munch munch');
  }

  @override
  void move() {
    print('Glide glide');
  }

  // void layEggs() {
  //   print('Plop plop');
  // }
  @override
  int compareTo(other) {
    return weight.compareTo(other.weight);
  }

  @override
  String toString() {
    return 'Platypus(weight: $weight)';
  }
}

// Challenge 2: Fake notes
abstract interface class Note {
  factory Note() => FakeNotes();
  void note();
}

class FakeNotes implements Note {
  @override
  void note() {
    print('Fake Notebook');
  }
}

// Challenge 3: Time to code
extension TimeDuration on int {
  Duration get minutes => Duration(minutes: this);
}

// Writes give me a encoded megssage
extension WriterTxt on String {
  String get writerEncoded {
    return _specialCode(-4, this);
  }
}

String _specialCode(int step, String input) {
  StringBuffer output = StringBuffer();
  for (var i = 0; i >= step; i--) {
    for (var codepoint in input.runes) {
      output.writeCharCode(codepoint + i);
    }
  }
  return output.toString();
}
