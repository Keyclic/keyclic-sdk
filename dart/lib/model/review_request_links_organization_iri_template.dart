// @dart=2.10
part of keyclic_sdk_api.api;

class ReviewRequestLinksOrganizationIriTemplate {
  ReviewRequestLinksOrganizationIriTemplate({
    this.mapping,
  });

  factory ReviewRequestLinksOrganizationIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestLinksOrganizationIriTemplate(
      mapping:
          CategoryLinksOrganizationIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  CategoryLinksOrganizationIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestLinksOrganizationIriTemplate &&
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

  static List<ReviewRequestLinksOrganizationIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                ReviewRequestLinksOrganizationIriTemplate.fromJson(value))
            ?.toList() ??
        <ReviewRequestLinksOrganizationIriTemplate>[];
  }

  static Map<String, ReviewRequestLinksOrganizationIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ReviewRequestLinksOrganizationIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, ReviewRequestLinksOrganizationIriTemplate.fromJson(value));
        }) ??
        <String, ReviewRequestLinksOrganizationIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'ReviewRequestLinksOrganizationIriTemplate[mapping=$mapping, ]';
  }
}
