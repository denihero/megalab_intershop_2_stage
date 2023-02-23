import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:megacom_second_stage/core/color.dart';
import 'package:megacom_second_stage/core/pictures.dart';
import 'package:megacom_second_stage/core/style.dart';
import 'package:megacom_second_stage/features/home/presentation/widgets/bottom_navigation.dart';
import 'package:megacom_second_stage/features/home/presentation/widgets/schedule_and_phone_company.dart';
import 'package:megacom_second_stage/features/home/presentation/widgets/social_media.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Palette.grey,
      ),
      child: Stack(
        children: [
          Positioned(
              right: 60,
              top: 10,
              child: SvgPicture.asset(
                Pictures.position,
                width: 180,
                height: 180,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 180,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        Pictures.logoPng,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const ScheduleAndPhoneCompany(),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SocialMedia(),
                    SizedBox(
                      width: 25,
                    ),
                    FooterNavigation()
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
