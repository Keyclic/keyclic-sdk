part of keyclic_sdk_api.api;

class BusinessActivityLinksImageIriTemplateMapping {
  BusinessActivityLinksImageIriTemplateMapping({
    this.businessActivity,
  });

  BusinessActivityLinksImageIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    businessActivity = json['businessActivity'];
  }

  String businessActivity;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivityLinksImageIriTemplateMapping &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'businessActivity': businessActivity,
    };
  }

  @override
  String toString() {
    return 'BusinessActivityLinksImageIriTemplateMapping[businessActivity=$businessActivity, ]';
  }

  static List<BusinessActivityLinksImageIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<BusinessActivityLinksImageIriTemplateMapping>()
        : json
            .map((value) =>
                BusinessActivityLinksImageIriTemplateMapping.fromJson(value))
            .toList();
  }

  static Map<String, BusinessActivityLinksImageIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, BusinessActivityLinksImageIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] =
          BusinessActivityLinksImageIriTemplateMapping.fromJson(value));
    }
    return map;
  }
}
