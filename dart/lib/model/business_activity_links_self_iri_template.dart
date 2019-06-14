part of keyclic_sdk_api.api;

class BusinessActivityLinksSelfIriTemplate {
  BusinessActivityLinksSelfIriTemplate({
    this.mapping,
  });

  BusinessActivityLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping =
        BusinessActivityLinksSelfIriTemplateMapping.fromJson(json['mapping']);
  }

  BusinessActivityLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivityLinksSelfIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'BusinessActivityLinksSelfIriTemplate[mapping=$mapping, ]';
  }

  static List<BusinessActivityLinksSelfIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<BusinessActivityLinksSelfIriTemplate>()
        : json
            .map(
                (value) => BusinessActivityLinksSelfIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, BusinessActivityLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, BusinessActivityLinksSelfIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = BusinessActivityLinksSelfIriTemplate.fromJson(value));
    }
    return map;
  }
}
