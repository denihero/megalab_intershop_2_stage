import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:megacom_second_stage/core/megalab_internship.dart';
import 'package:megacom_second_stage/core/pictures.dart';
import 'package:megacom_second_stage/core/string.dart';
import 'package:megacom_second_stage/core/style.dart';
import 'package:megacom_second_stage/features/our_news/presentation/bloc/our_news_cubit.dart';
import 'package:megacom_second_stage/features/widgets/card/news_card.dart';
import 'package:megacom_second_stage/features/widgets/shimmer/gate_shimmer_card.dart';
import 'package:megacom_second_stage/navigation/route.dart';

class LastNews extends StatelessWidget {
  const LastNews({Key? key, this.showButton = true}) : super(key: key);

  final bool showButton;

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
          BlocBuilder<OurNewsCubit, OurNewsState>(
            builder: (context, state) {
              if (state is OurNewsSuccess) {
                final news = state.ourNews;
                return CarouselSlider.builder(
                  itemCount: news.content?.length ?? 0,
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
                    return NewsCard(
                      news: news.content![itemIndex],
                    );
                  },
                );
              } else if (state is OurNewsLoading) {
                return CarouselSlider.builder(
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
                    return GeneralShimmerCard(
                      width: 280.w,
                      height: 200.h,
                    );
                  },
                );
              }
              return const SizedBox();
            },
          ),
          const SizedBox(
            height: 15,
          ),
          showButton
              ? ElevatedButton(
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
                  onPressed: () {
                    context.router.push(const OurNewsScreenRoute());
                  },
                  child: Text(
                    'все новости',
                    style: Style.inter_14_400Black,
                  ))
              : const SizedBox()
        ],
      ),
    );
  }
}
