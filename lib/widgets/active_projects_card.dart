import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ActiveProjectsCard extends StatelessWidget {
  final Color bgColor;
  final double progress;
  final String heading;
  final String details;

  ActiveProjectsCard({
    required this.bgColor,
    required this.progress,
    required this.heading,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.5,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.all(15.0),
      height: 200,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CircularPercentIndicator(
              animation: true,
              radius: 75.0,
              percent: progress,
              lineWidth: 5.0,
              circularStrokeCap: CircularStrokeCap.round,
              backgroundColor: Colors.white10,
              progressColor: Colors.white,
              center: Text(
                '${(progress * 100).round()}%',
                style:
                    TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                heading,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                details,
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.white54,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
