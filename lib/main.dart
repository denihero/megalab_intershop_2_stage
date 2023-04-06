import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app.dart';
import 'core/locator_service.dart';

void main() async{
  WidgetsBinding widgetsBinding =  WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  GoogleFonts.montserrat;
  await init();
  runApp(const App());
}

