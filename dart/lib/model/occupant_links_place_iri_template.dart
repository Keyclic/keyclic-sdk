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
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantLinksPlaceIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<OccupantLinksPlaceIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? List<OccupantLinksPlaceIriTemplate>()
        : json
            .map((value) => OccupantLinksPlaceIriTemplate.fromJson(value))
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
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'OccupantLinksPlaceIriTemplate[mapping=$mapping, ]';
  }
}
