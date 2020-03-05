part of keyclic_sdk_api.api;

class BusinessActivityLinksThumbnailIriTemplate {
  BusinessActivityLinksThumbnailIriTemplate({
    this.mapping,
  });

  factory BusinessActivityLinksThumbnailIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BusinessActivityLinksThumbnailIriTemplate(
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

    return other is BusinessActivityLinksThumbnailIriTemplate &&
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

  static List<BusinessActivityLinksThumbnailIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                BusinessActivityLinksThumbnailIriTemplate.fromJson(value))
            ?.toList() ??
        <BusinessActivityLinksThumbnailIriTemplate>[];
  }

  static Map<String, BusinessActivityLinksThumbnailIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(
              key, BusinessActivityLinksThumbnailIriTemplate.fromJson(value));
        }) ??
        <String, BusinessActivityLinksThumbnailIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'BusinessActivityLinksThumbnailIriTemplate[mapping=$mapping, ]';
  }
}
