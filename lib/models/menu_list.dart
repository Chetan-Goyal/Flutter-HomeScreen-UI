import "package:flutter/material.dart";

class MenuItem {
  String title;
  IconData icon;
  MenuItem(this.icon, this.title);
}

class MenuScreen extends StatelessWidget {
  final List<MenuItem> options = [
    MenuItem(Icons.payment, 'Payments'),
    MenuItem(Icons.favorite, 'Discounts'),
    MenuItem(Icons.notifications, 'Notification'),
    MenuItem(Icons.format_list_bulleted, 'Orders'),
    MenuItem(Icons.help, 'Help'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF464dfe),
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  CircleAvatar(
                    maxRadius: 35,
                    backgroundImage: AssetImage("assets/images/avatar.png"),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Chetan",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                  child: Row(children: [
                Icon(Icons.payment, color: Colors.white),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Payments",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ])),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                  child: Row(children: [
                Icon(Icons.favorite, color: Colors.white),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Discounts",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ])),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                  child: Row(children: [
                Icon(Icons.alarm, color: Colors.white),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Notifications",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ])),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                  child: Row(children: [
                Icon(Icons.list, color: Colors.white),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Orders",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ])),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                child: Row(
                  children: [
                    Icon(Icons.help, color: Colors.white),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Help",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                child: Row(
                  children: [
                    Icon(Icons.settings, color: Colors.white),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Settings",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                child: Row(
                  children: [
                    Icon(Icons.headphones, color: Colors.white),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Support",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )));
  }
}
