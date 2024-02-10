import 'related_enitites/generation.dart';
import 'related_enitites/mark.dart';
import 'related_enitites/model.dart';

class Auto {
  int? id;

  Mark? markEntity;

  Model? autoModelEntity;

  Generation? generationEntity;

  bool? panoramicView;

  bool? exchange;

  bool? custom;

  bool? state;

  int? modification;

  bool? leatherInterior;

  double? engineVolume;

  int? qtySeats;

  int? mileage;

  int? price;

  String? mileageType;

  String? description;

  String? exchangeDescription;

  int? year;

  int? views;

  int? phoneViews;

  bool? inGarage;

  String? deletionRequest;

  String? checkedAt;

  String? nextRefreshDate;

  String? createdAt;

  String? publishedAt;

  int? similarAds;

  int? marketPrice;

  int? minPrice;

  int? maxPrice;

  double? priceScale;

  bool checkedFavorite;
  bool checkedComparison;
  bool showPhoneNumber;

  Auto({
    required this.id,
    required this.markEntity,
    required this.autoModelEntity,
    required this.generationEntity,
    required this.panoramicView,
    required this.exchange,
    required this.custom,
    required this.state,
    required this.modification,
    required this.leatherInterior,
    required this.engineVolume,
    required this.qtySeats,
    required this.mileage,
    required this.price,
    required this.mileageType,
    required this.description,
    required this.exchangeDescription,
    required this.year,
    required this.views,
    required this.phoneViews,
    required this.inGarage,
    required this.deletionRequest,
    required this.checkedAt,
    required this.nextRefreshDate,
    required this.createdAt,
    required this.publishedAt,
    required this.similarAds,
    required this.marketPrice,
    required this.minPrice,
    required this.maxPrice,
    required this.priceScale,
    required this.checkedFavorite,
    required this.checkedComparison,
    this.showPhoneNumber = false,
  });
}
