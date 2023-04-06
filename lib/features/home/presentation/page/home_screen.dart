import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:megacom_second_stage/core/megalab_internship.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final ScrollController _sliverScrollController;
  final aboutUs = GlobalKey();
  final userFeedback = GlobalKey();
  final submitApplication = GlobalKey();

  @override
  void initState() {
    _sliverScrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _sliverScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          controller: _sliverScrollController,
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
                backgroundColor: scrolled ? Colors.white : Colors.transparent,
                elevation: 0,
                flexibleSpace: FlexibleSpaceBar(
                  background: HeaderPart(
                    onPressed: () {
                      Scrollable.ensureVisible(
                        submitApplication.currentContext!,
                        curve: Curves.easeIn,
                        duration: const Duration(milliseconds: 300),
                      );
                    },
                  ),
                ),
                title: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _sliverScrollController.animateTo(0,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn);
                        },
                        child: Image.asset(
                          Pictures.logoPng,
                          width: 85,
                          height: 40,
                          color: scrolled ? Colors.black : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomNavigatorMenu(
                      iconColor: scrolled ? Colors.black : Colors.white,
                    ),
                  ),
                ],
              );
            }),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 1,
                (_, int index) {
                  return Column(
                    children: [
                      const CompanyInfo(),
                      const WeOffer(),
                      const OurAdvantages(),
                      const LastNews(),
                      const OurWorks(),
                      const Support(),
                      const CustomerFeedback(),
                      SubmitApplication(
                        key: submitApplication,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Footer(scrollController: _sliverScrollController,),
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
