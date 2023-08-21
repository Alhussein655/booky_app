import 'package:booky/core/utils/api_service.dart';
import 'package:booky/features/home/data/data_sources/home_local_data_source.dart';
import 'package:booky/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:booky/features/home/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton(ApiService(Dio()));
  getIt.registerSingleton(HomeRepoImpl(
      homeRemoteDataSource: HomeRemoteDataImpl(getIt.get<ApiService>()),
      homeLocalDataSource: HomeLocalDataImpl()));
}
