import 'package:flutter/material.dart';
import 'package:megacom_second_stage/core/style.dart';

class FooterNavigation extends StatelessWidget {
  const FooterNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          textAlign: TextAlign.left,
          text: TextSpan(
            style: Style.montserrat_12_400Black
                .copyWith(fontWeight: FontWeight.w500),
            children: const [
              TextSpan(text: 'Главная\n'),
              TextSpan(text: 'О Нас\n'),
              TextSpan(text: 'Услуги\n'),
            ],
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        RichText(
          textAlign: TextAlign.left,
          text: TextSpan(
            style: Style.montserrat_12_400Black
                .copyWith(fontWeight: FontWeight.w500),
            children: const [
              TextSpan(text: 'Работы\n'),
              TextSpan(text: 'Отзывы\n'),
              TextSpan(text: 'Новости\n'),
            ],
          ),
        )
      ],
    );
  }
}
