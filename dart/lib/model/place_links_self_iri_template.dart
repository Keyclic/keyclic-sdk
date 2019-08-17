part of keyclic_sdk_api.api;

class PlaceLinksSelfIriTemplate {
  PlaceLinksSelfIriTemplate({
    this.mapping,
  });

  PlaceLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
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

    return other is PlaceLinksSelfIriTemplate &&
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
    return 'PlaceLinksSelfIriTemplate[mapping=$mapping, ]';
  }

  static List<PlaceLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? List<PlaceLinksSelfIriTemplate>()
        : json
            .map((value) => PlaceLinksSelfIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, PlaceLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PlaceLinksSelfIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PlaceLinksSelfIriTemplate.fromJson(value));
    }
    return map;
  }
}
