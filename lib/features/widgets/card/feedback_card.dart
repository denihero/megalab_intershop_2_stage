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
    return SizedBox(
      width: 300.w,
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
            left: 10,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: 260.w,
                height: 100.h,
                child: Text(
                  reviewModel.reviewText ?? '',
                  style: Style.montserrat_12_400Black,
                ),
              ),
            ),
          ),
          Positioned(
              left: 34,
              top: 5,
              child: Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: CachedNetworkImage(
                    imageUrl:
                        '${ImageSettings.imageApi}${reviewModel.customerImage}',
                    fit: BoxFit.cover,
                    width: 60,
                    height: 60,
                    progressIndicatorBuilder: (context,load,track) {
                      return Shimmer.fromColors(
                        baseColor: Colors.grey[200]!,
                        highlightColor: Colors.grey[300]!,
                        child: Container(
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)
                          ),
                        ),
                      );
                    },
                    errorWidget: (context,load,track){
                      return Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black26
                            ),
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: const Center(
                          child: Icon(Icons.error_outline),
                        ),
                      );
                    }
                  ),
                ),
              )),
          Positioned(
            right: 10,
            top: 25,
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
            right: 10,
            top: 50,
            child: SizedBox(
              width: 150.w,
              child: Text(reviewModel.gateCategory?.name ?? '',
                  style: Style.montserrat_11_300Black.copyWith(fontSize: 13)),
            ),
          )
        ],
      ),
    );
  }
}
