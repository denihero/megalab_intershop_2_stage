import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:megacom_second_stage/core/color.dart';
import 'package:megacom_second_stage/core/network/image_settings.dart';
import 'package:megacom_second_stage/core/style.dart';
import 'package:megacom_second_stage/features/home/data/model/review_model.dart';

class FeedbackCard extends StatelessWidget {
  const FeedbackCard({Key? key, required this.reviewModel}) : super(key: key);

  final ReviewModel reviewModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.w,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: 270.w,
                  height: 90.h,
                  child: Text(
                    reviewModel.reviewText ?? '',
                    style: Style.montserrat_12_400Black,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 5,
              child: CircleAvatar(
                radius: 30,
                backgroundImage: CachedNetworkImageProvider(
                    '${ImageSettings.imageApi}${reviewModel.customerImage}'),
              ),
            ),
            Positioned(
              right: 30,
              top: 15,
              child: SizedBox(
                width: 150.w,
                child: Text(
                  '${reviewModel.firstName} ${reviewModel.lastName}',
                  maxLines: 1,
                  style: Style.montserrat_14_600White
                      .copyWith(color: Palette.black, fontSize: 17),
                ),
              ),
            ),
            Positioned(
              right: 30,
              top: 50,
              child: SizedBox(
                width: 150.w,
                child: Text(reviewModel.gateCategory?.name ?? '',
                    style: Style.montserrat_11_300Black.copyWith(fontSize: 13)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
