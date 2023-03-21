import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:megacom_second_stage/core/megalab_internship.dart';

import '../../../widgets/primary_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverLayoutBuilder(
                builder: (BuildContext context, SliverConstraints constraints) {
              final scrolled = constraints.scrollOffset > 300;
              return SliverAppBar(
                snap: false,
                pinned: true,
                floating: false,
                automaticallyImplyLeading: false,
                expandedHeight: 370.0.h,
                backgroundColor: Colors.transparent,
                elevation: 0,
                flexibleSpace: const FlexibleSpaceBar(
                  background: HeaderPart(),
                ),
                title: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        Pictures.logoPng,
                        width: 85,
                        height: 40,
                        color: scrolled ? Colors.black:Colors.white,
                      ),
                      CustomNavigatorMenu(
                        iconColor: scrolled ? Colors.black:Colors.white,
                      ),
                    ],
                  ),
                ),
              );
            }),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 1,
                (_, int index) {
                  return Column(
                    children: const [
                      CompanyInfo(),
                      WeOffer(),
                      OurAdvantages(),
                      LastNews(),
                      OurWorks(),
                      Support(),
                      CustomerFeedback(),
                      SubmitApplication(),
                      Footer(),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
