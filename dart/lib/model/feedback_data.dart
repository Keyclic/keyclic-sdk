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
  }

  String category;

  FeedbackDataGeo geo;

  String description;

  String visibility;
  //enum visibilityEnum {  VISIBILITY_PUBLIC,  VISIBILITY_PRIVATE,  };

  String businessActivity;

  bool proMode;

  Map<String, String> metadata;

  Map<String, dynamic> toJson() {
    return {
      'category': category,
      'geo': geo,
      'description': description,
      'visibility': visibility,
      'businessActivity': businessActivity,
      'proMode': proMode,
      'metadata': metadata,
    };
  }

  @override
  String toString() {
    return 'FeedbackData[category=$category, geo=$geo, description=$description, visibility=$visibility, businessActivity=$businessActivity, proMode=$proMode, metadata=$metadata, ]';
  }

  static List<FeedbackData> listFromJson(List<dynamic> json) {
    return json == null
        ? List<FeedbackData>()
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
}
