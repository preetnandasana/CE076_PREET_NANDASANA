import 'package:lab6_tutorial1/lab6_tutorial1.dart' as lab6_tutorial1;

import 'dart:isolate';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:async';

Future<void> main(List<String> arguments) async {
  // print('Hello world: ${lab6_tutorial1.calculate()}!');

  // Asynchronous Programming

  // Dart => single threaded

  // Dart isolates
  // Dart’s single thread runs in what it calls an isolate.

  // frame => Flutter needs to update the UI 60 times a second, where each update timeslice is called a frame.

  // Synchronous vs. asynchronous code
  // syn
  /*
  print("first");
  print("second");
  print("third");
  */

/*
  // Futures => async operation
  final myFuture = Future<int>.delayed(
    Duration(seconds: 1),
    () => 42,
  )
      .then(
        (value) => print("Value : $value"),
      )
      .catchError((error) => print("Error :$error"))
      .whenComplete(() => print("Future is complete"));

  // print(myFuture);
  print("After future");
  */

/*
  try {
    final value = await Future<int>.delayed(
      Duration(seconds: 1),
      () => 42,
    );
    print('Value: $value');
    throw Exception('There was an error');
  } catch (error) {
    print(error);
  } finally {
    print('Future is complete');
  }
  print('After the future');
*/

/*
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
  } on SocketException catch (error) {
    print(error);
  } on HttpException catch (error) {
    print(error);
  } on FormatException catch (error) {
    print(error);
  }
  */

/*
  // mini-exercises
  // 1)
  final myFuture = Future<String>.delayed(
    Duration(seconds: 2),
    () => "I am from the future.",
  )
      .then(
        (msg) => print("Message : $msg"),
      )
      .catchError((error) => print("Error :$error"))
      .whenComplete(() => print("Future is complete"));

  // 2)
  String message = await Future<String>.delayed(
    Duration(seconds: 1),
    () => "Hello! from the future",
  );
  print(message);
  print("Hello");

  // 3)
  try {
    String message = await Future<String>.delayed(
      Duration(seconds: 1),
      () => "Hello! from the future",
    );
    print(message);
  } catch (error) {
    print(error);
  }

// output:
// Hello! from the future
// Hello
// Message : I am from the future.
// Future is complete
// Hello! from the future
*/

/*
  // Streams

  // Reading as a string
  final file = File("assets/text.txt");
  final contents = await file.readAsString();
  print(contents);

  final file2 = File("assets/text_long.txt");
  final stream = file2.openRead();
  stream.listen(
    (data) {
      print(data.length);
    },
  );

  // Using an asynchronous for loop
  final file3 = File('assets/text_long.txt');
  final stream2 = file3.openRead();
  await for (var data in stream2) {
    print(data.length);
  }

  // Using a callback
  final stream3 = file3.openRead();
  stream3.listen(
    (data) {
      print(data.length);
    },
    onError: (error) {
      print(error);
    },
    onDone: () {
      print('All finished');
    },
  );
*/

/*
  // Using try-catch
  try {
    final file = File('assets/text_long.txt');
    final stream = file.openRead();
    await for (var data in stream) {
      print(data.length);
    }
  } on Exception catch (error) {
    print(error);
  } finally {
    print('All finished');
  }

  // Cancelling a stream
  final file = File('assets/text_long.txt');
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

*/

/*
  // Viewing the bytes
  final file = File('assets/text.txt');
  final stream = file.openRead();
  stream.listen(
    (data) {
      print(data);
    },
  );

  // Decoding the bytes
  final stream2 = file.openRead();
  await for (var data in stream2.transform(utf8.decoder)) {
    print(data);
  }
  */

/*
  // Mini- exercise
  // 1)
  final myStream = Stream<int>.periodic(
    Duration(seconds: 1),
    (value) => value,
  ).take(10);

  myStream.listen((data) => print(data));
  print("hello");

// 2)
  final myStream2 = Stream<int>.periodic(
    Duration(seconds: 1),
    (value) => value,
  ).take(10);

  await for (var data in myStream2) {
    print(data);
  }

  print("hello");



// output

// hello
// 0
// 0
// 1
// 1
// 2
// 2
// 3
// 3
// 4
// 4
// 5
// 5
// 6
// 6
// 7
// 7
// 8
// 8
// 9
// 9
// hello
*/

/*
  // Isolates
  // String playHideAndSeekTheLongVersion() {
  //   var counting = 0;
  //   for (var i = 1; i <= 10000000000; i++) {
  //     counting = i;
  //   }
  //   return '$counting! Ready or not, here I come!';
  // }

  void playHideAndSeekTheLongVersion(SendPort sendPort) {
    var counting = 0;
    for (var i = 1; i <= 1000000000; i++) {
      counting = i;
    }
    sendPort.send('$counting! Ready or not, here I come!');
  }

  print("OK, I'm counting...");
  // print(playHideAndSeekTheLongVersion());

  // Spawning the isolate and listening for messages
  Future<void> main() async {
// 1
    final receivePort = ReceivePort();
// 2
    final isolate = await Isolate.spawn(
      playHideAndSeekTheLongVersion,
// 3
      receivePort.sendPort,
    );
// 4
    receivePort.listen((message) {
      print(message);
// 5
      receivePort.close();
      isolate.kill();
    });
  }
  */

  // Challenges
  // 1)
  void main() {
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

  // output
  // 1 synchronous
  // 11 synchronous
  // 4 microtask queue
  // 5 microtask queue
  // 2 event queue
  // 3 synchronous
  // 7 event queue
  // 9 event queue
  // 10 microtask queue
  // 8 event queue
  // 6 event queue

  // 2)
  try {
    final url = 'https://jsonplaceholder.typicode.com/comments';
    final parsedUrl = Uri.parse(url);
    final response = await http.get(parsedUrl);
    final statusCode = response.statusCode;
    if (statusCode == 200) {
      final rawJsonString = response.body;
      final jsonMap = jsonDecode(rawJsonString);
      print(jsonMap.runtimeType);
      // Comment todo = Comment(jsonMap);
      // print(todo);
    } else {
      throw HttpException('$statusCode');
    }
  } on SocketException catch (error) {
    print(error);
  } on HttpException catch (error) {
    print(error);
  } on FormatException catch (error) {
    print(error);
  }
}

/*
void main() {
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
*/

/*
Future<void> main() async {
  print('Before the future');

  final value = await Future<int>.delayed(
    Duration(seconds: 1),
    () => 42,
  );

  print('Value: $value');
  print('After the future');
}
*/

class Comment {
  Comment(dynamic jsonArray) {
    for (dynamic ele in jsonArray) {
      com.add(ele as Comment);
    }
  }

  List<Comment> com = [];
}

class Todo {
  Todo({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });
  factory Todo.fromJson(Map<String, Object?> jsonMap) {
    return Todo(
      userId: jsonMap['userId'] as int,
      id: jsonMap['id'] as int,
      title: jsonMap['title'] as String,
      completed: jsonMap['completed'] as bool,
    );
  }
  final int userId;
  final int id;
  final String title;
  final bool completed;
  @override
  String toString() {
    return 'userId: $userId\n'
        'id: $id\n'
        'title: $title\n'
        'completed: $completed';
  }
}
