import 'package:flutter/material.dart';
import 'package:megacom_second_stage/features/gate_type/presentation/gate_type_page.dart';
import 'package:megacom_second_stage/features/home/presentation/page/home_screen.dart';
import 'package:megacom_second_stage/features/news_detail/presentation/page/news_detail_screen.dart';
import 'package:megacom_second_stage/features/our_news/presentation/page/our_news_page.dart';
import 'package:megacom_second_stage/features/our_service/presentation/page/our_service.dart';
import 'package:megacom_second_stage/features/our_works/presentation/pages/our_works_page.dart';
import 'package:auto_route/auto_route.dart';

import '../features/our_service/data/model/our_service_model.dart';
part 'route.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page:HomeScreen,initial:true),
    AutoRoute(page:GateTypeScreen),
    AutoRoute(page:OurNewsScreen),
    AutoRoute(page:OurServiceScreen),
    AutoRoute(page:OurWorkScreen),
    AutoRoute(page:NewsDetailScreen),
  ]
)

class AppRouter extends _$AppRouter{}
