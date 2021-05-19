import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String time;
  String location;
  String url;
  String flag;
  bool isDaytime;

  WorldTime({this.location, this.url, this.flag});

  Future<void> getTime() async {
    try {
      var api = Uri.https('worldtimeapi.org', '/api/timezone/$url');

      var response = await http.get(api);
      if (response.statusCode == 200) {
        Map data = jsonDecode(response.body);
        String datetime = data['datetime'];
        String offset = data['utc_offset'].substring(1, 3);
        DateTime now = DateTime.parse(datetime);
        now = now.add(Duration(hours: int.parse(offset)));

        isDaytime = now.hour > 6 && now.hour < 20 ? true : false;
        time = DateFormat.jm().format(now);
        print(time);
      } else {
        print('Error: $response.statusCode');
      }
    } catch (e) {
      time = "couldn't get time data";
    }
  }
}
