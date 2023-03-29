import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:megacom_second_stage/core/color.dart';
import 'package:megacom_second_stage/core/style.dart';
import 'package:megacom_second_stage/features/home/data/model/review_model.dart';

class FeedbackCard extends StatelessWidget {
  const FeedbackCard({Key? key, required this.reviewModel}) : super(key: key);

  final ReviewModel reviewModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130.h,
      width: 255.w,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.15),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(4, 6), // changes position of shadow
              ),
            ]),
        child: Column(
          children: [
            ListTile(
              leading: Transform.translate(
                offset: const Offset(0, -12),
                child: CircleAvatar(
                  radius: 35,
                  child: CachedNetworkImage(
                      imageUrl: reviewModel.customerImage ?? ''),
                ),
              ),
              title: Text(
                '${reviewModel.firstName} ${reviewModel.lastName}',
                maxLines: 1,
                style:
                    Style.montserrat_14_600White.copyWith(color: Palette.black),
              ),
              subtitle: Text('make some request',
                  style: Style.montserrat_11_300Black),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                reviewModel.reviewText ?? '',
                style: Style.montserrat_12_400Black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
