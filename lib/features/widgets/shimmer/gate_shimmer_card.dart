import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class GeneralShimmerCard extends StatelessWidget {
  const GeneralShimmerCard({Key? key, required this.width, required this.height})
      : super(key: key);

  final double width;
  final double height;


  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[200]!,
        child: Container(
          width: width,
          height: height,
          color:Colors.white,
        ),
      ),
    );
  }
}
