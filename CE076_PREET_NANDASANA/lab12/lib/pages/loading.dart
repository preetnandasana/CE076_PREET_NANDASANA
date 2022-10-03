import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lab12/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  // String? time = 'LOADING..........';
  void setWorldTime() async {
    WordTime timeInstance =
        WordTime(location: 'kolkata', flag: 'india.png', url: 'Asia/Kolkata');

    await timeInstance.getTime();

    Navigator.pushNamed(context, "/home", arguments: {
      'location': timeInstance.location,
      'flag': timeInstance.flag,
      'time': timeInstance.time,
      'isDayTime': timeInstance.isDayTime,
    });
    // setState(() {
    //   time = timeInstance.time;
    // });
  }

  @override
  void initState() {
    super.initState();
    setWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: SpinKitFadingCircle(
        color: Colors.indigo,
        size: 50.0,
      ),
    ));
  }
}
