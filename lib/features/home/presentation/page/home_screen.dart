import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:megacom_second_stage/core/color.dart';
import 'package:megacom_second_stage/core/pictures.dart';
import 'package:megacom_second_stage/core/string.dart';
import 'package:megacom_second_stage/core/style.dart';
import 'package:megacom_second_stage/features/home/presentation/widgets/appbar_clip.dart';
import 'package:megacom_second_stage/features/home/presentation/widgets/header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(370),
        child: ClipPath(
          clipper: CustomShape(),
          child: AppBar(
              title: SvgPicture.asset(
                Pictures.logo,
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {},
                ),
              ],
              flexibleSpace: const HeaderPart()),
        ),
      ),
      body: Column(
        children: [
          ClipPath(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(Pictures.infoBack),
                ),
              ),
              child: Column(
                children: [
                  Text(AppString.whoIs,style: Style.montserrat_16_700Black),
                  SizedBox(
                    width: 300,
                    height: 190,
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
          )
        ],
      ),
    );
  }
}
