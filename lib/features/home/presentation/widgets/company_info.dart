import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:megacom_second_stage/core/pictures.dart';
import 'package:megacom_second_stage/core/string.dart';

import '../../../../core/style.dart';

class CompanyInfo extends StatelessWidget {
  const CompanyInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0,-25),
      child: Column(
        children: [
          ClipPath(
            child: Container(
              width: double.infinity,
              height: 280.h,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(Pictures.infoBack),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20,top: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AppString.whoIs,style: Style.montserrat_16_700Black),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 330.w,
                      height: 200.h,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppString.info1,style: Style.montserrat_14_300Black,
                              ),
                              Text(AppString.info2,style: Style.montserrat_14_300Black,),
                              Text(AppString.info3,style: Style.montserrat_14_300Black,),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
