part of keyclic_sdk_api.api;

class OccupantLinksPlaceIriTemplate {
  OccupantLinksPlaceIriTemplate({
    this.mapping,
  });

  OccupantLinksPlaceIriTemplate.fromJson(Map<String, dynamic> json) {
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

    return other is OccupantLinksPlaceIriTemplate &&
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

  static List<OccupantLinksPlaceIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? <OccupantLinksPlaceIriTemplate>[]
        : json
            .map((dynamic value) =>
                OccupantLinksPlaceIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, OccupantLinksPlaceIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OccupantLinksPlaceIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OccupantLinksPlaceIriTemplate.fromJson(value));
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
    return 'OccupantLinksPlaceIriTemplate[mapping=$mapping, ]';
  }
}
