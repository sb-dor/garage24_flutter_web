import 'package:moshin_flutter_web/features/about_screen/data/about_screen_data_source/about_screen_data_source.dart';
import 'package:moshin_flutter_web/features/about_screen/domain/repository/about_screen_repository.dart';
import 'package:moshin_flutter_web/global_features/data/models/auto_model/auto_model.dart';

class AboutScreenRepositoryImpl implements AboutScreenRepository {
  final AboutScreenDataSource _aboutScreenDataSource;

  AboutScreenRepositoryImpl(this._aboutScreenDataSource);

  @override
  Future<AutoModel?> getAbout(Map<String, dynamic> data) => _aboutScreenDataSource.getAbout(data);
}
