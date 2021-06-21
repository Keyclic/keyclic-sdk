// @dart=2.10
part of keyclic_sdk_api.api;

class ReviewRequestLinksSelfIriTemplate {
  ReviewRequestLinksSelfIriTemplate({
    this.mapping,
  });

  factory ReviewRequestLinksSelfIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestLinksSelfIriTemplate(
      mapping:
          ReviewRequestLinksSelfIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  ReviewRequestLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestLinksSelfIriTemplate &&
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

  static List<ReviewRequestLinksSelfIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                ReviewRequestLinksSelfIriTemplate.fromJson(value))
            ?.toList() ??
        <ReviewRequestLinksSelfIriTemplate>[];
  }

  static Map<String, ReviewRequestLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ReviewRequestLinksSelfIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, ReviewRequestLinksSelfIriTemplate.fromJson(value));
        }) ??
        <String, ReviewRequestLinksSelfIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'ReviewRequestLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
