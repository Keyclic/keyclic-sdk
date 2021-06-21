// @dart=2.10
part of keyclic_sdk_api.api;

class BusinessActivityLinksSelfIriTemplate {
  BusinessActivityLinksSelfIriTemplate({
    this.mapping,
  });

  factory BusinessActivityLinksSelfIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BusinessActivityLinksSelfIriTemplate(
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

    return other is BusinessActivityLinksSelfIriTemplate &&
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

  static List<BusinessActivityLinksSelfIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                BusinessActivityLinksSelfIriTemplate.fromJson(value))
            ?.toList() ??
        <BusinessActivityLinksSelfIriTemplate>[];
  }

  static Map<String, BusinessActivityLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, BusinessActivityLinksSelfIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, BusinessActivityLinksSelfIriTemplate.fromJson(value));
        }) ??
        <String, BusinessActivityLinksSelfIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'BusinessActivityLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
