
import 'package:flutter/material.dart';
import 'package:megacom_second_stage/features/home/presentation/widgets/company_info.dart';
import 'package:megacom_second_stage/features/home/presentation/widgets/customer_feedback.dart';
import 'package:megacom_second_stage/features/widgets/footer.dart';
import 'package:megacom_second_stage/features/home/presentation/widgets/header.dart';
import 'package:megacom_second_stage/features/home/presentation/widgets/last_news.dart';
import 'package:megacom_second_stage/features/home/presentation/widgets/our_advantages.dart';
import 'package:megacom_second_stage/features/home/presentation/widgets/our_works.dart';
import 'package:megacom_second_stage/features/home/presentation/widgets/support.dart';
import 'package:megacom_second_stage/features/home/presentation/widgets/we_offer.dart';

import '../../../widgets/submit_application.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children:  const [
            HeaderPart(),
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
        ),
      ),
    );
  }
}
