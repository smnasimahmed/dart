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
  print(age?.toDouble());

  // Assertion operator!
  bool flowerIsBeautiful = isBeautiful('flower')!;
  print(flowerIsBeautiful);
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
