import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab12/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  List<WordTime> locations = [
    WordTime(
        location: 'kolkata',
        flag:
            'https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/1200px-Flag_of_India.svg.png',
        url: 'Asia/Kolkata'),
    WordTime(
        location: 'Manila',
        flag:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Flag_of_Singapore.svg/1200px-Flag_of_Singapore.svg.png',
        url: 'Asia/Singapore'),
    WordTime(
        location: 'America',
        flag:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/Flag_of_the_United_States_%281795%E2%80%931818%29.svg/220px-Flag_of_the_United_States_%281795%E2%80%931818%29.svg.png',
        url: 'America/Barbados'),
    WordTime(
        location: 'Europe',
        flag:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Flag_of_Europe.svg/255px-Flag_of_Europe.svg.png',
        url: 'Europe/Madrid'),
    WordTime(
        location: 'Maldives',
        flag:
            'https://cdn.britannica.com/80/2280-004-E003C02B/Flag-Maldives.jpg',
        url: 'Indian/Maldives'),
    WordTime(
        location: 'Jerusalem',
        flag: 'https://cdn.britannica.com/53/1753-004-03582EDA/Flag-Israel.jpg',
        url: 'Israel/Jerusalem'),
    WordTime(
        location: 'Moscow',
        flag:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/Flag_of_Russia_%28bordered%29.svg/2560px-Flag_of_Russia_%28bordered%29.svg.png',
        url: 'Russia/Moscow'),
  ];

  /*@override
  void initState() {
    // TODO: implement initState
    super.initState();
    // print("This is inside the InitMethod");
    // counter = 0;
    print("Before GetData");
    getData();
    print("After GetData");
  }*/

  /*void getData()async{
    // Future.delayed(Duration(seconds: 4), () {
    //   print("Inside Delayed");
    // });

    // Future.delayed(Duration(seconds: 2), () {
    //   print("Inside Delayed");
    // });
    String username = await Future.delayed(Duration(seconds: 4), (){
      return "OM JOGANI";
    });

    String bio = await Future.delayed(Duration(seconds: 4), (){
      return "I AM CODER";
    });

    print("Hello, $username, BIO: $bio");
    // print("Outside Delayed");
  }*/

  void updateTime(int index) async {
    WordTime timeInstance = locations[index];
    await timeInstance.getTime();
    print("0 HERE");
    print(timeInstance.location);
    if (this.mounted) {
      Navigator.pop(context, {
        'location': timeInstance.location,
        'flag': timeInstance.flag,
        'time': timeInstance.time,
        'isDayTime': timeInstance.isDayTime,
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    print("This is inside the Build Method");
    return Scaffold(
      backgroundColor: Color(0xFFe6e6e6),
      appBar: AppBar(
        title: const Text("Location Screen"),
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  print(locations[index].location);
                  updateTime(index);
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 5.0),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: SizedBox(
                          height: 50.0,
                          width: 50.0,
                          child: Image.network(
                            locations[index].flag.toString(),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      Text(
                        locations[index].location.toString(),
                        style: TextStyle(
                          fontSize: 22.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
