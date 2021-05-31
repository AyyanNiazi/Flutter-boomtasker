import 'package:flutter/material.dart';
import 'package:real_time_app/components/explore/list.dart';
import 'package:real_time_app/helper_classes/explore_helper.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  List<Quote> list = [
    Quote(text: "This is my first content or quote", author: "Author 1"),
    Quote(text: "This is my second content or quotes", author: "Author 2"),
    Quote(text: "This is my third content or quotes", author: "Author 3"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        //  ExploreHeader(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: list
              .map((quote) => CustomList(
                    quote: quote,
                    delete: () {
                      print("Clicked");
                      setState(() {
                        list.remove(quote);
                      });
                    },
                  ))
              .toList(),
        ),
      ]),
    );
  }
}
