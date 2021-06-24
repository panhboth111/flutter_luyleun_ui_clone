import 'package:flutter/material.dart';
import 'package:flutter_luylern_ui_clone/models/article_model.dart';

class Articles extends StatelessWidget {
  List<ArticleModel> articles = [
    ArticleModel(
        "1",
        "How to recover a Bad Credit History and Boost Your Credit Score",
        "lol",
        "blahblah",
        "2021-05-12"),
    ArticleModel(
        "2",
        "Cambodians who do not have access to banking services get benefits from digital quick loans",
        "lol",
        "blahblah",
        "2021-05-12"),
  ];

  Widget getProductCard(double card_width, ArticleModel article) {
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
              padding: EdgeInsets.all(10),
              child: Center(
                  child: Text(
                article.title,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              )),
            ),
            flex: 2,
          ),
        ],
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    double pic_height = MediaQuery.of(context).size.height * 14 / 100;
    double card_width = MediaQuery.of(context).size.width * 45 / 100;
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Articles",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            "Get the latest info about financial and services",
            style: TextStyle(fontSize: 15),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: this
                  .articles
                  .map((a) => getProductCard(card_width, a))
                  .toList(),
              // children: [
              //   getProductCard(pic_height, card_width),
              //   getProductCard(pic_height, card_width),
              //   getProductCard(pic_height, card_width),
              // ],
            ),
          ),
        ],
      ),
    );
  }
}
