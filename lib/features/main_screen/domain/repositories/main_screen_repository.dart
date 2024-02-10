import 'package:moshin_flutter_web/global_features/domain/entities/auto/auto.dart';

abstract class MainScreenRepository {
  Future<List<Auto>> getAutos({int page = 1});
}
