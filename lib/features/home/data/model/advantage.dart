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
    ShortInfo(title: AppString.freeDelivery, pathSvg: Pictures.freeDelivery),
    ShortInfo(title: AppString.manyYearExperience, pathSvg: Pictures.manyYearExperience),
    ShortInfo(title: AppString.minimumProduction, pathSvg: Pictures.minimumProduction),
    ShortInfo(title: AppString.highQuality, pathSvg: Pictures.highQuality),
    ShortInfo(title: AppString.fixAndLook, pathSvg: Pictures.fixAndLook),
  ];
}