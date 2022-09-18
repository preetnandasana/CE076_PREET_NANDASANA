// import 'package:flutter/material.dart';

// void main() => runApp(MaterialApp(
//     home: Scaffold(
//         appBar: AppBar(
//           title: Text('HELLO'),
//           centerTitle: true,
//           backgroundColor: Colors.red[600],
//         ),
//         // body: Padding(
//         //   padding: EdgeInsets.all(50),
//         //   child: Text('Hello only padding'),
//         // ),

//         // body: Row(
//         //   children: [
//         //     Text('HELLO ROW'),
//         //     FlatButton(
//         //       onPressed: () {},
//         //       color: Colors.purple,
//         //       child: Text('press me'),
//         //     ),
//         //     Container(
//         //       color: Colors.cyanAccent,
//         //       padding: EdgeInsets.all(30.0),
//         //       child: Text('inside container'),
//         //     ),
//         //   ],
//         // ),

//         // body: Column(
//         //   mainAxisAlignment: MainAxisAlignment.center,
// // mainAxisAlignment: MainAxisAlignment.center,
// // mainAxisAlignment: MainAxisAlignment.end,
// // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         // crossAxisAlignment: CrossAxisAlignment.stretch,
// // crossAxisAlignment: CrossAxisAlignment.end,
// // crossAxisAlignment: CrossAxisAlignment.start,
// // crossAxisAlignment: CrossAxisAlignment.center,
// // crossAxisAlignment: CrossAxisAlignment.baseline, // may generate error....
//         // children: [
//         //   Text('HELLO ROW'),
//         //   FlatButton(
//         //     onPressed: () {},
//         //     color: Colors.purple,
//         //     child: Text('press me'),
//         //   ),
//         //   Container(
//         //     color: Colors.cyanAccent,
//         //     padding: EdgeInsets.all(30.0),
//         //     child: Text('inside container'),
//         //   ),
//         // ],

//         // ),

//         //body: Column(
// // mainAxisAlignment: MainAxisAlignment.spaceAround,
//         //mainAxisAlignment: MainAxisAlignment.center,
// // mainAxisAlignment: MainAxisAlignment.end,
// // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// // mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // mainAxisAlignment: MainAxisAlignment.start,
// // crossAxisAlignment: CrossAxisAlignment.stretch,
// // crossAxisAlignment: CrossAxisAlignment.end,
// // crossAxisAlignment: CrossAxisAlignment.start,
//         //crossAxisAlignment: CrossAxisAlignment.center,
// // crossAxisAlignment: CrossAxisAlignment.baseline, // may generate

//         //children: [
// /* Text('HELLO ROW'),
// FlatButton(
// onPressed: () {},
// color: Colors.purple,
// child: Text('press me'),
// ),
// */
//         //   Container(
//         //     color: Colors.orange[800],
//         //     padding: EdgeInsets.all(30.0),
//         //     child: Text('container 1'),
//         //   ),
//         //   Container(
//         //     color: Colors.white,
//         //     padding: EdgeInsets.all(50.0),
//         //     child: Text('container 2'),
//         //   ),
//         //   Container(
//         //     color: Colors.green[800],
//         //     padding: EdgeInsets.all(70.0),
//         //     child: Text('container 3'),
//         //   )
//         // ],
//         //),

//         // body: Column(
// // mainAxisAlignment: MainAxisAlignment.spaceAround,
//         // mainAxisAlignment: MainAxisAlignment.center,
// // mainAxisAlignment: MainAxisAlignment.end,
// // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// // mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // mainAxisAlignment: MainAxisAlignment.start,
// // crossAxisAlignment: CrossAxisAlignment.stretch,
// // crossAxisAlignment: CrossAxisAlignment.end,
// // crossAxisAlignment: CrossAxisAlignment.start,
//         // crossAxisAlignment: CrossAxisAlignment.center,
// // crossAxisAlignment: CrossAxisAlignment.baseline, // may generate
//         // children: [
// /* Text('HELLO ROW'),
// FlatButton(
// onPressed: () {},
// color: Colors.purple,
// child: Text('press me'),
// ),
// */
//         //     Row(),
//         //     Container(
//         //       color: Colors.orange[800],
//         //       padding: EdgeInsets.all(30.0),
//         //       child: Text('inside container 1'),
//         //     ),
//         //     Container(
//         //       color: Colors.white,
//         //       padding: EdgeInsets.all(50.0),
//         //       child: Text('inside container 2'),
//         //     ),
//         //     Container(
//         //       color: Colors.green[800],
//         //       padding: EdgeInsets.all(70.0),
//         //       child: Text('inside container 3'),
//         //     ),
//         //   ],
//         // ),

//         // body: Column(
// // mainAxisAlignment: MainAxisAlignment.spaceAround,
// // mainAxisAlignment: MainAxisAlignment.center,
//           // mainAxisAlignment: MainAxisAlignment.end,
// // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// // mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // mainAxisAlignment: MainAxisAlignment.start,
// // crossAxisAlignment: CrossAxisAlignment.stretch,
//           // crossAxisAlignment: CrossAxisAlignment.end,
// // crossAxisAlignment: CrossAxisAlignment.start,
// // crossAxisAlignment: CrossAxisAlignment.center,
// // crossAxisAlignment: CrossAxisAlignment.baseline, // may generate

