import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:megacom_second_stage/core/color.dart';
import 'package:megacom_second_stage/core/pictures.dart';
import 'package:megacom_second_stage/core/string.dart';
import 'package:megacom_second_stage/core/style.dart';
import 'package:megacom_second_stage/features/widgets/bottom_navigation.dart';
import 'package:megacom_second_stage/features/widgets/schedule_and_phone_company.dart';
import 'package:megacom_second_stage/features/widgets/social_media.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  late final Completer<GoogleMapController> _googleMapController;
  late final CameraPosition _cameraPosition;

  @override
  void initState() {
    _googleMapController = Completer<GoogleMapController>();
    _cameraPosition = const CameraPosition(
      target: LatLng(42.8482744, 74.5872578),
      zoom: 15,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 285.h,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 48.h,
              width: double.infinity,
              color: Palette.blue,
              child: Padding(
                padding: const EdgeInsets.only(left: 7, bottom: 5),
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      AppString.security,
                      style: Style.montserrat_14_300Black.copyWith(
                          fontSize: 11.5.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    )),
              ),
            ),
          ),

          Container(
            height: 250.h,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              color: Palette.grey,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Column(
                children: [
                  SizedBox(
                    height: 160.h,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          Pictures.logoPng,
                          fit: BoxFit.contain,
                        ),
                        const ScheduleAndPhoneCompany(),
                        SizedBox(
                          width: 10.w,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: SizedBox(
                            height: 150.h,
                            width: 160.w,
                            child: Stack(
                              children: [
                                GoogleMap(
                                  mapType: MapType.normal,
                                  initialCameraPosition: _cameraPosition,
                                  zoomControlsEnabled: false,
                                  zoomGesturesEnabled: true,
                                  markers: {
                                    const Marker(
                                        markerId: MarkerId('Айни'),
                                        position:
                                            LatLng(42.8482744, 74.5872578),
                                      infoWindow: InfoWindow(
                                        title: 'Selim Trade'
                                      )
                                    ),
                                  },
                                  onMapCreated:
                                      (GoogleMapController controller) {
                                    _googleMapController.complete(controller);
                                  },
                                ),
                                Positioned(
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.grey.withOpacity(0.3),
                                    ),
                                    width: 130,
                                    height: 30,
                                    child: Center(
                                      child: Text(
                                        'Адрес \nг.Бишкек, ул.Айни 22',
                                        style: Style.montserrat_10_800White
                                            .copyWith(
                                                color: Palette.black,
                                                fontSize: 9.sp,
                                                fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SocialMedia(),
                      SizedBox(
                        width: 15.w,
                      ),
                      const FooterNavigation()
                    ],
                  ),
                ],
              ),
            ),
          ),
          ///TODO: Fix position
          // Positioned(
          //     right: 0,
          //     top: 10,
          //     child: SvgPicture.asset(
          //       Pictures.position,
          //       width: 180.w,
          //       height: 180.h,
          //     )),
        ],
      ),

    );
  }
}
