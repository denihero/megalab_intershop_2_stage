import 'package:flutter/material.dart';
import 'package:megacom_second_stage/megalab_internship.dart';

class NewsDetailScreen extends StatefulWidget {
  const NewsDetailScreen({Key? key}) : super(key: key);

  @override
  State<NewsDetailScreen> createState() => _NewsDetailScreenState();
}

class _NewsDetailScreenState extends State<NewsDetailScreen> {
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
              child: Column(
                children: [
                  Text(
                    AppString.ourCompanyNew,
                    style: Style.montserrat_16_700Black,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      AppString.ourCompanyDescription,
                      style: Style.montserrat_14_300Black,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Image.network(''),
                  Image.network(''),

                  const LastNews(),
                  const SubmitApplication(),
                  const Footer()

                ],
              ),
            ),
    );
  }
}
