// import 'package:asynchronous_programming/async_await_methods.dart';
import 'dart:isolate';

import 'package:asynchronous_programming/challenges.dart';
import 'package:asynchronous_programming/isolate.dart';
import 'package:asynchronous_programming/streams.dart';

Future<void> main() async {
  // // Handling errors
  // // Testing a socket exception
  // String normalURL = 'https://jsonplaceholder.typicode.com/todos/1';
  // String httpException =
  //     'https://jsonplaceholder.typicode.com/todos/pink-elephants';
  // await callback();
  // print("=================================");
  // await asyncAwait();
  // print("=================================");
  // await httpFunc(normalURL);
  // print("=================================");
  // await httpFunc(httpException);
  // print("=================================");
  // // Just Shutdown Internet for get socket exception
  // // Enter  non-existing URL to get HTTP exception 404
  // // recive wrong Json format to get JSON format exception

  // // Mini-exercises 1
  // await miniExcercises1();

  // Streams
  // await readFile();

  // Cancelling a stream
  // await cancleStream();

  // Transforming a stream
  // await transformStream();

  // Mini-exercises 2
  // await miniExcercises2();

  // isolate
  // print("OK, I'm counting...");
  // print(playHideAndSeekTheLongVersion());

  // Spawning an isolate
  // final recivePort = ReceivePort();
  // final isolate = await Isolate.spawn(
  //     isolatePlayHideAndSeekTheLongVersion, recivePort.sendPort);

  // recivePort.listen(
  //   (message) {
  //     print(message);
  //     recivePort.close();
  //     isolate.kill();
  //   },
  // );

  // challange1();
  // await fetchcComments();
  // dataStream();

  // challange 4
  final recivePort = ReceivePort();
  final isolate = await Isolate.spawn(fibonacciFromAfar, {
    'sendPort': recivePort.sendPort,
    'n': 10,
  });

  recivePort.listen(
    (onData) {
      print(onData);
    },
    onError: (e) {
      print(e);
      recivePort.close();
      isolate.kill();
    },
    onDone: () {
      print('Stream Fibonacci Complete');
      recivePort.close();
      isolate.kill();
    },
  );
}
