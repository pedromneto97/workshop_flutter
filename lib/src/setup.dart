import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'data/api_providel_impl.dart';
import 'domain/data/api_provider.dart';
import 'presentation/characters/cubit/get_characters_cubit.dart';

Future<void> setup() async {
  _setupProviders();
  _setupCubit();
}

void _setupProviders() {
  GetIt.I.registerLazySingleton<ApiProvider>(
    () => ApiProviderImpl(
      Dio(
        BaseOptions(baseUrl: 'https://hp-api.onrender.com/api'),
      ),
    ),
  );
}

void _setupCubit() {
  GetIt.I.registerFactory<GetCharactersCubit>(
    () => GetCharactersCubit(
      GetIt.I.get<ApiProvider>(),
    ),
  );
}
