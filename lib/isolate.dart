import 'dart:isolate';

String playHideAndSeekTheLongVersion() {
  var counting = 0;
  for (var i = 1; i <= 10000000000; i++) {
    counting = i;
  }
  return '$counting! Ready or not, here I come!';
}

// isolate calling
void isolatePlayHideAndSeekTheLongVersion(SendPort sendPort) {
  var counting = 0;
  for (var i = 0; i <= 10000000; i++) {
    counting = i;
  }
  sendPort.send('$counting! Ready or not, here I come!');
}
