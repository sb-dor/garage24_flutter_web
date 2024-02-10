import 'package:moshin_flutter_web/features/main_screen/data/data_sources/main_screen_get_auto_remote_data_source/impl/main_screen_get_auto_remote_data_source_impl.dart';
import 'package:moshin_flutter_web/features/main_screen/data/data_sources/main_screen_get_auto_remote_data_source/main_screen_get_auto_remote_data_source.dart';
import 'package:moshin_flutter_web/features/main_screen/data/repositories/main_screen_repository_impl.dart';
import 'package:moshin_flutter_web/features/main_screen/domain/repositories/main_screen_repository.dart';
import 'package:moshin_flutter_web/features/main_screen/presentation/bloc/main_screen_bloc.dart';
import 'package:moshin_flutter_web/x_container_injections/injection_container.dart';

abstract class MainScreenInj {
  static Future<void> mainScreenInj() async {
    locator.registerLazySingleton<MainScreenGetAutoRemoteDataSource>(
      () => MainScreenGetAutoRemoteDataSourceImpl(),
    );

    locator.registerLazySingleton<MainScreenRepository>(
      () => MainScreenRepositoryImpl(locator<MainScreenGetAutoRemoteDataSource>()),
    );

    locator.registerFactory<MainScreenBloc>(
      () => MainScreenBloc(locator<MainScreenRepository>()),
    );
  }
}
