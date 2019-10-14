part of keyclic_sdk_api.api;

class PublicationLinksFeedIriTemplate {
  PublicationLinksFeedIriTemplate({
    this.mapping,
  });

  PublicationLinksFeedIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = OccupantLinksPlaceIriTemplateMapping.fromJson(json['mapping']);
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
    return json == null
        ? <PublicationLinksFeedIriTemplate>[]
        : json
            .map((dynamic value) =>
                PublicationLinksFeedIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, PublicationLinksFeedIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PublicationLinksFeedIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PublicationLinksFeedIriTemplate.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'PublicationLinksFeedIriTemplate[mapping=$mapping, ]';
  }
}
