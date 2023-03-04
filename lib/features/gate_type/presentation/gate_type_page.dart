import 'package:flutter/material.dart';
import 'package:megacom_second_stage/core/color.dart';
import 'package:megacom_second_stage/features/gate_type/data/model/out_advatages.dart';
import 'package:megacom_second_stage/features/gate_type/presentation/widget/special_advantage_card.dart';
import 'package:megacom_second_stage/megalab_internship.dart';

class GateTypeScreen extends StatefulWidget {
  const GateTypeScreen({Key? key}) : super(key: key);

  @override
  State<GateTypeScreen> createState() => _GateTypeScreenState();
}

class _GateTypeScreenState extends State<GateTypeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(170),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Image.asset(
              Pictures.logoPng,
              width: 200,
              height: 200,
              color: Colors.white,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SvgPicture.asset(
                  Pictures.menu,
                  width: 30,
                  height: 30,
                ),
              ),
            ],
            flexibleSpace: Container(
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(Pictures.backgroundGateType)),
              ),
              child: Center(
                  child: Text(
                AppString.ourGateTypeTitle,
                textAlign: TextAlign.center,
                style: Style.montserrat_16_800White,
              )),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  AppString.ourGateTypeDescription,
                  style: Style.montserrat_14_300Black,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    AppString.ourGateType,
                    style: Style.montserrat_16_800White
                        .copyWith(color: Palette.black),
                  ),
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
                        child: GateCard(
                          isBackgroundUse: false,
                        ),
                      );
                    }),
              ),
              Center(
                  child: Text(
               AppString.specialAdvantagesTitle,
                style: Style.montserrat_16_700Black,
              )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  height: 1300,
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: OurAdvantagesModel.advantageList.length,
                      itemBuilder: (context, index) {
                        final advantage = OurAdvantagesModel.advantageList;
                        return SpecialAdvantageCard(
                            orderId: index + 1,
                            title: advantage[index].title,
                            description: advantage[index].description);
                      }),
                ),
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
