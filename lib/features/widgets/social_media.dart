import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:megacom_second_stage/core/pictures.dart';
import 'package:megacom_second_stage/core/string.dart';
import 'package:megacom_second_stage/core/style.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({Key? key}) : super(key: key);

  void _launchUrl(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    }else{
      throw 'Could not launch $url';
    }
  }

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
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () => _launchUrl('https://www.instagram.com/selimtrade/'),
                child: SvgPicture.asset(Pictures.instagram)
            ),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () => _launchUrl('whatsapp://send?phone=+996552570755'),
                child: SvgPicture.asset(Pictures.whatsApp)),

          ],
        ),
      ],
    );
  }
}
