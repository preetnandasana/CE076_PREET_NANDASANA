import 'package:http/http.dart';
import 'dart:convert';

import 'package:intl/intl.dart';

class WordTime {
  String? location;
  String? time;
  String? flag;
  String? url;
  bool? isDayTime;

  WordTime({this.location, this.flag, this.url});
  Future<void> getTime() async {
    try {
      Response response =
          await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      Map timeData = jsonDecode(response.body);

      String dateTime = timeData['datetime'];
      String offset = timeData['utc_offset'];
      String offsetHours = offset.substring(1, 3);
      String offsetMinutes = offset.substring(4, 6);

      DateTime currentTime = DateTime.parse(dateTime);
      currentTime = currentTime.add(Duration(
          minutes: int.parse(offsetMinutes), hours: int.parse(offsetHours)));
      time = currentTime.toString();
      isDayTime =
          (currentTime.hour > 6 && currentTime.hour < 20) ? true : false;
      time = DateFormat.jm().format(currentTime);
    } catch (e) {
      print("ERROR: $e");
      time = "Could not get time, Try Again...";
    }
  }
}
