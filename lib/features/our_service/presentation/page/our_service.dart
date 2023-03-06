import 'package:flutter/material.dart';
import 'package:megacom_second_stage/features/widgets/custom_appbar.dart';
import 'package:megacom_second_stage/megalab_internship.dart';


class OurServiceScreen extends StatefulWidget {
  const OurServiceScreen({Key? key}) : super(key: key);

  @override
  State<OurServiceScreen> createState() => _OurServiceScreenState();
}

class _OurServiceScreenState extends State<OurServiceScreen> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: const CustomEndDrawer(),
      appBar: CustomAppBar(
          scaffoldKey: _scaffoldKey
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
