import 'package:moshin_flutter_web/global_features/data/models/auto_model/auto_model.dart';

abstract class MainScreenGetAutoRemoteDataSource {
  Future<List<AutoModel>> getAutos({int page = 1});
}
