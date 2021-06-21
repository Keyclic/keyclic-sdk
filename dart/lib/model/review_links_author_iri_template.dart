// @dart=2.10
part of keyclic_sdk_api.api;

class ReviewLinksAuthorIriTemplate {
  ReviewLinksAuthorIriTemplate({
    this.mapping,
  });

  factory ReviewLinksAuthorIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewLinksAuthorIriTemplate(
      mapping: ContributionLinksContributorIriTemplateMapping.fromJson(
          json['mapping']),
    );
  }

  ContributionLinksContributorIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewLinksAuthorIriTemplate &&
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

  static List<ReviewLinksAuthorIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map(
                (dynamic value) => ReviewLinksAuthorIriTemplate.fromJson(value))
            ?.toList() ??
        <ReviewLinksAuthorIriTemplate>[];
  }

  static Map<String, ReviewLinksAuthorIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ReviewLinksAuthorIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, ReviewLinksAuthorIriTemplate.fromJson(value));
        }) ??
        <String, ReviewLinksAuthorIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'ReviewLinksAuthorIriTemplate[mapping=$mapping, ]';
  }
}
