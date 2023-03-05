import 'package:flutter/material.dart';
import 'package:megacom_second_stage/features/news_detail/presentation/page/news_detail_screen.dart';

import 'features/gate_type/presentation/gate_type_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewsDetailScreen(),
    );
  }
}


