import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:megacom_second_stage/core/color.dart';
import 'package:megacom_second_stage/core/megalab_internship.dart';
import 'package:megacom_second_stage/core/pictures.dart';
import 'package:megacom_second_stage/core/string.dart';
import 'package:megacom_second_stage/core/style.dart';
import 'package:megacom_second_stage/features/widgets/bottom_navigation.dart';
import 'package:megacom_second_stage/features/widgets/schedule_and_phone_company.dart';
import 'package:megacom_second_stage/features/widgets/social_media.dart';
import 'package:megacom_second_stage/navigation/route.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key, this.scrollController}) : super(key: key);

  final ScrollController? scrollController;

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  late final Completer<GoogleMapController> _googleMapController;
  late final CameraPosition _cameraPosition;

  Future<void> openMap(double latitude, double longitude) async {
    String googleUrl =
        'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    if (await canLaunchUrl(Uri.parse(googleUrl))) {
      await launchUrl(Uri.parse(googleUrl));
    } else {
      throw 'Could not open the map.';
    }
  }

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
  void dispose() {
    super.dispose();
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
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: Stack(
                children: [
                  Positioned(
                      right: 0,
                      left: 30,
                      top: 0,
                      child: SvgPicture.asset(
                        Pictures.position,
                        width: 140.w,
                        height: 160.h,
                      )),
                  Column(
                    children: [
                      SizedBox(
                        height: 160.h,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                if(widget.scrollController != null) {
                                  widget.scrollController!.animateTo(0,
                                      duration: const Duration(milliseconds: 300),
                                      curve: Curves.easeIn);
                                }else{
                                  context.router.push(const HomeScreenRoute());
                                }
                              },
                              child: Image.asset(
                                Pictures.logoPng,
                                fit: BoxFit.cover,
                                width: 55,
                                height: 30,
                              ),
                            ),
                            const ScheduleAndPhoneCompany(),
                            GestureDetector(
                              onTap: () {
                                openMap(42.8482744, 74.5872578);
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 10, left: 20),
                                child: AbsorbPointer(
                                  absorbing: true,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: SizedBox(
                                      height: 140.w,
                                      width: 140.w,
                                      child: Stack(
                                        children: [
                                          GoogleMap(
                                            mapType: MapType.normal,
                                            myLocationEnabled: false,
                                            zoomGesturesEnabled: true,
                                            scrollGesturesEnabled: true,
                                            tiltGesturesEnabled: false,
                                            rotateGesturesEnabled: true,
                                            zoomControlsEnabled: false,
                                            initialCameraPosition: _cameraPosition,
                                            padding: const EdgeInsets.only(
                                              bottom: 200,
                                            ),
                                            markers: {
                                              const Marker(
                                                  markerId: MarkerId('Айни'),
                                                  position: LatLng(
                                                      42.8482744, 74.5872578),
                                                  infoWindow: InfoWindow(
                                                      title: 'Selim Trade')),
                                            },
                                            onMapCreated:
                                                (GoogleMapController controller) {
                                              _googleMapController
                                                  .complete(controller);
                                            },
                                          ),
                                          Positioned(
                                            bottom: 5,
                                            left: 5,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                color: const Color.fromRGBO(
                                                    255, 255, 255, 0.4),
                                              ),
                                              width: 130,
                                              height: 30,
                                              child: Center(
                                                child: Text(
                                                  'Адрес \nг.Бишкек, ул.Айни 22',
                                                  style: Style
                                                      .montserrat_10_800White
                                                      .copyWith(
                                                          color: const Color(
                                                              0xFF414141),
                                                          fontSize: 9.sp,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
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
                          FooterNavigation(
                              scrollController: widget.scrollController)
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          ///TODO: Fix position
        ],
      ),
    );
  }
}
