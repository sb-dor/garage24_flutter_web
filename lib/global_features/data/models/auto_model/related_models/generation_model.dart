import 'package:moshin_flutter_web/global_features/domain/entities/auto/related_enitites/generation.dart';

class GenerationModel extends Generation {
  GenerationModel({
    int? id,
    bool? skip,
    String? name,
    String? searchName,
    String? image,
    int? beginYear,
    int? endYear,
    String? createdAt,
  }) : super(
          id: id,
          skip: skip,
          name: name,
          searchName: searchName,
          image: image,
          beginYear: beginYear,
          endYear: endYear,
          createdAt: createdAt,
        );

  GenerationModel clone() => GenerationModel(
        id: id,
        skip: skip,
        name: name,
        searchName: searchName,
        image: image,
        beginYear: beginYear,
        endYear: endYear,
        createdAt: createdAt,
      );

  factory GenerationModel.fromJson(Map<String, dynamic> json) => GenerationModel(
        id: json['id'],
        skip: json['skip'] == 1 ? true : false,
        name: json['name'],
        searchName: json['search_name'],
        image: json['image'],
        beginYear: json['begin_year'],
        endYear: json['end_year'],
        createdAt: json['created_at'],
      );

  static GenerationModel? fromEntity(Generation? generationEntity) {
    if (generationEntity == null) return null;
    return GenerationModel(
      id: generationEntity.id,
      skip: generationEntity.skip,
      name: generationEntity.name,
      searchName: generationEntity.searchName,
      image: generationEntity.image,
      beginYear: generationEntity.beginYear,
      endYear: generationEntity.endYear,
      createdAt: generationEntity.createdAt,
    );
  }
}
