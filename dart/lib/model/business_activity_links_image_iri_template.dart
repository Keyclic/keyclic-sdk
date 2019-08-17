part of keyclic_sdk_api.api;

class BusinessActivityLinksImageIriTemplate {
  BusinessActivityLinksImageIriTemplate({
    this.mapping,
  });

  BusinessActivityLinksImageIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping =
        BusinessActivityLinksImageIriTemplateMapping.fromJson(json['mapping']);
  }

  BusinessActivityLinksImageIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivityLinksImageIriTemplate &&
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
    return 'BusinessActivityLinksImageIriTemplate[mapping=$mapping, ]';
  }

  static List<BusinessActivityLinksImageIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<BusinessActivityLinksImageIriTemplate>()
        : json
            .map((value) =>
                BusinessActivityLinksImageIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, BusinessActivityLinksImageIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, BusinessActivityLinksImageIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = BusinessActivityLinksImageIriTemplate.fromJson(value));
    }
    return map;
  }
}
