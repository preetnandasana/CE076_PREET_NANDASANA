import 'package:flutter/material.dart';
import 'package:lab10/pages/choose_location.dart';
import 'package:lab10/pages/home.dart';
import 'package:lab10/pages/loading.dart';

void main() => runApp(
      MaterialApp(
        // home: Home(),
        initialRoute: '/',
        routes: {
          '/': (context) => Loading(),
          '/home': (context) => Home(),
          '/location': (context) => ChooseLocation(),
        },
      ),
    );
