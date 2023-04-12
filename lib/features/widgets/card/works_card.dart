import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:megacom_second_stage/core/network/image_settings.dart';
import 'package:megacom_second_stage/features/our_works/data/model/our_works_model.dart';
import 'package:shimmer/shimmer.dart';

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
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: CachedNetworkImage(
            imageUrl: '${ImageSettings.imageApi}${ourWorks.image}',
            fit: BoxFit.cover,
              progressIndicatorBuilder: (context, _, __) =>
                  Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[200]!,
                    child: Container(
                        width: 310.w,
                        height: 300.h,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                          BorderRadius.all(Radius.circular(12)),
                        ),
                        child: const Icon(Icons.error)),
                  ),
            errorWidget: (context, error, _) => Container(
                width: 310.w,
                height: 300.h,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius:
                  const BorderRadius.all(Radius.circular(12)),
                ),
                child: const Icon(Icons.error)),
          ),
        ),
      ),
    );
  }
}
