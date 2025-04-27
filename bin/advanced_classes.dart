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
  final platypus = Platypus();
  final robin = Robin();

  platypus.layEggs();
  robin.layEggs();

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
  final testOriginal = 'I like extensions!';
  final testSecret = testOriginal.encoded;
  print(testSecret);
  final testRevealed = testSecret.decoded;
  print(testRevealed);
}
