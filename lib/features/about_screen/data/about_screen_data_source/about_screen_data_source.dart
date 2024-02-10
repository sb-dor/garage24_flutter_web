import 'package:moshin_flutter_web/global_features/data/models/auto_model/auto_model.dart';
import 'package:moshin_flutter_web/global_features/domain/entities/auto/auto.dart';

abstract class AboutScreenDataSource {
  Future<AutoModel?> getAbout(Map<String, dynamic> data);
}
