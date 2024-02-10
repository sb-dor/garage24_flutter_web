import 'package:flutter/material.dart';
import 'package:moshin_flutter_web/core/api/api_settings.dart';
import 'package:moshin_flutter_web/features/main_screen/data/data_sources/main_screen_get_auto_remote_data_source/main_screen_get_auto_remote_data_source.dart';
import 'package:moshin_flutter_web/global_features/data/models/auto_model/auto_model.dart';

class MainScreenGetAutoRemoteDataSourceImpl implements MainScreenGetAutoRemoteDataSource {
  static const String _url = '/auto/filter';

  @override
  Future<List<AutoModel>> getAutos({int page = 1}) async {
    List<AutoModel> autos = [];
    try {
      var response = await APISettings.dio.post(_url, data: {
        "filtering": false,
      });

      debugPrint("get autos res: ${response.data}");

      if (response.statusCode != 200) return <AutoModel>[];

      Map<String, dynamic> json = response.data;

      if (json.containsKey('success') && json['success'] == true) {
        List<dynamic> dAutos = [];
        if (json.containsKey('auto')) {
          dAutos = json['auto']['data'];
        }
        autos = dAutos.map((e) => AutoModel.fromJson(e)).toList();
      }
    } catch (e) {
      debugPrint("getAutos error is : $e");
    }
    return autos;
  }
}
