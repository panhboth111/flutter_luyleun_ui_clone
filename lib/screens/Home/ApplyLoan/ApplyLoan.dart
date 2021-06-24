import 'package:flutter/material.dart';

class ApplyLoan extends StatefulWidget {
  @override
  _ApplyLoanState createState() => _ApplyLoanState();
}

class _ApplyLoanState extends State<ApplyLoan> {
  bool _informationCompleted = false;
  void _submitInfo() {}

  Widget _getInstructionCard() {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Card(
          child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          "Tap on all the categories below and complete all the forms to continue with your application",
          style: TextStyle(fontSize: 15),
        ),
      )),
    );
  }

  Widget _getSectionCard(
      BuildContext context, String title, String desc, IconData icon) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 100,
        child: Card(
          child: Stack(
            children: [
              Container(color: Colors.blue[900]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Row(
                  children: [
                    Opacity(
                      opacity: 0.3,
                      child: Container(
                        width: 50,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: 30,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          desc,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w300),
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  child: Opacity(
                    opacity: 0.3,
                    child: Icon(
                      icon,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                  margin: EdgeInsets.all(15),
                )
              ])
            ],
          ),
        ),
      ),
    );
  }

  Widget _getContinueButtonCard(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(top: 25),
      child: Card(
          child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
                child: Text(
                    "Make sure all the data you input are correct. The tap the button below to continue")),
            SizedBox(height: 23),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff0033cc),
                  textStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                ),
                onPressed: _informationCompleted == true ? () {} : null,
                child: Text('Continue'),
              ),
            )
          ],
        ),
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "APPLY LOAN",
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Container(
              margin: EdgeInsets.fromLTRB(18, 0, 18, 0),
              child: Column(
                children: [
                  _getInstructionCard(),
                  _getSectionCard(context, "Your Profile",
                      "Information about you", Icons.person),
                  _getSectionCard(context, "Loan Information",
                      "How much amount and how long", Icons.money),
                  _getSectionCard(context, "Your Occupation",
                      "Your source of income", Icons.cases_sharp),
                  _getSectionCard(context, "Relatives Information",
                      "Your family as guarantor", Icons.people),
                  _getSectionCard(context, "Upload Documents",
                      "ID Card, Self POrtrait and Salary Slip", Icons.upload),
                  _getContinueButtonCard(context)
                ],
              )),
        ));
  }
}
