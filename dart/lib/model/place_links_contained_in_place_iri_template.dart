part of keyclic_sdk_api.api;

class PlaceLinksContainedInPlaceIriTemplate {
  PlaceLinksContainedInPlaceIriTemplate({
    this.mapping,
  });

  factory PlaceLinksContainedInPlaceIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceLinksContainedInPlaceIriTemplate(
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

    return other is PlaceLinksContainedInPlaceIriTemplate &&
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

  static List<PlaceLinksContainedInPlaceIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <PlaceLinksContainedInPlaceIriTemplate>[]
        : json
            .map((dynamic value) =>
                PlaceLinksContainedInPlaceIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, PlaceLinksContainedInPlaceIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PlaceLinksContainedInPlaceIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PlaceLinksContainedInPlaceIriTemplate.fromJson(value));
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
    return 'PlaceLinksContainedInPlaceIriTemplate[mapping=$mapping, ]';
  }
}
