import 'package:moshin_flutter_web/global_features/domain/entities/auto/related_enitites/mark.dart';

class MarkModel extends Mark {
  MarkModel({
    int? id,
    bool? skip,
    int? helperPosition,
    String? name,
    String? nameRus,
    String? nameUrl,
    String? searchName,
    String? image,
    bool? recommendation,
    String? createdAt,
  }) : super(
          id: id,
          skip: skip,
          helperPosition: helperPosition,
          name: name,
          nameRus: nameRus,
          nameUrl: nameUrl,
          searchName: searchName,
          image: image,
          recommendation: recommendation,
          createdAt: createdAt,
        );

  MarkModel clone() => MarkModel(
        id: id,
        skip: skip,
        helperPosition: helperPosition,
        name: name,
        nameRus: nameRus,
        nameUrl: nameUrl,
        searchName: searchName,
        image: image,
        recommendation: recommendation,
        createdAt: createdAt,
      );

  factory MarkModel.fromJson(Map<String, dynamic> json) {
    return MarkModel(
      id: json['id'],
      skip: json['skip'] == 1 ? true : false,
      helperPosition: json['helper_position'],
      name: json['name'],
      nameRus: json['name_rus'],
      nameUrl: json['name_url'],
      searchName: json['search_name'],
      image: json['image'],
      recommendation: json['recommendation'] == 1 ? true : false,
      createdAt: json['created_at'],
    );
  }

  static MarkModel? fromEntity(Mark? markEntity) {
    if (markEntity == null) return null;
    return MarkModel(
      id: markEntity.id,
      skip: markEntity.skip,
      helperPosition: markEntity.helperPosition,
      name: markEntity.name,
      nameRus: markEntity.nameRus,
      nameUrl: markEntity.nameUrl,
      searchName: markEntity.searchName,
      image: markEntity.image,
      recommendation: markEntity.recommendation,
      createdAt: markEntity.createdAt,
    );
  }
}
