import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:megacom_second_stage/core/style.dart';
import 'package:megacom_second_stage/navigation/route.dart';

class GateCard extends StatelessWidget {
  const GateCard({Key? key, this.isBackgroundUse = true}) : super(key: key);

  final bool isBackgroundUse;


  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: GestureDetector(
        onTap: () {
          context.router.push(const GateTypeScreenRoute());
        },
        child: Container(
          width: 300.w,
          height: 200.h,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/image/test.png')
              )
          ),
          child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 130.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                      color: isBackgroundUse ? Colors.black26: Colors.transparent,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(
                    child: Text('Автоматика',style: Style.montserrat_16_800White,),
                  ),
                ),
              )
          ),
        ),
      ),
    );
  }
}
