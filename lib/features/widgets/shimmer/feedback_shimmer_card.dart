import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class FeedbackShimmerCard extends StatelessWidget {
  const FeedbackShimmerCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130.h,
      width: 255.w,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.15),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(4, 6), // changes position of shadow
              ),
            ]),
        child: Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[200]!,
          child: Column(
            children: [
              ListTile(
                  leading: Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  title: Container(
                    height: 14,
                    width: 200,
                    color: Colors.white,
                  ),
                  subtitle: Container(
                    height: 8,
                    width: 10,
                    color: Colors.white,
                  )),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 8,
                      width: double.infinity,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 8,
                      width: 200,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 8,
                      width: 150,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 8,
                      width: double.infinity,
                      color: Colors.white,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
