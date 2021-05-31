import 'package:flutter/material.dart';
import 'package:real_time_app/helper_classes/explore_helper.dart';

class CustomList extends StatelessWidget {
  final Quote quote;
  final Function delete;
  CustomList({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(' ${quote.text} '),
            SizedBox(
              height: 18,
            ),
            Text(' ${quote.author}'),
            SizedBox(
              height: 8,
            ),
            ElevatedButton.icon(
                onPressed: delete,
                icon: Icon(Icons.delete),
                label: Text("remove Quote"))
          ],
        ),
      ),
    );
  }
}
