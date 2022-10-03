import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    print("This is inside the Build Method");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Location Screen"),
      ),
      body: SafeArea(
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },
          child: Text(
            "Counter Is: $counter",
          ),
        ),
      ),
    );
  }
}
