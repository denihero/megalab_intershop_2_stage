import 'package:flutter/material.dart';
import 'package:megacom_second_stage/core/style.dart';

class SpecialAdvantageCard extends StatelessWidget {
  const SpecialAdvantageCard({Key? key, required this.orderId, required this.title, required this.description}) : super(key: key);

  final int orderId;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 350,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            child: Center(
              child: Text('$orderId', style: Style.montserrat_200_900Black),
            ),
          ),
          Positioned(
            bottom: 30,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: Style.montserrat_20_800Black,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                    width: 350,
                    child: Text(
                      description,
                      style: Style.montserrat_14_300Black,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
