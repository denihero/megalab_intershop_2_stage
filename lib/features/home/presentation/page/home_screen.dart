import 'package:flutter/material.dart';
import 'package:megacom_second_stage/core/megalab_internship.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        key: _scaffoldKey,
        endDrawer: const CustomEndDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              HeaderPart(
                scaffoldKey: _scaffoldKey,
              ),
              const CompanyInfo(),
              const WeOffer(),
              const OurAdvantages(),
              const LastNews(),
              const OurWorks(),
              const Support(),
              const CustomerFeedback(),
              const SubmitApplication(),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
