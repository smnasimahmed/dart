void main() {
  print(isPositive(3));
  print(isPositive(-1));
  // print(isPositive(null)); //will throw error

  int? age;
  double? height;
  String? message;
  // message = '20';

  print(age);
  print(height);
  print(message);

  final text = message ?? 'Error';
  print(text);

  double? fontSize;
  print(fontSize); //Null
  fontSize ??= 20.2; //if Null set default 20.2
  print(fontSize); //20.2

  // age = -3;
  // print(age?.toDouble());

  // Assertion operator!
  bool flowerIsBeautiful = isBeautiful('flower')!;
  print(flowerIsBeautiful);

  // Null aware cascade operation
  User? user;

  user //If you commentout next 2 line will see a null
    ?..name = 'Ray'
    ..id = 42;

  // ignore: dead_code
  String? lengthString = user?.name?.length.toString();
  print(lengthString);

  List<int>? myList = [1, 2, 3];
  myList = null;
  int? myItem = myList?[2];
  print(myItem);
}

bool isPositive(int? andInteger) {
  if (andInteger == null) {
    return false;
  }
  return !andInteger.isNegative;
}

bool? isBeautiful(String item) {
  if (item == 'flower') {
    return true;
  } else if (item == 'garbage') {
    return false;
  }
  return null;
}

class User {
  String? name;
  int? id;

  @override
  String toString() {
    return "$name and $id";
  }
}
