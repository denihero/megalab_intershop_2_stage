import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:megacom_second_stage/core/network/image_settings.dart';
import 'package:megacom_second_stage/core/style.dart';
import 'package:megacom_second_stage/features/our_service/data/model/our_service_model.dart';
import 'package:megacom_second_stage/navigation/route.dart';

class GateCard extends StatelessWidget {
  const GateCard({Key? key, this.isBackgroundUse = true, required this.gate})
      : super(key: key);

  final bool isBackgroundUse;
  final OurServiceModel gate;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: GestureDetector(
        onTap: () {
          context.router.push(GateTypeScreenRoute(gateType: gate));
        },
        child: Container(
          width: 300.w,
          height: 200.h,
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.cover,
            image: CachedNetworkImageProvider(
             '${ImageSettings.imageApi}${gate.image}',
              errorListener: () => const Icon(Icons.error),
            ),
          )),
          child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color:
                          isBackgroundUse ? Colors.black26 : Colors.transparent,
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      gate.name ?? '',
                      style: Style.montserrat_16_800White,
                    ),
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
