import 'package:megacom_second_stage/core/megalab_internship.dart';
import 'package:megacom_second_stage/core/network/dio_settings.dart';
import 'package:get_it/get_it.dart';
import 'package:megacom_second_stage/features/home/data/datasource/home_datasources.dart';
import 'package:megacom_second_stage/features/home/data/repositories/home_repositories_impl.dart';
import 'package:megacom_second_stage/features/home/domain/repositories/home_repositories.dart';
import 'package:megacom_second_stage/features/home/domain/usecases/home_usecases.dart';
import 'package:megacom_second_stage/features/news_detail/data/repositories/detail_news_repositories_impl.dart';
import 'package:megacom_second_stage/features/news_detail/domain/repositories/detail_news_repositories.dart';
import 'package:megacom_second_stage/features/news_detail/domain/usecases/detail_news_usecase.dart';
import 'package:megacom_second_stage/features/news_detail/presentation/bloc/detail_news_cubit.dart';
import 'package:megacom_second_stage/features/news_detail/presentation/bloc/send_application/send_application_cubit.dart';
import 'package:megacom_second_stage/features/our_news/data/datasources/our_news_datasources.dart';
import 'package:megacom_second_stage/features/our_news/data/repositories/our_news_repositories_impl.dart';
import 'package:megacom_second_stage/features/our_news/domain/repositories/our_news_repositories.dart';
import 'package:megacom_second_stage/features/our_news/domain/usecases/our_news_usecases.dart';
import 'package:megacom_second_stage/features/our_news/presentation/bloc/our_news_cubit.dart';
import 'package:megacom_second_stage/features/our_service/data/datasources/our_service_datasources.dart';
import 'package:megacom_second_stage/features/our_service/data/repositories/our_service_repositories_impl.dart';
import 'package:megacom_second_stage/features/our_service/domain/repositories/our_service_repositories.dart';
import 'package:megacom_second_stage/features/our_service/domain/usecases/our_service_usecases.dart';
import 'package:megacom_second_stage/features/our_service/presentation/bloc/our_service_cubit.dart';
import 'package:megacom_second_stage/features/our_works/data/datasources/our_works_data_sources.dart';
import 'package:megacom_second_stage/features/our_works/data/repositories/our_works_repositories_impl.dart';
import 'package:megacom_second_stage/features/our_works/domain/repositories/our_work_repositories.dart';
import 'package:megacom_second_stage/features/our_works/domain/usecases/our_work.dart';
import 'package:megacom_second_stage/features/our_works/presentation/bloc/our_work_cubit.dart';

import '../features/news_detail/data/datasources/news_detail_datarsource.dart';

final sl = GetIt.instance;

init() {
  final DioSetting dio = DioSetting();

  //Bloc & Cubit
  sl.registerFactory(() => OurServiceCubit(sl()));
  sl.registerFactory(() => OurNewsCubit(sl()));
  sl.registerFactory(() => DetailNewsCubit(sl()));
  sl.registerFactory(() => OurWorkCubit(sl()));
  sl.registerFactory(() => SendApplicationCubit(sl()));

  //Use case
  sl.registerLazySingleton(() => OurService(sl()));
  sl.registerLazySingleton(() => OurNews(sl()));
  sl.registerLazySingleton(() => DetailNews(sl()));
  sl.registerLazySingleton(() => OurWork(sl()));
  sl.registerLazySingleton(() => HomeUseCases(sl()));


  //Service
  sl.registerLazySingleton<OurServiceDataSources>(
      () => OurServiceDataSourcesImpl(client: dio));

  sl.registerLazySingleton<OurNewsDataSources>(
          () => OurNewsDataSourceImpl(client: dio));

  sl.registerLazySingleton<NewsDetailDataSource>(
          () => NewsDetailDataSourceImpl(client: dio));

  sl.registerLazySingleton<OurWorksDataSources>(
          () => OurWorksDataSourcesImpl(client: dio));

  sl.registerLazySingleton<HomeDataSources>(
          () => HomeDataSourcesImpl(client: dio));

  //Repositories
  sl.registerLazySingleton<OurServiceRepositories>(
      () => OurServiceRepositoriesImpl(sl()));

  sl.registerLazySingleton<OurNewsRepositories>(
          () => OurNewsRepositoriesImpl(sl()));

  sl.registerLazySingleton<DetailNewsRepositories>(
          () => DetailNewsRepositoriesImpl(sl()));

  sl.registerLazySingleton<OurWorkRepositories>(
          () => OurWorkRepositoriesImpl(sl()));

  sl.registerLazySingleton<HomeRepositories>(
          () => HomeRepositoriesImpl(sl()));
}
