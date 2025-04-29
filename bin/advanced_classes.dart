import 'dart:developer';

import 'package:advanced_classes/advanced_classes_model.dart';
import 'package:advanced_classes/locator.dart';
import 'package:advanced_classes/services/weather_service.dart';

void main() async {
  // // // Extending classes
  // final jon = Person('jon', 'Snow');
  // final jane = Student('Jane', 'Snow');
  // print(jon.fullName);
  // print(jane.fullName);

  // final historyGrade = Grade.B;
  // jane.grades.add(historyGrade);
  // // add function works cause enum Grade return list

  // SomeChild().doSomeWork(); // it will print overriden and own class method

  // final jessie = SchoolBandMember('Jessie', 'jones');
  // print(jessie);

  // final marty = StudentAthlete('Marty', 'McFly');
  // print(marty);

  // final student = [jane, jessie, marty];
  // //though all types are diffrent but dart will show the mother type

  // print(jessie is Object); // True
  // print(jessie is! StudentAthlete); // True

  // // Mini-exercises
  // Watermelon("Green").describeColor();
  // Cantaloupe("Yellow").describeColor();

  // final platypus = Platypus();
  // print(platypus.isAlive);
  // platypus.eat();
  // platypus.move();
  // platypus.layEggs();
  // print(platypus); // Runtime Type printing

  // // Using a Interfaces
  // final DataRepository repository = FakeWebServer();
  // final tempirature = repository.fetchTemperature('Berlin');
  // //   But this defeats the whole point of trying to keep the
  // // implementation details separate from the business logic.
  // // cause using directly concrete class rater implimentation class

  final repository = DataRepository();
  final temperature = repository.fetchTemperature('Berlin');

  print(temperature);

  // get_x
  setupLocator(useFake: false);

  final weatherService = getIt<WeatherService>();
  final temp = await weatherService.getTemperature('Berlin');
  print("Current temperature in Dhaka: $temp°C");

  // Mini-exercises 2
  final sodaBottleRipository = BottleFactory.createBottle();
  sodaBottleRipository.open();

  // Mixins
  // final platypus = Platypus();
  // final robin = Robin();

  // platypus.layEggs();
  // robin.layEggs();

  // Mini-exercises 3
  final sum = Calculator();
  sum.sum(5, 12);

  // Extension methods
  int number = 12;
  print(number.isDivisibleBy(3));

  // final original = 'abc';
  // final secret = encode(original);
  // print(secret);

  final original = 'abc';
  final secret = original.encoded;
  print(secret);
  final revealed = secret.decoded;
  print(revealed);

  // testing encoding decoding
  final testOriginal =
      "The secret to learning Dart well is to be curious and just try things. Since you're reading this, that obviously describes you. Good job!";
  final testSecret = testOriginal.encoded;
  print(testSecret);
  final testRevealed = testSecret.decoded;
  print(testRevealed);

  // Enum extension example
  final language = ProgrammingLanguage.dart;
  print(language.isStronglyTyped);

// Challenges Advance Class
// Challenge 1: Heavy monotremes
  Platypus pla1 = Platypus(10);
  Platypus pla2 = Platypus(5);
  Platypus pla3 = Platypus(6);
  Platypus pla4 = Platypus(7);
  Platypus pla5 = Platypus(22);
  Platypus pla6 = Platypus(4);

  List<Platypus> platypuses = [pla1, pla2, pla3, pla4, pla5, pla6];

  print("Before Sorting");
  platypuses.forEach(print);

  print("After Sorting");
  platypuses.sort();
  platypuses.forEach(print);

  // Challenge 2: Fake notes
  final printNote = Note();
  printNote.note();

  // Challenge 3: Time to code
  final timeRemaining = 3.minutes;
  print(timeRemaining);

  // Writes give me a encoded megssage
  String writerMessage = """Uif!tfdsfu!up!mfbsojoh!Ebsu!xfmm!jt!up!dg"ewtkqw
u"cpf"lwuv"vt{"vjkpiu0"Vlqfh#|rx*uh#uhdglqj#wkl
v/#wkdw#reylrxvo|#ghvfulehv#|rx1#Kssh\$nsf%"""
      .writerEncoded;
  print(writerMessage);
}
