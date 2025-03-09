void main() {
  print(isPositive(3));
  print(isPositive(-1));
  // print(isPositive(null)); //will throw error

  int? age;
  double? height;
  String? message;

  print(age);
  print(height);
  print(message);
}

bool isPositive(int andInteger) {
  return !andInteger.isNegative;
}
