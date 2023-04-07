import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ServerImage extends StatelessWidget {
  const ServerImage({Key? key, required this.pictureUrl}) : super(key: key);
  final String pictureUrl;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
        fit: BoxFit.cover,
        imageUrl: pictureUrl,
        errorWidget: (context, error, _) => Container(
            width: 310.w,
            height: 230.h,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
              ),
              borderRadius:
              const BorderRadius.all(Radius.circular(12)),
            ),
            child: const Icon(Icons.error)),
        progressIndicatorBuilder: (context, _, __) =>
            Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[200]!,
              child: Container(
                  width: double.infinity,
                  height: 230.h,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.all(Radius.circular(12)),
                  ),
                  child: const Icon(Icons.error)),
            ));
  }
}
