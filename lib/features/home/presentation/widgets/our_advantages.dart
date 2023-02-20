import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:megacom_second_stage/core/pictures.dart';
import 'package:megacom_second_stage/core/style.dart';
import 'package:megacom_second_stage/features/home/data/model/advantage.dart';
import 'package:megacom_second_stage/features/home/presentation/widgets/support_card.dart';

class OurAdvantages extends StatelessWidget {
  const OurAdvantages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 417,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(Pictures.ourAdvantages))),
      child: Column(
        children: [
          Text(
            'Наши преимущества',
            style: Style.montserrat_16_700Black,
          ),
          const SizedBox(
            height: 19,
          ),
          CarouselSlider.builder(
            itemCount: Advantage.ourAdvantage.length,
            options: CarouselOptions(
              autoPlay: false,
              enlargeCenterPage: false,
              enableInfiniteScroll: false,
              pauseAutoPlayOnManualNavigate: false,
              viewportFraction: 0.61,
              aspectRatio: 2.5,
              initialPage: 2,
            ),
            itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
              return SupportCard(
                help: Advantage.ourAdvantage[itemIndex],
              );
            },
          )
        ],
      ),
    );
  }
}
