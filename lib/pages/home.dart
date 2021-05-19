import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = data.isEmpty ? ModalRoute.of(context).settings.arguments : data;

    // String bgImage = data['isDaytime'] ? 'day.png' : 'night.png';
    print(data);
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/day.jpg'),
            fit: BoxFit.cover,
          )),
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 120, 0, 0),
            child: Column(
              children: <Widget>[
                TextButton.icon(
                  onPressed: () async {
                    dynamic results =
                        await Navigator.pushNamed(context, '/location');
                    setState(() {
                      data = {
                        'location': results.location,
                        'url': results.url,
                        'flag': results.flag,
                        'time': results.time,
                        'isDaytime': results.isDaytime,
                      };
                    });
                  },
                  icon: Icon(Icons.edit_location),
                  label: Text("Go to location"),
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data['location'],
                      style: TextStyle(fontSize: 28),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  data['time'],
                  style: TextStyle(fontSize: 60),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
