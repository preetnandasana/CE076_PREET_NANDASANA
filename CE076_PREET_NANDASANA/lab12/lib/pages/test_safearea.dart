import 'package:flutter/material.dart';

class TestSafeArea extends StatefulWidget {
  const TestSafeArea({Key? key}) : super(key: key);

  @override
  State<TestSafeArea> createState() => _TestSafeAreaState();
}

class _TestSafeAreaState extends State<TestSafeArea> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('HOME SCREEN'), // Not a safe code before it's got hidden in notification bar
    );
  }
}
