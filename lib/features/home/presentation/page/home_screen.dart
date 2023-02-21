  import 'package:flutter/material.dart';
import 'package:megacom_second_stage/features/home/presentation/widgets/company_info.dart';
import 'package:megacom_second_stage/features/home/presentation/widgets/header.dart';
import 'package:megacom_second_stage/features/home/presentation/widgets/last_news.dart';
import 'package:megacom_second_stage/features/home/presentation/widgets/our_advantages.dart';
import 'package:megacom_second_stage/features/home/presentation/widgets/we_offer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:  const [
            HeaderPart(),
            CompanyInfo(),
            WeOffer(),
            OurAdvantages(),
            LastNews()
          ],
        ),
      ),
    );
  }
}
