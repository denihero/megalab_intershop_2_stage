import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:megacom_second_stage/core/style.dart';
import 'package:megacom_second_stage/navigation/route.dart';

class FooterNavigation extends StatelessWidget {
  const FooterNavigation({Key? key, this.scrollController})
      : super(key: key);

  final ScrollController? scrollController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          textAlign: TextAlign.left,
          text: TextSpan(
            style: Style.montserrat_12_400Black
                .copyWith(fontWeight: FontWeight.w500),
            children: [
              TextSpan(
                  text: 'Главная\n',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      if (scrollController != null) {
                        scrollController!.animateTo(0,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn);
                      } else {
                        context.router.push(const HomeScreenRoute());
                      }
                    }),
              TextSpan(
                text: 'О Нас\n',
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    if (scrollController != null) {
                      scrollController!.animateTo(380,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn);
                    } else {
                      context.router.push(const HomeScreenRoute());
                    }
                  },
              ),
              TextSpan(
                  text: 'Услуги\n',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () =>
                        context.router.push(const OurServiceScreenRoute())),
            ],
          ),
        ),
        SizedBox(
          width: 30.w,
        ),
        RichText(
          textAlign: TextAlign.left,
          text: TextSpan(
            style: Style.montserrat_12_400Black
                .copyWith(fontWeight: FontWeight.w500),
            children: [
              TextSpan(
                  text: 'Работы\n',
                  recognizer: TapGestureRecognizer()
                    ..onTap =
                        () => context.router.push(const OurWorkScreenRoute())),
              TextSpan(
                  text: 'Отзывы\n',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      if (scrollController != null) {
                        scrollController!.animateTo(2200,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn);
                      } else {
                        context.router.push(const HomeScreenRoute());
                      }
                    }),
              TextSpan(
                  text: 'Новости\n',
                  recognizer: TapGestureRecognizer()
                    ..onTap =
                        () => context.router.push(const OurNewsScreenRoute())),
            ],
          ),
        )
      ],
    );
  }
}
