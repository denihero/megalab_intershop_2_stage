import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app.dart';
import 'core/locator_service.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  GoogleFonts.montserrat;
  await init();
  runApp(const App());
}

