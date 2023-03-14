import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:megacom_second_stage/core/pictures.dart';
import 'package:megacom_second_stage/core/style.dart';
import 'package:megacom_second_stage/features/widgets/primary_button.dart';

import '../../../../core/string.dart';
import '../../../widgets/appbar_clip.dart';

class HeaderPart extends StatefulWidget {
  const HeaderPart({Key? key, required this.scaffoldKey}) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  State<HeaderPart> createState() => _HeaderPartState();
}

class _HeaderPartState extends State<HeaderPart> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomShape(),
      child: Container(
        height: 370.h,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(Pictures.gate),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, top: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    Pictures.logoPng,
                    color: Colors.black,
                  ),
                  GestureDetector(
                    onTap: () {
                      widget.scaffoldKey.currentState?.openEndDrawer();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset(
                        Pictures.menu,
                        width: 30,
                        height: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              SizedBox(
                width: 350.h,
                child: Text(AppString.homeSafety, style: Style.montserrat_30_700White),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                width: 265.w,
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
      ),
    );
  }
}
