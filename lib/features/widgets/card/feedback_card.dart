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
    return Stack(
      children: [
        Container(
          width: 272.w,
          height: 400.h,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 0.5,
                  blurRadius: 4,
                  offset: const Offset(-5, 10), // changes position of shadow
                ),
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 0.5,
                  blurRadius: 7,
                  offset: const Offset(5, 10), // changes position of shadow
                ),

              ],
              image: const DecorationImage(
              fit: BoxFit.fitHeight,
                image: AssetImage('assets/image/sub.png'))
          ),
        ),

        Positioned(
          bottom: 0,
          left: 11.w,
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: SizedBox(
              width: 270,
              height: 110,
              child: Text(
                reviewModel.reviewText ?? '',
                style: Style.montserrat_12_400Black.copyWith(fontSize: 15.sp),
              ),
            ),
          ),
        ),
        Positioned(
            left: 18.5.w,
            top: 1.h,
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
                    width: 71,
                    height: 71,
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
          right: 20.w,
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
          right: 20.w,
          top: 45.h,
          child: SizedBox(
            width: 150.w,
            child: Text(reviewModel.gateCategory?.name ?? '',
                style: Style.montserrat_11_300Black.copyWith(fontSize: 13)),
          ),
        )
      ],
    );
  }
}
