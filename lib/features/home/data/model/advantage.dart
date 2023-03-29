import 'package:megacom_second_stage/core/pictures.dart';
import 'package:megacom_second_stage/core/string.dart';

class ShortInfo{
  String pathSvg;
  String title;

  ShortInfo({required this.title,required this.pathSvg});

  static final List ourService = [
    ShortInfo(title: AppString.support, pathSvg: Pictures.support),
    ShortInfo(title: AppString.remoteControl, pathSvg: Pictures.remoteControl),
    ShortInfo(title: AppString.montash, pathSvg: Pictures.monstash),
    ShortInfo(title: AppString.guarantee, pathSvg: Pictures.guarantee),
  ];

  static final List ourAdvantages = [
    ShortInfo(title: AppString.support, pathSvg: Pictures.support),
    ShortInfo(title: AppString.remoteControl, pathSvg: Pictures.remoteControl),
    ShortInfo(title: AppString.montash, pathSvg: Pictures.monstash),
    ShortInfo(title: AppString.guarantee, pathSvg: Pictures.guarantee),
  ];
}