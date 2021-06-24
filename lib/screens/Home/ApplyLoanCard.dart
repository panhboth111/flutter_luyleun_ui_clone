import 'package:flutter/material.dart';
import 'package:flutter_luylern_ui_clone/screens/Home/ApplyLoan/ApplyLoan.dart';
import 'package:intl/intl.dart';

class ApplyLoanCard extends StatelessWidget {
  Widget getDescription() {
    return Row(children: [
      Container(
        child: Icon(Icons.money, size: 55),
        padding: EdgeInsets.all(10),
      ),
      SizedBox(
        width: 25,
      ),
      Flexible(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Get up to 1000!",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Apply loan fast amd easy with Luyleun by tapping the button below",
          style: TextStyle(fontSize: 12.3, fontWeight: FontWeight.w400),
        ),
      ]))
    ]);
  }

  Widget getApplyLoanButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color(0xff0033cc),
          textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 16),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ApplyLoan()),
          );
        },
        child: Text('Apply Loan'),
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
          elevation: 5,
          child: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                getDescription(),
                SizedBox(height: 10),
                getApplyLoanButton(context)
              ],
            ),
          )),
    );
  }
}