//           // children: [
// /* Text('HELLO ROW'),
// FlatButton(
// onPressed: () {},
// color: Colors.purple,
// child: Text('press me'),
// ),
// */
//           //   Row(
//           //     children: [
//           //       Text('hello Preet,... '),

//           //     ],
//           //   ),
//           //   Container(
//           //     color: Colors.deepOrange[800],
//           //     padding: EdgeInsets.all(30.0),
//           //     child: Text('inside container 1'),
//           //   ),
//           //   Container(
//           //     color: Colors.limeAccent,
//           //     padding: EdgeInsets.all(50.0),
//           //     child: Text('inside container 2'),
//           //   ),
//           //   Container(
//           //     color: Colors.green[800],
//           //     padding: EdgeInsets.all(70.0),
//           //     child: Text('inside container 3'),
//           //   ),
//           // ],
//         // )

//         )));
// import 'package:flutter/material.dart';

// void main() => runApp(MaterialApp(
//       home: FinalTest1(),
//     ));

// class FinalTest1 extends StatelessWidget {
// // const FinalTest1({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: Text('My Information'),
//         centerTitle: true,
//         backgroundColor: Colors.lightBlue[600],
//         elevation: 0.0,
//       ),
//       body: Padding(
//         padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             CircleAvatar(
//               backgroundImage: AssetImage('assets/sdp1.png'),
//             ),
//             Text(
//               'NAME: ',
//               style: TextStyle(
//                 color: Colors.grey[800],
//                 letterSpacing: 2.0,
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Preet Nandasana',
//               style: TextStyle(
//                 color: Colors.blue[900],
//                 letterSpacing: 2.0,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20.0,
//               ),
//             ),
//             SizedBox(height: 40),
//             Text(
//               'AGE',
//               style: TextStyle(
//                 color: Colors.grey[800],
//                 letterSpacing: 2.0,
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//               '20',
//               style: TextStyle(
//                 color: Colors.blue[900],
//                 letterSpacing: 2.0,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20.0,
//               ),
//             ),
//             SizedBox(height: 50),
//             Row(
//               children: [
//                 Icon(
//                   Icons.email_rounded,
//                   color: Colors.deepPurple[800],
//                 ),
//                 SizedBox(width: 12.0),
//                 Text(
//                   'Preet@gmail.com',
//                   style: TextStyle(
//                     color: Colors.brown[800],
//                     fontSize: 16.0,
//                     letterSpacing: 1.5,
//                   ),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// //import 'package:lab8_2/quote.dart';
// import 'quote.dart'; // due to same directory file no need path

// void main() => runApp(MaterialApp(
//       home: EchoList(),
//     ));

// class EchoList extends StatefulWidget {
//   const EchoList({Key? key}) : super(key: key);
//   @override
//   State<EchoList> createState() => _EchoListState();
// }

// class _EchoListState extends State<EchoList> {
// /*
// List<String> quotes = [
// 'The truth is realy pure and never simple',
// 'I see humans but no humanity',
// 'The time is always right to do what is right'
// ];
// // List<String> author = [];
// */
// /* this will create error..because list is now not of string....
// List<String> quotes = [
// Quote(text: 'The truth is realy pure and never simple',author:
// 'jignesh1'),
// ];
// */
//   List<Quote> quotes = [
//     Quote(text: 'Hello World', author: 'Preet'),
//     Quote(author: 'Preet', text: 'Hello Earth'),
//     Quote(
//         text: 'Hello Moon',
//         author: 'Preet'),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: Text('Quotes'),
//         centerTitle: true,
//         backgroundColor: Colors.greenAccent,
//       ),
//       body: Column(
// // mainAxisAlignment: MainAxisAlignment.center,
// // crossAxisAlignment: CrossAxisAlignment.center,
//         children: quotes
//             .map((quote) => Text('${quote.text} -${quote.author}'))
//             .toList(),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
//import 'package:lab8_2/quote.dart';
import 'quote.dart'; // due to same directory file no need path

void main() => runApp(MaterialApp(
      home: EchoList(),
    ));

class EchoList extends StatefulWidget {
  const EchoList({Key? key}) : super(key: key);
  @override
  State<EchoList> createState() => _EchoListState();
}

class _EchoListState extends State<EchoList> {
/*
List<String> quotes = [
'The truth is realy pure and never simple',
'I see humans but no humanity',
'The time is always right to do what is right'
];
// List<String> author = [];
*/
/* this will create error..because list is now not of string....
List<String> quotes = [
Quote(text: 'The truth is realy pure and never simple',author:
'jignesh1'),
];
*/
  List<Quote> quotes = [
    Quote(text: 'Hello Earth', author: 'Preet'),
    Quote(author: 'Preet', text: 'Hello World'),
    Quote(
        text: 'Hello Moon',
        author: 'Preet'),
  ];
  Widget quoteTemplate(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 10.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 10),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 26,
                color: Colors.deepPurple,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}
