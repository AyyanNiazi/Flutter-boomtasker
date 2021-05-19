import 'package:flutter/material.dart';
import 'package:real_time_app/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupWorldTimeApi() async {
    WorldTime instance = WorldTime(
        location: 'Karachi', url: 'Asia/Karachi', flag: 'germany.png');
    await instance.getTime();
    if (instance.time != null) {
      Navigator.pushReplacementNamed(context, '/home', arguments: {
        'location': instance.location,
        'url': instance.url,
        'flag': instance.flag,
        'time': instance.time,
        'isDaytime': instance.isDaytime,
      });
    }
  }

  @override
  void initState() {
    super.initState();
    setupWorldTimeApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[600],
        body: Center(
          child: SpinKitCircle(
            color: Colors.white,
            size: 100.0,
          ),
        ));
  }
}
