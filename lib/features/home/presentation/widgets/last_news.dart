import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:megacom_second_stage/core/pictures.dart';
import 'package:megacom_second_stage/core/string.dart';
import 'package:megacom_second_stage/core/style.dart';
import 'package:megacom_second_stage/features/widgets/news_card.dart';

class LastNews extends StatelessWidget {
  const LastNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.contain, image: AssetImage(Pictures.lastNews))),
      child: Column(
        children: [
          Text(
            AppString.lastNews,
            style: Style.montserrat_16_700Black,
          ),
          SizedBox(
            height: 20.h,
          ),
          CarouselSlider.builder(
            itemCount: 4,
            options: CarouselOptions(
              autoPlay: false,
              enableInfiniteScroll: false,
              viewportFraction: 0.74.w,
              enlargeFactor: 2,
              aspectRatio: 2.1,
              initialPage: 2,
            ),
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) {
              return const NewsCard();
            },
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                surfaceTintColor: Colors.transparent,
                //splashFactory: InkRipple.splashFactory,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(12)),
              ),
              onPressed: () {},
              child: Text(
                'все новости',
                  style: Style.inter_14_400Black,
              ))
        ],
      ),
    );
  }
}
