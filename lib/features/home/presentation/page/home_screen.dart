
import 'package:flutter/material.dart';
import 'package:megacom_second_stage/megalab_internship.dart';



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
