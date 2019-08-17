part of keyclic_sdk_api.api;

class PlaceLinksContainedInPlaceIriTemplate {
  PlaceLinksContainedInPlaceIriTemplate({
    this.mapping,
  });

  PlaceLinksContainedInPlaceIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = OccupantLinksPlaceIriTemplateMapping.fromJson(json['mapping']);
  }

  OccupantLinksPlaceIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksContainedInPlaceIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'PlaceLinksContainedInPlaceIriTemplate[mapping=$mapping, ]';
  }

  static List<PlaceLinksContainedInPlaceIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<PlaceLinksContainedInPlaceIriTemplate>()
        : json
            .map((value) =>
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
}
