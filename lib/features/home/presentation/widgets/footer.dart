import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:megacom_second_stage/core/color.dart';
import 'package:megacom_second_stage/core/pictures.dart';
import 'package:megacom_second_stage/core/string.dart';
import 'package:megacom_second_stage/core/style.dart';
import 'package:megacom_second_stage/features/home/presentation/widgets/bottom_navigation.dart';
import 'package:megacom_second_stage/features/home/presentation/widgets/schedule_and_phone_company.dart';
import 'package:megacom_second_stage/features/home/presentation/widgets/social_media.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 316,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 50,
              width: double.infinity,
              color: Palette.blue,
              child: Align(
                alignment: Alignment.bottomCenter,
                  child: Text(AppString.security,style: Style.montserrat_14_300Black.copyWith(fontSize: 13,color: Colors.white,fontWeight: FontWeight.w500),)),
            ),
          ),
          Positioned(
              right: 60,
              top: 10,
              child: SvgPicture.asset(
                Pictures.position,
                width: 180,
                height: 180,
              )),
          Container(
            height: 280,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              color: Palette.grey,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Column(
                children: [
                  SizedBox(
                    height: 180,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          Pictures.logoPng,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const ScheduleAndPhoneCompany(),
                        Expanded(
                          child: GoogleMap(
                            mapType: MapType.normal,
                            initialCameraPosition: _kGooglePlex,
                            onMapCreated: (GoogleMapController controller) {
                              _controller.complete(controller);
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SocialMedia(),
                      SizedBox(
                        width: 25,
                      ),
                      FooterNavigation()
                    ],
                  ),
                ],
              ),
            ),
          ),


        ],
      ),
    );
  }
}
