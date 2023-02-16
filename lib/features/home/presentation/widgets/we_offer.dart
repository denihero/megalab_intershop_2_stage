import 'package:flutter/material.dart';
import 'package:megacom_second_stage/core/pictures.dart';
import 'package:megacom_second_stage/core/string.dart';
import 'package:megacom_second_stage/core/style.dart';

class WeOffer extends StatelessWidget {
  const WeOffer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 222,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(Pictures.weOffer)
          )
      ),
      child: Column(
        children: [
          Text(AppString.weOffer,style: Style.montserrat_16_700Black,),
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Pictures.weOffer)
                )
            ),
          )
        ],
      ),
    );
  }
}
