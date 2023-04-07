import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class DetailNewsShimmerCard extends StatelessWidget {
  const DetailNewsShimmerCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[200]!,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 380,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: 270,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: 310,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: 350,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: 280,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
