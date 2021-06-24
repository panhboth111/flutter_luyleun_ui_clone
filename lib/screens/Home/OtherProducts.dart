import 'package:flutter/material.dart';

class OtherProducts extends StatelessWidget {
  Widget _getProductCard(double card_width, String title) {
    return Container(
      width: card_width,
      child: Card(
          child: Column(
        children: [
          Flexible(
            child: Container(color: Colors.deepPurple),
            flex: 3,
          ),
          Flexible(
            child: Container(
              child: Center(child: Text(title)),
            ),
            flex: 2,
          ),
        ],
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    double card_height = MediaQuery.of(context).size.height * 23 / 100;
    double card_width = MediaQuery.of(context).size.width * 45 / 100;
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Other Products",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            "Find out our other products and plans",
            style: TextStyle(fontSize: 15),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: card_height,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _getProductCard(card_width, "P2P Services"),
                _getProductCard(card_width, "LUYLEUN Shopping"),
                _getProductCard(card_width, "Salary Advance"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
