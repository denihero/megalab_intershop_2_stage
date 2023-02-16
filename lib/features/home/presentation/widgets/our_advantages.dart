import 'package:flutter/material.dart';
import 'package:megacom_second_stage/core/pictures.dart';
import 'package:megacom_second_stage/core/style.dart';

class OurAdvantages extends StatelessWidget {
  const OurAdvantages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 417,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
            image: AssetImage(Pictures.ourAdvantages)
        )
      ),
      child: Column(
        children: [
          Text('Наши преимущества',style: Style.montserrat_16_700Black,)
        ],
      ),
    );
  }
}
