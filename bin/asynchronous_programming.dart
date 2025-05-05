import 'dart:convert';
import 'dart:io';
import 'package:asynchronous_programming/asynchronous_programming_class.dart';
import 'package:http/http.dart' as http;

Future<void> main() async {
  // final url = 'https://jsonplaceholder.typicode.com/todos/1';
  // final parsedUrl = Uri.parse(url);
  // final response = await http.get(parsedUrl);
  // final statusCode = response.statusCode;

  // if (statusCode == 200) {
  //   final rawJsonString = response.body;
  //   final jsonMap = jsonDecode(rawJsonString);
  //   final todo = Todo.fromJson(jsonMap);
  //   print(todo);
  // } else {
  //   throw HttpException('$statusCode');
  // }

  // Handling errors
  try {
    final url = 'https://jsonplaceholder.typicode.com/todos/1';
    final parsedUrl = Uri.parse(url);
    final response = await http.get(parsedUrl);
    final statusCode = response.statusCode;

    if (statusCode == 200) {
      final rawJsonString = response.body;
      final jsonMap = jsonDecode(rawJsonString);
      final todo = Todo.fromJson(jsonMap);
      print(todo);
    } else {
      throw HttpException('$statusCode');
    }
    // specific in error catching
  } on SocketException catch (error) {
    print(error);
  } on HttpException catch (error) {
    print(error);
  } on FormatException catch (error) {
    print(error);
  }
}

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