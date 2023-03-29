import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:megacom_second_stage/core/string.dart';
import 'package:megacom_second_stage/features/home/data/model/advantage.dart';
import 'package:megacom_second_stage/features/widgets/card/support_card.dart';

import '../../../../core/style.dart';

class Support extends StatelessWidget {
  const Support({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.h,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            AppString.service,
            style: Style.montserrat_16_700Black,
          ),
          const SizedBox(
            height: 10,
          ),
          CarouselSlider.builder(
            itemCount: ShortInfo.ourService.length,
            options: CarouselOptions(
              autoPlay: false,
              enlargeCenterPage: false,
              enableInfiniteScroll: false,
              pauseAutoPlayOnManualNavigate: false,
              viewportFraction: 0.7.w,
              aspectRatio: 2.5,
              initialPage: 2,
            ),
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) {
              return SupportCard(
                help: ShortInfo.ourService[itemIndex],
              );
            },
          )
        ],
      ),
    );
  }
}
