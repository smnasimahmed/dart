import 'dart:io';

Future<void> readFile() async {
  final file = File(
      'F:/Dart/asynchronous_programming/asynchronous_programming/assets/text.txt');
  final contents = await file.readAsString();
  print(contents);
}
