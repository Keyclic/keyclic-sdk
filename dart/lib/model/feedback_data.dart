part of keyclic_sdk_api.api;

class FeedbackDataVisibilityEnum {
  static const String pRIVATE_ = "VISIBILITY_PRIVATE";
  static const String pUBLIC_ = "VISIBILITY_PUBLIC";
}

class FeedbackData {
  FeedbackData({
    this.businessActivity,
    this.category,
    this.description,
    this.geo,
    this.metadata,
    this.place,
    this.proMode,
    this.visibility,
  });

  FeedbackData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    businessActivity = json['businessActivity'];
    category = json['category'];
    description = json['description'];
    geo = FeedbackDataGeo.fromJson(json['geo']);
    metadata = json['metadata'];
    place = json['place'];
    proMode = json['proMode'];
    visibility = json['visibility'];
  }

  String businessActivity;

  String category;

  String description;

  FeedbackDataGeo geo;

  Map<String, String> metadata;

  String place;

  bool proMode;

  /// use FeedbackDataVisibilityEnum
  String visibility;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackData &&
        runtimeType == other.runtimeType &&
        businessActivity == other.businessActivity &&
        category == other.category &&
        description == other.description &&
        geo == other.geo &&
        DeepCollectionEquality.unordered().equals(metadata, other.metadata) &&
        place == other.place &&
        proMode == other.proMode &&
        visibility == other.visibility;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (metadata is Map && metadata.isNotEmpty) {
      hashCode ^= metadata.keys
          .map((dynamic element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
      hashCode ^= metadata.values
          .map((dynamic element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= businessActivity?.hashCode ?? 0;
    hashCode ^= category?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= geo?.hashCode ?? 0;
    hashCode ^= place?.hashCode ?? 0;
    hashCode ^= proMode?.hashCode ?? 0;
    hashCode ^= visibility?.hashCode ?? 0;

    return hashCode;
  }

  static List<FeedbackData> listFromJson(List<dynamic> json) {
    return json == null
        ? <FeedbackData>[]
        : json.map((dynamic value) => FeedbackData.fromJson(value)).toList();
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
      if (businessActivity != null) 'businessActivity': businessActivity,
      if (category != null) 'category': category,
      if (description != null) 'description': description,
      if (geo != null) 'geo': geo,
      if (metadata != null) 'metadata': metadata,
      if (place != null) 'place': place,
      if (proMode != null) 'proMode': proMode,
      if (visibility != null) 'visibility': visibility,
    };
  }

  @override
  String toString() {
    return 'FeedbackData[businessActivity=$businessActivity, category=$category, description=$description, geo=$geo, metadata=$metadata, place=$place, proMode=$proMode, visibility=$visibility, ]';
  }
}
