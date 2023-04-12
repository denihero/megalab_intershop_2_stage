import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:megacom_second_stage/core/network/image_settings.dart';
import 'package:megacom_second_stage/features/our_works/data/model/our_works_model.dart';

class OurWorksCard extends StatelessWidget {
  const OurWorksCard({Key? key, required this.works}) : super(key: key);

  final ContentModel works;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: 300.w,
        height: 200.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(color: Colors.black12, spreadRadius: 0.8, blurRadius: 6),
          ],
          image: DecorationImage(
            fit: BoxFit.cover,
            image: CachedNetworkImageProvider(
              '${ImageSettings.imageApi}${works.image}',
              errorListener: () => const Icon(Icons.error),
            ),
          ),
        ),
      ),
    );
  }
}
