import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  String _getCurrentTime() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good morning,';
    }
    if (hour < 17) {
      return 'Good afternoon,';
    }
    return 'Good evening';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            this._getCurrentTime(),
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text("What do you want to do today?",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400))
        ]));
  }
}
