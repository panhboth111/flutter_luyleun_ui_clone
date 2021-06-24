import 'package:flutter/material.dart';
import 'package:flutter_luylern_ui_clone/screens/Support/ContactSupportCard.dart';
import 'package:flutter_luylern_ui_clone/screens/Support/SupportText.dart';

class Support extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Column(children: [SupportText(), ContactSupportCard()]),
    );
  }
}
