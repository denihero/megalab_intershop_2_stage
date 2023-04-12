import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:megacom_second_stage/core/color.dart';
import 'package:megacom_second_stage/core/network/image_settings.dart';
import 'package:megacom_second_stage/core/style.dart';
import 'package:megacom_second_stage/features/home/data/model/review_model.dart';
import 'package:megacom_second_stage/features/widgets/review_background_paint.dart';
import 'package:shimmer/shimmer.dart';

class FeedbackCard extends StatelessWidget {
  const FeedbackCard({Key? key, required this.reviewModel}) : super(key: key);

  final ReviewModel reviewModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: SizedBox(
        width: 300.w,
        height: 300.h,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CustomPaint(
                size: Size(350, (200).toDouble()),
                painter: ReviewBackgroundPaint(),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 11.w,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: 250,
                  height: 110,
                  child: Text(
                    reviewModel.reviewText ?? '',
                    style: Style.montserrat_12_400Black,
                  ),
                ),
              ),
            ),
            Positioned(
                left: 28.w,
                top: 3.w,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: CachedNetworkImage(
                        imageUrl:
                            '${ImageSettings.imageApi}${reviewModel.customerImage}',
                        fit: BoxFit.cover,
                        width: 65,
                        height: 65,
                        progressIndicatorBuilder: (context, load, track) {
                          return Shimmer.fromColors(
                            baseColor: Colors.grey[200]!,
                            highlightColor: Colors.grey[300]!,
                            child: Container(
                              width: 65,
                              height: 65,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                          );
                        },
                        errorWidget: (context, load, track) {
                          return Container(
                            width: 65,
                            height: 65,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.black26),
                                borderRadius: BorderRadius.circular(50)),
                            child: const Center(
                              child: Icon(Icons.error_outline),
                            ),
                          );
                        }),
                  ),
                )),
            Positioned(
              right: 10.w,
              top: 20.h,
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
              right: 10.w,
              top: 45.h,
              child: SizedBox(
                width: 150.w,
                child: Text(reviewModel.gateCategory?.name ?? '',
                    style: Style.montserrat_11_300Black.copyWith(fontSize: 13)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
