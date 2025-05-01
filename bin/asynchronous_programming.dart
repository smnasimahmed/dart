void main() {
  print('Before the Future');

  final myFuture = Future<int>.delayed(Duration(seconds: 1), () => 42)
      .then((value) => print('Value: $value'))
      .catchError((error) => print('Error: $error'))
      .whenComplete(() => print('Future is complete'));
  print('Ater the Future');

  myFuture;
}
