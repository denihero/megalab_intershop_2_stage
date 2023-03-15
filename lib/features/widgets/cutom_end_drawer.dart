import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:megacom_second_stage/core/color.dart';
import 'package:megacom_second_stage/core/utils/helper.dart';
import 'package:megacom_second_stage/core/megalab_internship.dart';
import 'package:megacom_second_stage/navigation/route.dart';

class CustomEndDrawer extends StatefulWidget {
  const CustomEndDrawer({Key? key}) : super(key: key);

  @override
  State<CustomEndDrawer> createState() => _CustomEndDrawerState();
}

class _CustomEndDrawerState extends State<CustomEndDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 230.w,
      child: Column(
        children: [
          ListTile(
            title: Text(
              'Главная',
              style: Style.montserrat_14_600White
                  .copyWith(color: Palette.navyBlue),
            ),
            trailing: Image.asset(
              Pictures.logoPng,
              color: Colors.black,
            ),
            onTap: () {
              context.router.push(const HomeScreenRoute());
            },
          ),
          ListTile(
            title: Text(
              'Услуги',
              style: Style.montserrat_14_600White
                  .copyWith(color: Palette.navyBlue),
            ),
            onTap: () {
              context.router.push(const OurServiceScreenRoute());
            },
          ),
          ListTile(
            title: Text(
              'Новости',
              style: Style.montserrat_14_600White
                  .copyWith(color: Palette.navyBlue),
            ),
            onTap: () {
              context.router.push(const OurNewsScreenRoute());
            },
          ),
          ListTile(
            title: Text(
              'Наши работы',
              style: Style.montserrat_14_600White
                  .copyWith(color: Palette.navyBlue),
            ),
            onTap: () {
              context.router.push(const OurWorkScreenRoute());
            },
          ),
          ListTile(
            title: Text(
              'г.Бишкек',
              style: Style.montserrat_14_600White.copyWith(
                  color: Palette.navyBlue, fontWeight: FontWeight.w500),
            ),
            subtitle: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
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
            onTap: () {
              Helper.launchUrlOf('tel: ${AppString.firstPhone}');
            },
          ),
        ],
      ),
    );
  }
}
