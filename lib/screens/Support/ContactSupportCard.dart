import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ContactSupportCard extends StatelessWidget {
  Widget getDescription() {
    return Container(
        child: Text("Tap the button below to contact our customer support"));
  }

  Widget getApplyLoanButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color(0xff0033cc),
          textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 16),
        ),
        onPressed: () {},
        child: Text('Contact LuyLeun Support'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(top: 25),
      width: c_width,
      child: Card(
          child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            getDescription(),
            SizedBox(height: 23),
            getApplyLoanButton()
          ],
        ),
      )),
    );
  }
}
