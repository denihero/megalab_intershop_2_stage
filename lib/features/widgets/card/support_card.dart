import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:megacom_second_stage/core/color.dart';
import 'package:megacom_second_stage/core/style.dart';

import '../../home/data/model/advantage.dart';

class SupportCard extends StatelessWidget {
  const SupportCard({Key? key,required this.help}) : super(key: key);

  final ShortInfo help;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280.w,
      height: 50.h,
      child: Card(
        elevation: 3,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 60.h,
              child: SvgPicture.asset(
                help.pathSvg,
                width: 60,
                height: 60,
                theme: const SvgTheme(currentColor: Colors.black),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 45.h,
              width: 200.w,
              child: Text(
                help.title,
                style: Style.montserrat_14_600White.copyWith(color: Palette.black,fontSize: 18.sp),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
