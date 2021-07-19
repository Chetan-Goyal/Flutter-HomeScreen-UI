import 'package:flutter/material.dart';

class MyTasksRow extends StatelessWidget {
  final IconData icon;
  final Color iconBackgroundColor;
  final String heading;
  final String details;
  MyTasksRow({
    required this.icon,
    required this.iconBackgroundColor,
    required this.heading,
    required this.details,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 20.0,
            backgroundColor: iconBackgroundColor,
            child: Icon(
              icon,
              size: 15.0,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 10.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                heading,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                details,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black45,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
