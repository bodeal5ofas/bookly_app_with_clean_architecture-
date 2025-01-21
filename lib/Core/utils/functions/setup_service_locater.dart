import 'package:bookly_app/Core/utils/api_service.dart';
import 'package:bookly_app/Features/home/data/data_sorecs/home_local_data_source.dart';
import 'package:bookly_app/Features/home/data/data_sorecs/home_remote_data_source.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocater() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
      homeRemoteDataSource: HomeRemoteDataSourceImpl(getIt.get<ApiService>()),
      homeLocalDataSource: HomeLocalDataSourceImpl()));
}
