import 'package:flutter/cupertino.dart';
import 'package:moshin_flutter_web/core/api/api_settings.dart';
import 'package:moshin_flutter_web/features/about_screen/data/about_screen_data_source/about_screen_data_source.dart';
import 'package:moshin_flutter_web/global_features/data/models/auto_model/auto_model.dart';

class AboutScreenDataSourceImpl implements AboutScreenDataSource {
  static const String _url = '/auto/get';

  @override
  Future<AutoModel?> getAbout(Map<String, dynamic> data) async {
    AutoModel? auto;
    try {
      var response = await APISettings.dio.post(_url, data: data);

      if (response.statusCode != 200) return null;

      Map<String, dynamic> json = response.data;

      if (json.containsKey('message')) {
        debugPrint("success message : ${json['message']}");
      }

      if (json.containsKey('success') && json['success'] == true) {
        auto = AutoModel.fromJson(json['auto']);
      }
    } catch (e) {
      debugPrint("get about error is: $e");
    }
    return auto;
  }
}
