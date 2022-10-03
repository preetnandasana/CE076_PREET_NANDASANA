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
    final Size size = MediaQuery.of(context).size;
    // data = ModalRoute.of(context)?.settings.arguments as Map;

    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as Map;
    bool isDayTime = data['isDayTime'] ? true : false;
    print(data);
    // isDayTime = !isDayTime;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              width: size.width,
              height: size.height,
              child: Image.network(
                isDayTime
                    ? "https://w0.peakpx.com/wallpaper/10/689/HD-wallpaper-a-fresh-day-fresh-nature-art-sun-sky-green.jpg"
                    : "https://w0.peakpx.com/wallpaper/917/343/HD-wallpaper-nature-night.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 120.0, 0.0, 0.0),
              child: Column(
                children: [
                  TextButton.icon(
                    onPressed: ()async {
                      // Navigator.pushNamed(context, '/location');
                      dynamic result = await Navigator.pushNamed(context, '/location');
                      setState((){
                        data = {
                          'location': result['location'],
                          'flag': result['flag'],
                          'time': result['time'],
                          'isDayTime': result['isDayTime'],
                        };
                      });
                    },
                    icon: const Icon(Icons.edit_location),
                    label: const Text(
                      "Navigate to Location",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
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
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  Text(
                    data['time'],
                    style: const TextStyle(
                      fontSize: 70.0,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
