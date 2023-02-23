import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:megacom_second_stage/app.dart';
import 'package:megacom_second_stage/core/string.dart';
import 'package:megacom_second_stage/core/style.dart';
import 'package:url_launcher/url_launcher.dart';

class ScheduleAndPhoneCompany extends StatelessWidget {
  const ScheduleAndPhoneCompany({Key? key}) : super(key: key);

  void _launchUrl(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        RichText(
            textAlign: TextAlign.right,
            text: TextSpan(
                style: Style.montserrat_12_400Black
                    .copyWith(fontWeight: FontWeight.w500),
                children: const [
                  TextSpan(text: AppString.scheduleOfWork),
                  TextSpan(text: AppString.mondayToFriday),
                  TextSpan(text: AppString.sunday),
                ])),
        RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: Style.montserrat_12_400Black
                    .copyWith(fontWeight: FontWeight.w500),
                children: [
                  const TextSpan(text: AppString.phone),
                  TextSpan(
                      text: AppString.firstPhone,
                      recognizer: TapGestureRecognizer()
                        ..onTap =
                            () => _launchUrl('tel: ${AppString.firstPhone}')),
                  TextSpan(
                      text: AppString.secondPhone,
                      recognizer: TapGestureRecognizer()
                        ..onTap =
                            () => _launchUrl('tel: ${AppString.secondPhone}')),
                  TextSpan(
                      text: AppString.thirdPhone,
                      recognizer: TapGestureRecognizer()
                        ..onTap =
                            () => _launchUrl('tel: ${AppString.thirdPhone}')),
                ]))
      ],
    );
  }
}
