part of keyclic_sdk_api.api;

class FeedbackData {
  FeedbackData({
    this.category,
    this.geo,
    this.description,
    this.visibility,
    this.businessActivity,
    this.proMode,
    this.metadata,
    this.place,
  });

  FeedbackData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    category = json['category'];
    geo = FeedbackDataGeo.fromJson(json['geo']);
    description = json['description'];
    visibility = json['visibility'];
    businessActivity = json['businessActivity'];
    proMode = json['proMode'];
    metadata = json['metadata'];
    place = json['place'];
  }

  String category;

  FeedbackDataGeo geo;

  String description;

  /// enum visibilityEnum {  VISIBILITY_PRIVATE,  VISIBILITY_PUBLIC,  };
  String visibility;

  String businessActivity;

  bool proMode;

  Map<String, String> metadata;

  String place;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackData &&
        runtimeType == other.runtimeType &&
        category == other.category &&
        geo == other.geo &&
        description == other.description &&
        visibility == other.visibility &&
        businessActivity == other.businessActivity &&
        proMode == other.proMode &&
        DeepCollectionEquality.unordered().equals(metadata, other.metadata) &&
        place == other.place;
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      category.hashCode ^
      geo.hashCode ^
      description.hashCode ^
      visibility.hashCode ^
      businessActivity.hashCode ^
      proMode.hashCode ^
      metadata.keys.map((dynamic element) => element.hashCode).fold(0,
          (dynamic value, dynamic cursor) => value.hashCode ^ cursor.hashCode) ^
      metadata.values.map((dynamic element) => element.hashCode).fold(0,
          (dynamic value, dynamic cursor) => value.hashCode ^ cursor.hashCode) ^
      place.hashCode;

  static List<FeedbackData> listFromJson(List<dynamic> json) {
    return json == null
        ? <FeedbackData>[]
        : json.map((value) => FeedbackData.fromJson(value)).toList();
  }

  static Map<String, FeedbackData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FeedbackData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackData.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'category': category,
      'geo': geo,
      'description': description,
      'visibility': visibility,
      'businessActivity': businessActivity,
      'proMode': proMode,
      'metadata': metadata,
      'place': place,
    };
  }

  @override
  String toString() {
    return 'FeedbackData[category=$category, geo=$geo, description=$description, visibility=$visibility, businessActivity=$businessActivity, proMode=$proMode, metadata=$metadata, place=$place, ]';
  }
}
