import 'dart:convert';
import 'dart:isolate';

import 'package:http/http.dart' as http;

// challange 2
void challange1() {
  print('1 synchronous');
  Future(() => print('2 event queue')).then(
    (value) => print('3 synchronous'),
  );
  Future.microtask(() => print('4 microtask queue'));
  Future.microtask(() => print('5 microtask queue'));
  Future.delayed(
    Duration(seconds: 1),
    () => print('6 event queue'),
  );
  Future(() => print('7 event queue')).then(
    (value) => Future(() => print('8 event queue')),
  );
  Future(() => print('9 event queue')).then(
    (value) => Future.microtask(
      () => print('10 microtask queue'),
    ),
  );
  print('11 synchronous');
}

// challange 2
class Comment {
  int postId;
  int id;
  String name;
  String email;
  String body;

  Comment(
      {required this.postId,
      required this.id,
      required this.name,
      required this.email,
      required this.body});

  factory Comment.fromJson(Map<String, Object?> jsonMap) {
    return Comment(
      postId: jsonMap['postId'] as int,
      id: jsonMap['id'] as int,
      name: jsonMap['name'] as String,
      email: jsonMap['email'] as String,
      body: jsonMap['body'] as String,
    );
  }

  @override
  String toString() {
    return '''Comment #$id\n 
    From: $name <$email>\n
    $postId: $body\n''';
  }
}

Future<void> fetchcComments() async {
  String url = 'https://jsonplaceholder.typicode.com/comments';
  final parsedUrl = Uri.parse(url);
  final response = await http.get(parsedUrl);
  if (response.statusCode == 200) {
    List<dynamic> jsonList = jsonDecode(response.body);
    List<Comment> comments =
        jsonList.map((json) => Comment.fromJson(json)).toList();
    print(comments);
  } else {
    throw Exception('Failer to load comments');
  }
}

// challange 3
void dataStream() async {
  final url = Uri.parse('https://raywenderlich.com');
  final client = http.Client();
  final request = http.Request('GET', url);
  final response = await client.send(request);
  final stream = response.stream;

  // try {
  //   print('Data coming in chunk');
  //   await for (var data in stream) {
  //     print(data.length);
  //     print(utf8.decode(data));
  //   }
  // } on Exception catch (e) {
  //   print(e);
  // } finally {
  //   print('Stream Finished');
  //   client.close();
  // }

  stream.listen(
    (onData) {
      print('Data coming in chunk');
      print(onData.length);
      print(utf8.decode(onData));
    },
    onError: (error) {
      print(error);
      client.close();
    },
    onDone: () {
      print('Stream finished!');
      client.close();
    },
    cancelOnError: true,
  );
}

// challange 4
void fibonacciFromAfar(Map<String, Object> message) {
  final sendPort = message['sendPort'] as SendPort;
  final n = message['n'] as int;

  int firstValue = 0;
  int secondValue = 1;
  for (var i = 0; i <= n; i++) {
    sendPort.send(firstValue);

    int temp = firstValue + secondValue;
    firstValue = secondValue;
    secondValue = temp;
  }
}
