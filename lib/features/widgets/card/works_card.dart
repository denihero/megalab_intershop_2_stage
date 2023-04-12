import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:megacom_second_stage/core/network/image_settings.dart';
import 'package:megacom_second_stage/features/our_works/data/model/our_works_model.dart';

class WorksCarouselCard extends StatelessWidget {
  const WorksCarouselCard({Key? key, required this.ourWorks}) : super(key: key);

  final ContentModel ourWorks;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.5),
      child: Container(
        width: 310.w,
        height: 300.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF105BFB).withOpacity(0.3),
                offset: const Offset(
                  0,
                  0.0,
                ),
                blurRadius: 1.4,
                spreadRadius: 1.9,
              ),
            ],
            image: DecorationImage(
                fit: BoxFit.cover,
                image: CachedNetworkImageProvider(
                    '${ImageSettings.imageApi}${ourWorks.image}'))),
      ),
    );
  }
}
