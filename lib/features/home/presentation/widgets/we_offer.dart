import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:megacom_second_stage/core/pictures.dart';
import 'package:megacom_second_stage/core/string.dart';
import 'package:megacom_second_stage/core/style.dart';

import 'gate_card.dart';

class WeOffer extends StatelessWidget {
  const   WeOffer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 222,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(Pictures.weOffer)
          )
      ),
      child: Column(
        children: [
          Text(AppString.weOffer,style: Style.montserrat_16_700Black,),
          Container(
            child: CarouselSlider.builder(
              itemCount: 4,
              options: CarouselOptions(
                autoPlay: false,
                enableInfiniteScroll: false,
                viewportFraction: 0.79,
                enlargeFactor: 2,
                aspectRatio: 2.1,
                initialPage: 2,
              ),
              itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
                return GateCard();
              },
            ),
          )
        ],
      ),
    );
  }
}
