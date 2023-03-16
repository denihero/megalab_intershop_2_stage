import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:megacom_second_stage/features/news_detail/presentation/bloc/detail_news_cubit.dart';
import 'package:megacom_second_stage/features/our_news/presentation/bloc/our_news_cubit.dart';
import 'package:megacom_second_stage/features/our_service/presentation/bloc/our_service_cubit.dart';
import 'package:megacom_second_stage/features/our_works/presentation/bloc/our_work_cubit.dart';

import 'core/locator_service.dart';
import 'navigation/route.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => sl<OurServiceCubit>()..getGateType(),
              ),
              BlocProvider(
                create: (context) => sl<OurNewsCubit>()..getAllNews(),
              ),
              BlocProvider(
                create: (context) => sl<DetailNewsCubit>(),
              ),
              BlocProvider(
                create: (context) => sl<OurWorkCubit>()..getOurWork(),
              ),
            ],
            child: MaterialApp.router(
              debugShowCheckedModeBanner: false,
              routerDelegate: _appRouter.delegate(),
              routeInformationParser: _appRouter.defaultRouteParser(),
            ),
          );
        });
  }
}
