import 'package:flutter/material.dart';

class OtherProducts extends StatelessWidget {
  Widget getProductCard(double pic_height, double card_width) {
    return Card(
        child: Container(
      width: card_width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(height: pic_height, color: Colors.blue),
          Padding(
            padding: EdgeInsets.all(30),
            child: Center(child: Text("P2P services")),
          )
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    double pic_height = MediaQuery.of(context).size.height * 14 / 100;
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
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                getProductCard(pic_height, card_width),
                getProductCard(pic_height, card_width),
                getProductCard(pic_height, card_width),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
