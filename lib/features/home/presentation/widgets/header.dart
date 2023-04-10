import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:megacom_second_stage/core/pictures.dart';
import 'package:megacom_second_stage/core/style.dart';
import 'package:megacom_second_stage/features/widgets/primary_button.dart';

import '../../../../core/string.dart';
import '../../../widgets/appbar_clip.dart';

class HeaderPart extends StatefulWidget {
  const HeaderPart({Key? key, required this.onPressed}) : super(key: key);

  final Function() onPressed;


  @override
  State<HeaderPart> createState() => _HeaderPartState();
}

class _HeaderPartState extends State<HeaderPart> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomShape(),
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(Pictures.gate),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 90.h,
              ),
              SizedBox(
                width: 400.h,
                child: Text(AppString.homeSafety,
                    style: Style.montserrat_30_700White.copyWith(fontSize: 28.sp)),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                width: 265.w,
                child: Text(AppString.homeFind,
                    style: Style.montserrat_14_600White),
              ),
              const SizedBox(
                height: 30,
              ),
              PrimaryButton(
                onPressed: widget.onPressed,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
