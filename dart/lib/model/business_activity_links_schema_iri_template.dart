part of keyclic_sdk_api.api;

class BusinessActivityLinksSchemaIriTemplate {
  BusinessActivityLinksSchemaIriTemplate({
    this.mapping,
  });

  factory BusinessActivityLinksSchemaIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BusinessActivityLinksSchemaIriTemplate(
      mapping: BusinessActivityLinksImageIriTemplateMapping.fromJson(
          json['mapping']),
    );
  }

  BusinessActivityLinksImageIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivityLinksSchemaIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= mapping?.hashCode ?? 0;

    return hashCode;
  }

  static List<BusinessActivityLinksSchemaIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                BusinessActivityLinksSchemaIriTemplate.fromJson(value))
            ?.toList() ??
        <BusinessActivityLinksSchemaIriTemplate>[];
  }

  static Map<String, BusinessActivityLinksSchemaIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, BusinessActivityLinksSchemaIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, BusinessActivityLinksSchemaIriTemplate.fromJson(value));
        }) ??
        <String, BusinessActivityLinksSchemaIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping?.toJson(),
    };
  }

  @override
  String toString() {
    return 'BusinessActivityLinksSchemaIriTemplate[mapping=$mapping, ]';
  }
}
