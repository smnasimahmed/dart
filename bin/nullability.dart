void main() {
  print(isPositive(3));
  print(isPositive(-1));
  print(isPositive(null));
}

bool isPositive(int andInteger) {
  return !andInteger.isNegative;
}
