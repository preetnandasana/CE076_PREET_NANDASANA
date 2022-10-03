import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map<dynamic, dynamic> data = {};


  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)?.settings.arguments as Map;
    print(data);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(0.0,120.0,0.0,0.0),
          child: Column(
            children: [
              TextButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/location');
                },
                icon: const Icon(Icons.edit_location),
                label: const Text("Navigate to Location"),
              ),
              const SizedBox(height: 24.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text(
                    data['location'],
                    style: const TextStyle(
                      letterSpacing: 2.0,
                      fontSize: 28.0,

                    ),
                  )
                ],
              ),
              const SizedBox(height: 24.0,),
              Text(
                data['time'],
                style: const TextStyle(
                  fontSize: 70.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

