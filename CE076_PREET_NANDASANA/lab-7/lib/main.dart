import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('HELLO'),
            centerTitle: true,
            backgroundColor: Colors.red[600],
          ),
          // body: Center(
          //     child: Image(
          //   image: AssetImage('assets/sdp1.png'),
          // )),



          // body: Center(
          //   child: ElevatedButton(
          //     child: Text('Press It'),
          //     onPressed: () {},
          //     style: ElevatedButton.styleFrom(
          //         primary: Colors.purple[800],
          //         padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          //         textStyle:
          //             TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
          //   ),
          // ),


          // body: Center(
          //   child: IconButton(
          //     icon: Icon(
          //       Icons.mail_outline_sharp,
          //       size: 80.0,
          //     ),
          //     tooltip: 'send mail me',
          //     onPressed: () {
          //       print('on console print');
          //     },
          //   ),
          // ),


          // body: Center(
          //   child: TextButton.icon(
          //     icon: Icon(
          //       Icons.photo_camera,
          //       color: Colors.greenAccent,
          //       size: 50.0,
          //     ),
          //     label: Text(
          //       "Gallery",
          //       style: TextStyle(
          //         color: Colors.black,
          //         fontSize: 40.0,
          //         letterSpacing: 2.0,
          //         backgroundColor: Colors.redAccent,
          //       ),
          //       textAlign: TextAlign.start,
          //     ),
          //     onPressed: () {},
          //   ),
          // ),


          // body: Center(
          //   child: Directionality(
          //     textDirection: TextDirection.rtl,
          //     child: TextButton.icon(
          //       icon: Icon(
          //         Icons.photo_camera,
          //         color: Colors.greenAccent,
          //         size: 50.0,
          //       ),
          //       label: Text(
          //         "Gallery",
          //         style: TextStyle(
          //           color: Colors.black,
          //           fontSize: 40.0,
          //           letterSpacing: 2.0,
          //           backgroundColor: Colors.green,
          //         ),
          //         textAlign: TextAlign.start,
          //       ),
          //       onPressed: () {},
          //     ),
          //   ),
          // ),

          floatingActionButton: FloatingActionButton(
            onPressed: () {}, // must required property...
            child: Text('click'),
            backgroundColor: Colors.red[600],
          ),
        ),
      ),
    );
