import 'package:flutter/material.dart';

class LoginCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Card(
          elevation: 5,
          child: InkWell(
            onTap: () {
              print("tapped");
            },
            child: Container(
                color: Color(0xffff751a),
                padding: EdgeInsets.all(10),
                child: Row(children: [
                  Container(
                    child: Icon(
                      Icons.login,
                      size: 55,
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.all(15),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Flexible(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Text(
                        "Tap here to login into your account. We don't allow one customer to have more than one account",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                      ),
                    ],
                  ))
                ])),
          )),
    );
  }
}
