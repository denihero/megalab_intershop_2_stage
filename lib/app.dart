import 'package:flutter/material.dart';

import 'features/gate_type/presentation/gate_type_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GateTypeScreen(),
    );
  }
}


