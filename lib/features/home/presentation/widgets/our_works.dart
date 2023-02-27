import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:megacom_second_stage/core/style.dart';
import 'package:megacom_second_stage/features/widgets/works_card.dart';

class OurWorks extends StatelessWidget {
  const OurWorks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Наши работы',
          style: Style.montserrat_16_700Black,
        ),
        const SizedBox(
          height: 20,
        ),
        CarouselSlider.builder(
          itemCount: 3,
          options: CarouselOptions(
            autoPlay: false,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            pauseAutoPlayOnManualNavigate: false,
            viewportFraction: 0.65,
            initialPage: 2,
          ),
          itemBuilder: (BuildContext context, int itemIndex, _) {
            return const WorksCard();
          },
        )
      ],
    );
  }
}
