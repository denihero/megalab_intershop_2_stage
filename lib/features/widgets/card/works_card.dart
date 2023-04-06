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
            color: Colors.blue,
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
              image: CachedNetworkImageProvider(
                  '${ImageSettings.imageApi}${ourWorks.image}'))),
    );
  }
}
