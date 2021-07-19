import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_home_screen_ui/widgets/my_tasks_row.dart';
import 'package:flutter_home_screen_ui/widgets/active_projects_card.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:flutter_home_screen_ui/models/menu_list.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final activeProjectsKey = new GlobalKey();

  final _drawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: _drawerController,
      borderRadius: 24.0,
      showShadow: true,
      angle: 0.0,
      backgroundColor: Colors.grey[300] as Color,
      slideWidth:
          MediaQuery.of(context).size.width * (ZoomDrawer.isRTL() ? .45 : 0.65),
      menuScreen: MenuScreen(),
      mainScreen: Scaffold(
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _drawerController.toggle!();
                          });
                        },
                        child: Container(
                          margin: EdgeInsetsDirectional.all(20),
                          child: Icon(
                            Icons.menu,
                            size: 30,
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
                        margin: EdgeInsetsDirectional.all(20),
                        child: Icon(
                          Icons.search,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
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
            Expanded(
                child: SingleChildScrollView(
                    child: Column(children: <Widget>[
              Container(
                color: Colors.transparent,
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
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
                    GestureDetector(
                      onTap: () => Scrollable.ensureVisible(
                        activeProjectsKey.currentContext as BuildContext,
                        duration: Duration(seconds: 1),
                      ),
                      child: MyTasksRow(
                        icon: Icons.alarm,
                        heading: "In Progress",
                        details: "1 tasks now, 1 started",
                        iconBackgroundColor: Color.fromRGBO(240, 191, 135, 1),
                      ),
                    ),
                    MyTasksRow(
                      icon: Icons.alarm,
                      heading: "Done",
                      details: "18 tasks now, 13 started",
                      iconBackgroundColor: Color.fromRGBO(106, 137, 226, 1),
                    ),
                    SizedBox(height: 10),
                    Container(
                      margin: EdgeInsetsDirectional.all(20),
                      child: Text(
                        "Active Projects",
                        key: activeProjectsKey,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.blueGrey[900],
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ActiveProjectsCard(
                            bgColor: Color.fromRGBO(78, 145, 151, 1),
                            progress: 0.7,
                            heading: "Medical App",
                            details: "9 hours progress"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ActiveProjectsCard(
                            bgColor: Color.fromRGBO(212, 108, 117, 1),
                            progress: 0.5,
                            heading: "Making History Notes",
                            details: "20 hours progress"),
                      ),
                    ]),
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ActiveProjectsCard(
                            bgColor: Color.fromRGBO(233, 193, 146, 1),
                            progress: 0.3,
                            heading: "Null Safety Course",
                            details: "2 hours progress"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ActiveProjectsCard(
                            bgColor: Color.fromRGBO(108, 136, 225, 1),
                            progress: 0.9,
                            heading: "Project Management",
                            details: "3 hours progress"),
                      ),
                    ]),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ActiveProjectsCard(
                          bgColor: Color.fromRGBO(78, 145, 151, 1),
                          progress: 0.8,
                          heading: "Migration to Flutter 2.2",
                          details: "3 hours progress"),
                    )
                  ],
                ),
              )
            ])))
          ]),
        ),
      ),
    );
  }
}
