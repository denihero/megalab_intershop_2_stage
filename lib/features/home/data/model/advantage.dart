import 'package:megacom_second_stage/core/pictures.dart';
import 'package:megacom_second_stage/core/string.dart';

class Advantage{
  String pathSvg;
  String title;

  Advantage({required this.title,required this.pathSvg});

  static final List ourAdvantage = [
    Advantage(title: AppString.support, pathSvg: Pictures.support),
    Advantage(title: AppString.remoteControl, pathSvg: Pictures.remoteControl),
  ];
}