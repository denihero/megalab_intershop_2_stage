import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:megacom_second_stage/core/pictures.dart';
import 'package:megacom_second_stage/core/string.dart';
import 'package:megacom_second_stage/core/style.dart';
import 'package:megacom_second_stage/features/widgets/footer.dart';
import 'package:megacom_second_stage/features/widgets/gate_card.dart';
import 'package:megacom_second_stage/features/widgets/submit_application.dart';

class OurService extends StatefulWidget {
  const OurService({Key? key}) : super(key: key);

  @override
  State<OurService> createState() => _OurServiceState();
}

class _OurServiceState extends State<OurService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Image.asset(
          Pictures.logoPng,
          width: 200,
          height: 200,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(
              Pictures.menu,
              width: 30,
              height: 30,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                AppString.ourServiceTitle,
                style: Style.montserrat_16_700Black,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  AppString.ourServiceDescription,
                  style: Style.montserrat_14_300Black,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 1000,
                child: ListView.builder(
                    itemCount: 4,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        child: GateCard(),
                      );
                    }),
              ),
              const SubmitApplication(),
              const Footer()
            ],
          ),
        ),
      ),
    );
  }
}
