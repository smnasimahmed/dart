import 'dart:async';
import 'dart:convert';
import 'dart:io';

Future<void> readFile() async {
  // Reading from a future
  final file = File(
      'F:/Dart/asynchronous_programming/asynchronous_programming/assets/text.txt');
  final contents = await file.readAsString();
  print(contents);

  // Reading from a stream
  final lngFile = File(
      'F:/Dart/asynchronous_programming/asynchronous_programming/assets/text_long.txt');
  final stream = lngFile.openRead();
  // // Here .listen is a CallBack
  // // once a stream in use another things can't use the same stream
  // // So we commented it
  // stream.listen(
  //   (data) {
  //     print(data.length);
  //   },
  //   onError: (error) {
  //     print(error);
  //   },
  //   onDone: () {
  //     print('All Finished');
  //   },
  // );

  // // Made this folder to write Lorium Epsum 1000 time
  // // on text_long.txt as book instruction
  // final lngFile = File(
  //     'F:/Dart/asynchronous_programming/asynchronous_programming/assets/text_long.txt');

  // for (var i = 0; i < 1000; i++) {
  //   lngFile.writeAsStringSync('$contents \n', mode: FileMode.append);
  // }

  //  We can also use async await for stream as we used in Future
  try {
    await for (var data in stream) {
      print(data.length);
    }
  } on Exception catch (error) {
    print(error);
  } finally {
    print("Error handelled");
  }
}

// Cancelling a stream
Future<void> cancleStream() async {
  final file = File(
      'F:/Dart/asynchronous_programming/asynchronous_programming/assets/text_long.txt');
  final stream = file.openRead();
  StreamSubscription<List<int>>? subscription;
  subscription = stream.listen(
    (data) {
      print(data.length);
      subscription?.cancel();
    },
    cancelOnError: true,
    onDone: () {
      print('All finished');
    },
  );
}

// Transforming a stream
Future<void> transformStream() async {
  final file = File(
      'F:/Dart/asynchronous_programming/asynchronous_programming/assets/text_long.txt');
  final stream = file.openRead();
  // stream.listen(
  //   (data) {
  //     print(data);
  //   },
  // );
  // difference here is that you added the transform method
  // to the stream.
  await for (var data in stream.transform(utf8.decoder)) {
    print(data);
  }
}

// Mini-exercises 2
Future<void> miniExcercises2() async {
  final myStream = Stream<int>.periodic(
    Duration(seconds: 1),
    (value) => value,
  ).take(10);

  await for (var data in myStream) {
    print(data);
  }
}
