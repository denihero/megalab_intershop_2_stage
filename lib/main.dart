import 'package:flutter/material.dart';

import 'app.dart';
import 'core/locator_service.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const App());
}

