import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:megacom_second_stage/core/pictures.dart';
import 'package:megacom_second_stage/core/string.dart';
import 'package:megacom_second_stage/core/style.dart';
import 'package:megacom_second_stage/core/utils/helper.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
                style: Style.montserrat_12_400Black
                    .copyWith(fontWeight: FontWeight.w500),
                children: const [
                  TextSpan(text: AppString.socialSite),
                ])),
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () => Helper.launchUrlOf('https://www.instagram.com/selimtrade/'),
                child: SvgPicture.asset(Pictures.instagram)
            ),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () => Helper.launchUrlOf('whatsapp://send?phone=+996552570755'),
                child: SvgPicture.asset(Pictures.whatsApp)),

          ],
        ),
      ],
    );
  }
}
