import 'package:flutter/material.dart';
import 'package:megacom_second_stage/features/our_service/presentation/page/our_service.dart';
import 'package:megacom_second_stage/features/our_works/presentation/pages/our_works_page.dart';

import 'features/home/presentation/page/home_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}


