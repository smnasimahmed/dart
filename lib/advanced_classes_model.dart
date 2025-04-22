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

// Mini-exercises
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
  Cantaloupe(String cantaloupeColour) : super(cantaloupeColour);

  @override
  void describeColor() {
    print("cantaloupe colour is $colour");
  }
}
