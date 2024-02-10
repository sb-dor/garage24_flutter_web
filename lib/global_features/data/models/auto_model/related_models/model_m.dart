import 'package:moshin_flutter_web/global_features/domain/entities/auto/related_enitites/model.dart';

class ModelM extends Model {
  ModelM({
    int? id,
    String? name,
    String? nameRus,
    String? nameUrl,
    String? searchName,
    String? createdAt,
  }) : super(
          id: id,
          name: name,
          nameRus: nameRus,
          nameUrl: nameUrl,
          searchName: searchName,
          createdAt: createdAt,
        );

  ModelM clone() => ModelM(
        id: id,
        nameRus: nameRus,
        nameUrl: nameUrl,
        name: name,
        searchName: searchName,
        createdAt: createdAt,
      );

  factory ModelM.fromJson(Map<String, dynamic> json) {
    return ModelM(
      id: json['id'],
      name: json['name'],
      nameRus: json['name_rus'],
      nameUrl: json['name_url'],
      searchName: json['search_name'],
      createdAt: json['created_at'],
    );
  }

  static ModelM? fromEntity(Model? autoModelEntity) {
    if (autoModelEntity == null) return null;
    return ModelM(
      id: autoModelEntity.id,
      name: autoModelEntity.name,
      nameRus: autoModelEntity.nameRus,
      nameUrl: autoModelEntity.nameUrl,
      searchName: autoModelEntity.searchName,
      createdAt: autoModelEntity.createdAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "name_rus": nameRus,
      "name_url": nameUrl,
      "search_name": searchName,
    };
  }
}
