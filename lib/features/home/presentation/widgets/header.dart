import 'package:flutter/material.dart';
import 'package:megacom_second_stage/core/pictures.dart';
import 'package:megacom_second_stage/core/style.dart';
import 'package:megacom_second_stage/features/home/presentation/widgets/primary_button.dart';

import '../../../../core/string.dart';

class HeaderPart extends StatelessWidget {
  const HeaderPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(Pictures.gate),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 400,
              child: Text(AppString.homeSafety, style: Style.montserrat_30_700White),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 265,
              child: Text(AppString.homeFind, style: Style.montserrat_14_600White),
            ),
            const SizedBox(
              height: 30,
            ),
            PrimaryButton(
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
