import 'package:flutter/material.dart';

// void main() => runApp(MaterialApp(
//   home : Text("Hello Flutter"),
// ));

void main() => runApp(MaterialApp(
        // home: Scaffold(
        //   appBar: AppBar(
        //     title: Text('HELLO FLUTTER...MY FIRST APP'),
        //   ),
        // ),

        // home: Scaffold(
        //   appBar: AppBar(
        //     title: Text('HELLO FLUTTER...MY FIRST APP'),
        //     centerTitle: true,
        //   ),
        // ),

        // home: Scaffold(
        //     appBar: AppBar(
        //       title: Text('HELLO FLUTTER...MY FIRST APP'),
        //       centerTitle: true,
        //     ),
        //     body: Center(
        //       child: Text('Hello Preet'),
        //     ))

        //   home: Scaffold(
        //   appBar: AppBar(
        //     title: Text('HELLO FLUTTER...MY FIRST APP'),
        //     centerTitle: true,
        //   ),
        //   body: Center(
        //     child: Text('Hello Preet'),
        //   ),
        //   floatingActionButton: FloatingActionButton(
        //     onPressed: () {},
        //     child: Text('click'),
        //   ),
        // )

        //     home: Scaffold(
        //   appBar: AppBar(
        //     title: Text('HELLO FLUTTER...MY FIRST APP'),
        //     centerTitle: true,
        //     backgroundColor: Colors.red[600],
        //   ),
        //   body: Center(
        //     child: Text('Hello Preet'),
        //   ),
        //   floatingActionButton: FloatingActionButton(
        //     onPressed: () {}, // must required property...
        //     child: Text('click'),
        //     backgroundColor: Colors.red[600],
        //   ),
        // )



        home: Scaffold(
      appBar: AppBar(
        title: Text('HELLO FLUTTER...MY FIRST APP'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: Text(
          'Hello Preet',
          style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.grey[600],
              fontFamily: 'Aboreto'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, // must required property...
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),
    )));
