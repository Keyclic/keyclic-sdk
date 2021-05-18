part of keyclic_sdk_api.api;

class FeedbackDataVisibilityEnum {
  static const String pRIVATE_ = "VISIBILITY_PRIVATE";
  static const String pUBLIC_ = "VISIBILITY_PUBLIC";
  static const String rESTRICTED_ = "VISIBILITY_RESTRICTED";
  static const String sHARED_ = "VISIBILITY_SHARED";
}

class FeedbackData {
  FeedbackData({
    this.batch,
    this.businessActivity,
    this.category,
    this.description,
    this.geo,
    this.metadata,
    this.place,
    this.visibility,
  });

  factory FeedbackData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackData(
      batch: json['batch'],
      businessActivity: json['businessActivity'],
      category: json['category'],
      description: json['description'],
      geo: FeedbackDataGeo.fromJson(json['geo']),
      metadata: json['metadata'],
      place: json['place'],
      visibility: json['visibility'],
    );
  }

  String batch;

  String businessActivity;

  String category;

  String description;

  FeedbackDataGeo geo;

  Map<String, dynamic> metadata;

  String place;

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
        batch == other.batch &&
        businessActivity == other.businessActivity &&
        category == other.category &&
        description == other.description &&
        geo == other.geo &&
        DeepCollectionEquality.unordered().equals(metadata, other.metadata) &&
        place == other.place &&
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

    hashCode ^= batch?.hashCode ?? 0;
    hashCode ^= businessActivity?.hashCode ?? 0;
    hashCode ^= category?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= geo?.hashCode ?? 0;
    hashCode ^= place?.hashCode ?? 0;
    hashCode ^= visibility?.hashCode ?? 0;

    return hashCode;
  }

  static List<FeedbackData> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => FeedbackData.fromJson(value))
            ?.toList() ??
        <FeedbackData>[];
  }

  static Map<String, FeedbackData> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, FeedbackData>((String key, dynamic value) {
          return MapEntry(key, FeedbackData.fromJson(value));
        }) ??
        <String, FeedbackData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'batch': batch,
      'businessActivity': businessActivity,
      'category': category,
      'description': description,
      'geo': geo?.toJson(),
      'metadata': metadata,
      'place': place,
      'visibility': visibility,
    };
  }

  @override
  String toString() {
    return 'FeedbackData[batch=$batch, businessActivity=$businessActivity, category=$category, description=$description, geo=$geo, metadata=$metadata, place=$place, visibility=$visibility, ]';
  }
}
