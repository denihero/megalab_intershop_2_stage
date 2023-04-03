import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:megacom_second_stage/core/megalab_internship.dart';

class ApplicationDialog extends StatelessWidget {
  const ApplicationDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(
          horizontal: 10, vertical: 10),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)),
      contentPadding: const EdgeInsets.all(10),
      content: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image:
            AssetImage(Pictures.applicationBackground),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment:
              MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),
                SvgPicture.asset(
                  Pictures.check,
                  alignment: Alignment.centerRight,
                  width: 80,
                  height: 80,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  AppString.applicationSend,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: Style.montserrat_30_700White
                      .copyWith(
                      color:
                      const Color(0xFF414141),
                      fontSize: 20.sp),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                    AppString.applicationDescription,
                    maxLines: null,
                    textAlign: TextAlign.center,
                    style: Style
                        .montserrat_12_400Black
                        .copyWith(fontSize: 12.5.sp)),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
            Positioned(
                right: 0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(
                    Pictures.cancel,
                    width: 20,
                    height: 20,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
