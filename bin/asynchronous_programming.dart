// // Callback
// void main() {
//   print('Before the Future');

//   final myFuture = Future<int>.delayed(Duration(seconds: 1), () => 42)
//       .then((value) => print('Value: $value'))
//       .catchError((error) => print('Error: $error'))
//       .whenComplete(() => print('Future is complete'));
//   print('Ater the Future');
// }

// // Getting the result with async-await
// Future<void> main() async {
//   // print("Before the Future");

//   // final value = await Future.delayed(Duration(seconds: 1), () => 42);

//   // print('Value: $value');
//   // print('After the future');

//   // Try-catch blocks with async-await
//   print("Before the Future");

//   try {
//     final value = await Future.delayed(Duration(seconds: 0), () => 42);
//     throw Exception('There was an error');
//     print('Value: $value');
//   } catch (error) {
//     print(error);
//   } finally {
//     print("Future is complete");
//   }
//   print('After the future');
// }

void main() {}
