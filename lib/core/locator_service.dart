import 'package:megacom_second_stage/core/network/dio_settings.dart';
import 'package:get_it/get_it.dart';
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

final sl = GetIt.instance;

init() {
  final DioSetting dio = DioSetting();

  //Bloc & Cubit
  sl.registerFactory(() => OurServiceCubit(sl()));
  sl.registerFactory(() => OurNewsCubit(sl()));

  //Use case
  sl.registerLazySingleton(() => OurService(sl()));
  sl.registerLazySingleton(() => OurNews(sl()));

  //Service
  sl.registerLazySingleton<OurServiceDataSources>(
      () => OurServiceDataSourcesImpl(client: dio));

  sl.registerLazySingleton<OurNewsDataSources>(
          () => OurNewsDataSourceImpl(client: dio));

  //Repositories
  sl.registerLazySingleton<OurServiceRepositories>(
      () => OurServiceRepositoriesImpl(sl()));

  sl.registerLazySingleton<OurNewsRepositories>(
          () => OurNewsRepositoriesImpl(sl()));
}
