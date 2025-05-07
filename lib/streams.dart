import 'dart:io';

Future<void> readFile() async {
  final file = File(
      'F:/Dart/asynchronous_programming/asynchronous_programming/assets/text.txt');
  final contents = await file.readAsString();
  print(contents);

  // Reading from a stream
  final lngFile = File(
      'F:/Dart/asynchronous_programming/asynchronous_programming/assets/text_long.txt');
  final stream = lngFile.openRead();
  stream.listen((data) => print(data.length));

  // // Made this folder to write Lorium Epsum 1000 time
  // // on text_long.txt as book instruction
  // final lngFile = File(
  //     'F:/Dart/asynchronous_programming/asynchronous_programming/assets/text_long.txt');

  // for (var i = 0; i < 1000; i++) {
  //   lngFile.writeAsStringSync('$contents \n', mode: FileMode.append);
  // }
}
