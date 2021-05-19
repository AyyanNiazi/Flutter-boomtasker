import 'package:flutter/material.dart';
import 'package:real_time_app/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime(location: 'Karachi', url: 'Asia/Karachi', flag: 'germany.png'),
    WorldTime(location: 'London', url: 'Europe/London', flag: 'germany.png'),
    WorldTime(location: 'Athens', url: 'Africa/Athens', flag: 'germany.png'),
    WorldTime(location: 'Cairo', url: 'Africa/Cairo', flag: 'germany.png'),
    WorldTime(
        location: 'New_york', url: 'America/New_york', flag: 'germany.png'),
    WorldTime(location: 'Seoul', url: 'Asia/Seoul', flag: 'germany.png'),
    WorldTime(location: 'Jakarta', url: 'Asia/Jakarta', flag: 'germany.png'),
  ];

  void getTimeByLocation(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();
    print(instance.time + instance.location);
    Navigator.pop(context, {
      'location': instance.location,
      'url': instance.url,
      'flag': instance.flag,
      'time': instance.time,
      'isDaytime': instance.isDaytime,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Choose Location"),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Card(
              child: ListTile(
                  onTap: () => getTimeByLocation(index),
                  title: Text(locations[index].location),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/day.jpg'),
                  )),
            ),
          );
        },
      ),
    );
  }
}
