import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:megacom_second_stage/core/color.dart';
import 'package:megacom_second_stage/core/string.dart';
import 'package:megacom_second_stage/core/style.dart';
import 'package:megacom_second_stage/features/home/presentation/bloc/get_review/get_review_cubit.dart';
import 'package:megacom_second_stage/features/widgets/move_icon_button.dart';

import '../../../widgets/card/feedback_card.dart';

class CustomerFeedback extends StatefulWidget {
  const CustomerFeedback({Key? key}) : super(key: key);

  @override
  State<CustomerFeedback> createState() => _CustomerFeedbackState();
}

class _CustomerFeedbackState extends State<CustomerFeedback> {
  late final CarouselController _carouselController;

  @override
  void initState() {
    _carouselController = CarouselController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 360.h,
      child: Column(
        children: [
          Text(
            AppString.customerFeedback,
            style: Style.montserrat_16_700Black,
          ),
          const SizedBox(
            height: 10,
          ),
          BlocBuilder<UserReviewCubit, GetReviewState>(
            builder: (context, state) {
              if (state is GetReviewSuccess) {
                final userFeedback = state.userReviews;
                return SizedBox(
                  child: CarouselSlider.builder(
                    itemCount: userFeedback.length,
                    carouselController: _carouselController,
                    options: CarouselOptions(
                      autoPlay: false,
                      enlargeCenterPage: false,
                      enableInfiniteScroll: false,
                      pauseAutoPlayOnManualNavigate: false,
                      viewportFraction: 0.76,
                      aspectRatio: 2.0,
                      initialPage: 2,
                    ),
                    itemBuilder: (BuildContext context, int itemIndex, index) {
                      return FeedbackCard(reviewModel: userFeedback[itemIndex],);
                    },
                  ),
                );
              } else if (state is GetReviewLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is GetReviewError) {
                return const Text('Error');
              }

              return const SizedBox();
            },
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MoveIconButton(
                icon: Icon(Icons.arrow_back_ios_new_outlined,
                    color: Palette.blue),
                onPressed: () {
                  _carouselController.previousPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.linear);
                },
              ),
              const SizedBox(
                width: 30,
              ),
              MoveIconButton(
                icon: Icon(Icons.arrow_forward_ios, color: Palette.blue),
                onPressed: () {
                  _carouselController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.linear);
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
