import 'package:moshin_flutter_web/global_features/domain/entities/auto/auto.dart';

abstract class AboutScreenRepository {
  Future<Auto?> getAbout(Map<String, dynamic> data);
}
