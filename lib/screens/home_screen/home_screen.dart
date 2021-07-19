import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            decoration: BoxDecoration(
                color: Color.fromRGBO(241, 192, 134, 1),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                )),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsetsDirectional.all(20),
                      child: Icon(
                        Icons.menu,
                        size: 30,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: double.infinity,
                      ),
                    ),
                    Container(
                      margin: EdgeInsetsDirectional.all(20),
                      child: Icon(
                        Icons.search,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                // Padding(
                // padding:
                //     const EdgeInsets.symmetric(horizontal: 0, vertical: 0.0),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Container(
                            height: 70,
                            width: 70,
                            child: CircularProgressIndicator()),
                        Container(
                            height: 53,
                            width: 53,
                            child: Image.asset("assets/images/avatar.png"))
                      ],
                    ),
                    Column(children: [
                      Text(
                        "Chetan Goyal",
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.blueGrey[900],
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: 7),
                      Text("App Developer"),
                    ])
                  ],
                ),
                // ),
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
