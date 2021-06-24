import 'package:flutter/material.dart';
import 'package:flutter_luylern_ui_clone/screens/Home/AdvertisementCard.dart';
import 'package:flutter_luylern_ui_clone/screens/Home/ApplyLoanCard.dart';
import 'package:flutter_luylern_ui_clone/screens/Home/Articles.dart';
import 'package:flutter_luylern_ui_clone/screens/Home/LoginCard.dart';
import 'package:flutter_luylern_ui_clone/screens/Home/OtherProducts.dart';
import 'package:flutter_luylern_ui_clone/screens/Home/WelcomeText.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            WelcomeText(),
            ApplyLoanCard(),
            LoginCard(),
            AdvertisementCard(),
            OtherProducts(),
            Articles()
          ]),
        ));
  }
}
