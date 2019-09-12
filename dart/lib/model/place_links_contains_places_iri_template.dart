part of keyclic_sdk_api.api;

class PlaceLinksContainsPlacesIriTemplate {
  PlaceLinksContainsPlacesIriTemplate({
    this.mapping,
  });

  PlaceLinksContainsPlacesIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping =
        PlaceLinksContainsPlacesIriTemplateMapping.fromJson(json['mapping']);
  }

  PlaceLinksContainsPlacesIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksContainsPlacesIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= (mapping?.hashCode ?? 0);

    return hashCode;
  }

  static List<PlaceLinksContainsPlacesIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <PlaceLinksContainsPlacesIriTemplate>[]
        : json
            .map((dynamic value) =>
                PlaceLinksContainsPlacesIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, PlaceLinksContainsPlacesIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PlaceLinksContainsPlacesIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PlaceLinksContainsPlacesIriTemplate.fromJson(value));
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
    return 'PlaceLinksContainsPlacesIriTemplate[mapping=$mapping, ]';
  }
}
