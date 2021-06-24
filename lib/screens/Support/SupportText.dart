import 'package:flutter/material.dart';

class SupportText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double margin = MediaQuery.of(context).size.width * 10 / 100;
    return Container(
        margin: EdgeInsets.only(top: 30, right: margin),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Support",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text("See latest notifications and contact us for support",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400))
        ]));
  }
}
