import 'package:flutter/material.dart';
import 'package:flutter_home_screen_ui/widgets/my_tasks_row.dart';

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
                          fontSize: 25.0,
                          color: Colors.blueGrey[900],
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(height: 7),
                      Text("App Developer",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.blueGrey[900],
                            fontWeight: FontWeight.w400,
                          )),
                    ])
                  ],
                ),
                // ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsetsDirectional.all(20),
                child: Text(
                  "My Tasks",
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.blueGrey[900],
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                ),
              ),
              Container(
                height: 45,
                width: 45,
                margin: EdgeInsetsDirectional.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color.fromRGBO(74, 145, 151, 1)),
                child: Icon(
                  Icons.calendar_today,
                  size: 20,
                ),
              ),
            ],
          ),
          MyTasksRow(
            icon: Icons.alarm,
            heading: "To Do",
            details: "5 tasks now, 1 started",
            iconBackgroundColor: Color.fromRGBO(208, 110, 111, 1),
          ),
          MyTasksRow(
            icon: Icons.alarm,
            heading: "In Progress",
            details: "1 tasks now, 1 started",
            iconBackgroundColor: Color.fromRGBO(208, 110, 111, 1),
          ),
          MyTasksRow(
            icon: Icons.alarm,
            heading: "Done",
            details: "18 tasks now, 13 started",
            iconBackgroundColor: Color.fromRGBO(208, 110, 111, 1),
          ),
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
