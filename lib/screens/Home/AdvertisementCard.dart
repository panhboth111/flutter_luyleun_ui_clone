import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class AdvertisementCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10),
        child: SizedBox(
          height: 150.0,
          child: Carousel(
            boxFit: BoxFit.cover,
            autoplay: true,
            animationCurve: Curves.fastOutSlowIn,
            animationDuration: Duration(milliseconds: 1000),
            dotSize: 0,
            showIndicator: false,
            indicatorBgPadding: 7.0,
            images: [
              AssetImage('assets/images/ads1.jpg'),
              AssetImage('assets/images/ads2.jpg'),
              AssetImage('assets/images/ads3.png'),
              //ExactAssetImage("assets/images/LaunchImage.jpg"),
            ],
          ),
        ));
  }
}
