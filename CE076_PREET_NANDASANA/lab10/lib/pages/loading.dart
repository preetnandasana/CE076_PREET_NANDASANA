// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'dart:convert';

// class Loading extends StatefulWidget {
//   @override
//   State<Loading> createState() => _LoadingState();
// }

// class _LoadingState extends State<Loading> {
//   void getData() async {
//     final response =
//         await get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
//     print(response.body);
//     Map data = jsonDecode(response.body);
//     print(data);
//     print(data['title']);
//   }

//   @override
//   void initState() {
//     super.initState();
//     getData();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Text('LOADING SCREEN'),
//     );
//   }
// }

/* import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
// Make Request for time and receive response
    Response response = await get(
        Uri.parse('http://worldtimeapi.org/api/timezone/Asia/Kolkata'));
    Map timeData = jsonDecode(response.body);
    print(timeData);
// Get particular property form timeData...
    String dateTime = timeData['datetime'];
    String offset = timeData['utc_offset']; //not dst_offset
    print(dateTime);
    print(offset);
    DateTime currentTime = DateTime.parse(dateTime);
    print(currentTime);
/*
DateTime currentOffset = DateTime.parse(offset);
print(currentOffset);
*/
    String offsetHours = offset.substring(1, 3);
    print(offsetHours);
    String offsetMinutes = offset.substring(4, 6);
    print(offsetMinutes);
    currentTime = currentTime.add(Duration(
        minutes: int.parse(offsetMinutes), hours: int.parse(offsetHours)));
    print(currentTime);
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('LOADING SCREEN'),
    );
  }
}
 */

import 'package:flutter/material.dart';
import 'package:lab10/wordtime_service.dart';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String? time = 'LOADING..........';
  void setWorldTime() async {
    WordTime timeinstance =
        WordTime(location: 'kolkata', flag: 'india.png', url: 'Asia/Kolkata');
    await timeinstance.getTime();
// print(timeinstance.time);
    setState(() {
      time = timeinstance.time;
    });
  }

  @override
  void initState() {
    super.initState();
    setWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(60.0),
      child: Text(time.toString()),
    ));
  }
}
