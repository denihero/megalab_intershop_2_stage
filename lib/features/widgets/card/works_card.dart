import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:megacom_second_stage/core/network/image_settings.dart';
import 'package:megacom_second_stage/features/news_detail/presentation/widget/server_image.dart';
import 'package:megacom_second_stage/features/our_works/data/model/our_works_model.dart';

class WorksCard extends StatelessWidget {
  const WorksCard({Key? key, required this.ourWorks}) : super(key: key);

  final ContentModel ourWorks;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310.w,
      height: 310.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              color: const Color(0xFF87ADFD), style: BorderStyle.solid),
          boxShadow: const [
            BoxShadow(
              color: Color(0xFF87ADFD),
              offset: Offset(
                0.0,
                0.0,
              ),
              blurRadius: 0.5,
              spreadRadius: 1,
            ), //BoxShadow
            BoxShadow(
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
