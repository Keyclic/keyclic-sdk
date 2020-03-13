part of keyclic_sdk_api.api;

class PublicationLinksFeedIriTemplate {
  PublicationLinksFeedIriTemplate({
    this.mapping,
  });

  factory PublicationLinksFeedIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PublicationLinksFeedIriTemplate(
      mapping: OccupantLinksPlaceIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  OccupantLinksPlaceIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationLinksFeedIriTemplate &&
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

  static List<PublicationLinksFeedIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                PublicationLinksFeedIriTemplate.fromJson(value))
            ?.toList() ??
        <PublicationLinksFeedIriTemplate>[];
  }

  static Map<String, PublicationLinksFeedIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, PublicationLinksFeedIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, PublicationLinksFeedIriTemplate.fromJson(value));
        }) ??
        <String, PublicationLinksFeedIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'PublicationLinksFeedIriTemplate[mapping=$mapping, ]';
  }
}
