part of keyclic_sdk_api.api;

class PublicationLinksPlaceIriTemplate {
  PublicationLinksPlaceIriTemplate({
    this.mapping,
  });

  PublicationLinksPlaceIriTemplate.fromJson(Map<String, dynamic> json) {
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

    return other is PublicationLinksPlaceIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ mapping.hashCode;

  static List<PublicationLinksPlaceIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <PublicationLinksPlaceIriTemplate>[]
        : json
            .map((value) => PublicationLinksPlaceIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, PublicationLinksPlaceIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PublicationLinksPlaceIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PublicationLinksPlaceIriTemplate.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'PublicationLinksPlaceIriTemplate[mapping=$mapping, ]';
  }
}
