part of keyclic_sdk_api.api;

class FeedbackDataVisibilityEnum {
  static const String pRIVATE_ = "VISIBILITY_PRIVATE";
  static const String pUBLIC_ = "VISIBILITY_PUBLIC";
}

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

  /// use FeedbackDataVisibilityEnum
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

    hashCode ^= (category?.hashCode ?? 0);
    hashCode ^= (geo?.hashCode ?? 0);
    hashCode ^= (description?.hashCode ?? 0);
    hashCode ^= (visibility?.hashCode ?? 0);
    hashCode ^= (businessActivity?.hashCode ?? 0);
    hashCode ^= (proMode?.hashCode ?? 0);
    hashCode ^= (place?.hashCode ?? 0);

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
