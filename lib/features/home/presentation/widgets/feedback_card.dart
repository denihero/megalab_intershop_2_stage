import 'package:flutter/material.dart';
import 'package:megacom_second_stage/core/color.dart';
import 'package:megacom_second_stage/core/style.dart';

class FeedbackCard extends StatelessWidget {
  const FeedbackCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        elevation: 2,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Column(
          children: [
            ListTile(
              leading: const CircleAvatar(
                radius: 20,
              ),
              title: Text(
                'Улан Султанов',
                maxLines: 1,
                style: Style.montserrat_14_600White
                    .copyWith(color: Palette.black),
              ),
              subtitle: Text('make some request',
                  style: Style.montserrat_11_300Black),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Ворота стоят уже более двух лет. За это время с ними не было никаких проблем. Спасибо, Selim Trade!',
                style: Style.montserrat_12_400Black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
