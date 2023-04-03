import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:megacom_second_stage/core/pictures.dart';
import 'package:megacom_second_stage/core/string.dart';
import 'package:megacom_second_stage/core/style.dart';
import 'package:megacom_second_stage/features/home/data/model/advantage.dart';
import 'package:megacom_second_stage/features/widgets/card/support_card.dart';

class OurAdvantages extends StatelessWidget {
  const OurAdvantages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270.h,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(Pictures.ourAdvantages))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            AppString.ourAdvantages,
            style: Style.montserrat_16_700Black,
          ),
          SizedBox(
            height: 10.h,
          ),
          CarouselSlider.builder(
            itemCount: ShortInfo.ourAdvantages.length,
            options: CarouselOptions(
              autoPlay: false,
              enlargeCenterPage: false,
              enableInfiniteScroll: false,
              pauseAutoPlayOnManualNavigate: false,
              viewportFraction: 0.7.w,
              aspectRatio: 2.3,
              initialPage: 2,
            ),
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) {
              return SupportCard(
                help: ShortInfo.ourAdvantages[itemIndex],
              );
            },
          )
        ],
      ),
    );
  }
}
