import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:megacom_second_stage/features/our_works/data/model/our_works_model.dart';

class WorksCard extends StatelessWidget {
  const WorksCard({Key? key, required this.ourWorks}) : super(key: key);

  final ContentModel ourWorks;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: CachedNetworkImage(
        imageUrl: ourWorks.image ?? '',
        errorWidget: (context, error, _) => Container(
            width: 310.w,
            height: 230.h,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            child: const Icon(Icons.error)),
        imageBuilder: (context, imageProvider) => Container(
          width: 310.w,
          height: 230.h,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              )),
        ),
      ),
    );
  }
}
