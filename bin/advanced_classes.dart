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

  final child = SomeChild().doSomeWork();
}
