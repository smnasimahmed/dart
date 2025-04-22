import 'package:advanced_classes/advanced_classes_model.dart';

void main() {
  // // Extending classes
  final jon = Person('jon', 'Snow');
  final jane = Student('Jane', 'Snow');
  print(jon.fullName);
  print(jane.fullName);

  final historyGrade = Grade.B;
  jane.grades.add(historyGrade);
  // add function works cause enum Grade return list

  SomeChild().doSomeWork(); // it will print overriden and own class method

  final jessie = SchoolBandMember('Jessie', 'jones');
  print(jessie);

  final marty = StudentAthlete('Marty', 'McFly');
  print(marty);

  final student = [jane, jessie, marty];
  //though all types are diffrent but dart will show the mother type

  print(jessie is Object); // True
  print(jessie is! StudentAthlete); // True

  // Mini-exercises
  Watermelon("Green").describeColor();
  Cantaloupe("Yellow").describeColor();
}
