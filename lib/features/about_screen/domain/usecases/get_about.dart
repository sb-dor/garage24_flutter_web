import 'package:moshin_flutter_web/features/about_screen/domain/repository/about_screen_repository.dart';
import 'package:moshin_flutter_web/global_features/domain/entities/auto/auto.dart';

class GetAbout {
  final AboutScreenRepository _aboutScreenRepository;

  GetAbout(this._aboutScreenRepository);

  Future<Auto?> getAuto(Map<String, dynamic> data) => _aboutScreenRepository.getAbout(data);
}
