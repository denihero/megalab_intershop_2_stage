import 'package:flutter/material.dart';
import 'package:megacom_second_stage/megalab_internship.dart';



class OurWorkPage extends StatefulWidget {
  const OurWorkPage({Key? key}) : super(key: key);

  @override
  State<OurWorkPage> createState() => _OurWorkPageState();
}

class _OurWorkPageState extends State<OurWorkPage> {
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
                AppString.ourWorksTitle,
                style: Style.montserrat_16_700Black,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  AppString.ourWorksDescription,
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
                        child: WorksCard(),
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
