import 'package:get_it/get_it.dart';

import '../data/repository/home_repository_imple.dart';
import 'api_service.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiService>(ApiService());
  getIt.registerSingleton<HomeRepositoryImpl>(
    HomeRepositoryImpl(
      getIt.get<ApiService>(),
    ),
  );
}
