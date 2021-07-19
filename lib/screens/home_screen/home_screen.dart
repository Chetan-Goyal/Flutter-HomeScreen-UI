import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Icon#1"),
                    Text("Icon#2"),
                  ],
                ),
                Row(
                  children: [
                    Text("Image with Revolving Outline"),
                    Column(children: [
                      Text("My Name"),
                      Text("App Developer"),
                    ])
                  ],
                )
              ],
            ),
          ),
          Row(
            children: [
              Text("My Tasks"),
              Text("Calender Icon"),
            ],
          ),
          Text("Row#1"),
          Text("Row#2"),
          Text("Row#3"),
          Text("Active Projects"),
          Row(children: [
            Text("Card#1"),
            Text("Card#2"),
          ]),
          Row(children: [
            Text("Card#3"),
            Text("Card#4"),
          ]),
        ],
      )),
    );
  }
}
