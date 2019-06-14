part of keyclic_sdk_api.api;

class BusinessActivityLinksSelfIriTemplateMapping {
  BusinessActivityLinksSelfIriTemplateMapping({
    this.businessActivity,
  });

  BusinessActivityLinksSelfIriTemplateMapping.fromJson(
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

    return other is BusinessActivityLinksSelfIriTemplateMapping &&
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
    return 'BusinessActivityLinksSelfIriTemplateMapping[businessActivity=$businessActivity, ]';
  }

  static List<BusinessActivityLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<BusinessActivityLinksSelfIriTemplateMapping>()
        : json
            .map((value) =>
                BusinessActivityLinksSelfIriTemplateMapping.fromJson(value))
            .toList();
  }

  static Map<String, BusinessActivityLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, BusinessActivityLinksSelfIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] =
          BusinessActivityLinksSelfIriTemplateMapping.fromJson(value));
    }
    return map;
  }
}
