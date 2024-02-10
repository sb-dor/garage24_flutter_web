import 'package:moshin_flutter_web/features/main_screen/domain/repositories/main_screen_repository.dart';
import 'package:moshin_flutter_web/global_features/domain/entities/auto/auto.dart';

class MainScreenGetAutos {
  final MainScreenRepository _repository;

  MainScreenGetAutos(this._repository);

  Future<List<Auto>> getAutos({int page = 1}) => _repository.getAutos(page: page);
}
