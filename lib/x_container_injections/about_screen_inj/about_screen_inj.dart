import 'package:moshin_flutter_web/features/about_screen/data/about_screen_data_source/about_screen_data_source.dart';
import 'package:moshin_flutter_web/features/about_screen/data/about_screen_data_source/impl/about_screen_data_source_impl.dart';
import 'package:moshin_flutter_web/features/about_screen/data/repository/about_screen_repository_impl.dart';
import 'package:moshin_flutter_web/features/about_screen/domain/repository/about_screen_repository.dart';
import 'package:moshin_flutter_web/features/about_screen/presentation/bloc/about_screen_bloc.dart';
import 'package:moshin_flutter_web/x_container_injections/injection_container.dart';

abstract class AboutScreenInj {
  static Future<void> aboutScreenInj() async {
    locator.registerLazySingleton<AboutScreenDataSource>(
      () => AboutScreenDataSourceImpl(),
    );

    locator.registerLazySingleton<AboutScreenRepository>(
      () => AboutScreenRepositoryImpl(locator<AboutScreenDataSource>()),
    );

    locator.registerFactory<AboutScreenBloc>(
      () => AboutScreenBloc(locator<AboutScreenRepository>()),
    );
  }
}
