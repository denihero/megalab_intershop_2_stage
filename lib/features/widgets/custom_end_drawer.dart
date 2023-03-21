import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:megacom_second_stage/core/color.dart';
import 'package:megacom_second_stage/core/utils/helper.dart';
import 'package:megacom_second_stage/core/megalab_internship.dart';

class CustomNavigatorMenu extends StatefulWidget {
  const CustomNavigatorMenu({Key? key, this.iconColor = Colors.black})
      : super(key: key);

  final Color iconColor;

  @override
  State<CustomNavigatorMenu> createState() => _CustomNavigatorMenuState();
}

class _CustomNavigatorMenuState extends State<CustomNavigatorMenu> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: SvgPicture.asset(
        Pictures.menu,
        width: 30,
        height: 30,
        color: widget.iconColor,
      ),
      padding: EdgeInsets.zero,
      onSelected: (value) {
        if (value.toString() != context.router.currentPath) {
          context.router.pushNamed(value);
        } else {
          return;
        }
      },
      itemBuilder: (BuildContext bc) {
        return [
          PopupMenuItem(
            value: '/',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Главная"),
                Image.asset(
                  Pictures.logoPng,
                  color: Colors.black,
                  width: 40,
                  height: 30,
                ),
              ],
            ),
          ),
          const PopupMenuItem(
            value: '/our-service-screen',
            child: Text("Услуги"),
          ),
          const PopupMenuItem(
            value: '/our-news-screen',
            child: Text("Новости"),
          ),
          const PopupMenuItem(
            value: '/our-work-screen',
            child: Text("Наши работы"),
          ),
          PopupMenuItem(
            onTap: () {
              Helper.launchUrlOf('tel: ${AppString.firstPhone}');
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'г.Бишкек',
                  style: Style.montserrat_14_600White.copyWith(
                      color: Palette.navyBlue, fontWeight: FontWeight.w500),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.phone,
                      color: Colors.black,
                      size: 18,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      AppString.firstPhone,
                      style: Style.montserrat_14_600White.copyWith(
                          color: Palette.navyBlue,
                          fontWeight: FontWeight.w500,
                          fontSize: 13),
                    )
                  ],
                ),
              ],
            ),
          ),
        ];
      },
    );
  }
}
