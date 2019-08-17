part of keyclic_sdk_api.api;

class BusinessActivityLinksSchemaIriTemplate {
  BusinessActivityLinksSchemaIriTemplate({
    this.mapping,
  });

  BusinessActivityLinksSchemaIriTemplate.fromJson(Map<String, dynamic> json) {
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

    return other is BusinessActivityLinksSchemaIriTemplate &&
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
    return 'BusinessActivityLinksSchemaIriTemplate[mapping=$mapping, ]';
  }

  static List<BusinessActivityLinksSchemaIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<BusinessActivityLinksSchemaIriTemplate>()
        : json
            .map((value) =>
                BusinessActivityLinksSchemaIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, BusinessActivityLinksSchemaIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, BusinessActivityLinksSchemaIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = BusinessActivityLinksSchemaIriTemplate.fromJson(value));
    }
    return map;
  }
}
