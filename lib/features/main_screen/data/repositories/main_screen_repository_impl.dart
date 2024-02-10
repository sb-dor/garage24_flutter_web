import 'package:moshin_flutter_web/features/main_screen/data/data_sources/main_screen_get_auto_remote_data_source/main_screen_get_auto_remote_data_source.dart';
import 'package:moshin_flutter_web/features/main_screen/domain/repositories/main_screen_repository.dart';
import 'package:moshin_flutter_web/global_features/domain/entities/auto/auto.dart';

class MainScreenRepositoryImpl implements MainScreenRepository {
  final MainScreenGetAutoRemoteDataSource _mainScreenGetAutoRemoteDataSource;

  MainScreenRepositoryImpl(this._mainScreenGetAutoRemoteDataSource);

  @override
  Future<List<Auto>> getAutos({int page = 1}) =>
      _mainScreenGetAutoRemoteDataSource.getAutos(page: page);
}
