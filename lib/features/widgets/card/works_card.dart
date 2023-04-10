import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:megacom_second_stage/core/network/image_settings.dart';
import 'package:megacom_second_stage/features/our_works/data/model/our_works_model.dart';

class WorksCard extends StatelessWidget {
  const WorksCard({Key? key, required this.ourWorks}) : super(key: key);

  final ContentModel ourWorks;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310.w,
      height: 300.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF105BFB).withOpacity(0.7),
              offset: const Offset(
                0.0,
                0.0,
              ),
              blurRadius: 1,
              spreadRadius: 1.5,
            ), //BoxShadow
            const BoxShadow(
              color: Colors.white,
              offset: Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ), //BoxShadow
          ],
          image: DecorationImage(
              fit: BoxFit.cover,
              image: CachedNetworkImageProvider(
                  '${ImageSettings.imageApi}${ourWorks.image}'))),
    );
  }
}
