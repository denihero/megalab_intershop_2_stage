import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:megacom_second_stage/core/megalab_internship.dart';
import 'package:megacom_second_stage/features/widgets/dialog/exit_dialog.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final ScrollController _sliverScrollController;
  final submitApplication = GlobalKey();
  bool canPop = false;

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
      child: WillPopScope(
        onWillPop: () async {
          if (canPop) {
            return true;
          } else {
            showDialog(
                context: context,
                builder: (context) => ExitDialog(onPressed: () {
                      setState(() {
                        canPop = true;
                        Navigator.pop(context);
                        SystemChannels.platform
                            .invokeMethod('SystemNavigator.pop');
                      });
                    }));
            return false;
          }
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          body: CustomScrollView(
            controller: _sliverScrollController,
            slivers: [
              SliverLayoutBuilder(builder:
                  (BuildContext context, SliverConstraints constraints) {
                final scrolled = constraints.scrollOffset > 300;
                return SliverAppBar(
                  snap: false,
                  pinned: true,
                  floating: false,
                  automaticallyImplyLeading: false,
                  expandedHeight: 360.0.h,
                  backgroundColor: scrolled ? Colors.white : Colors.transparent,
                  elevation: 0,
                  flexibleSpace: FlexibleSpaceBar(
                    background: HeaderPart(
                      onPressed: () {
                        _sliverScrollController.animateTo(2550,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn);
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
                            fit: BoxFit.cover,
                            width: 88,
                            height: 50,
                            color: scrolled ? Colors.black : const Color(0xFFECEEFF),
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
                delegate: SliverChildListDelegate([
                  const CompanyInfo(),
                  const WeOfferAndOurAdvantages(),
                  const LastNews(),
                  const OurWorks(),
                  const Support(),
                  const CustomerFeedback(),
                  const SubmitApplication(),
                  const SizedBox(
                    height: 20,
                  ),
                  Footer(
                    scrollController: _sliverScrollController,
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
