part of keyclic_sdk_api.api;

class OccupantLinksPlaceIriTemplateMapping {
  OccupantLinksPlaceIriTemplateMapping({
    this.place,
  });

  OccupantLinksPlaceIriTemplateMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    place = json['place'];
  }

  String place;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantLinksPlaceIriTemplateMapping &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<OccupantLinksPlaceIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<OccupantLinksPlaceIriTemplateMapping>()
        : json
            .map(
                (value) => OccupantLinksPlaceIriTemplateMapping.fromJson(value))
            .toList();
  }

  static Map<String, OccupantLinksPlaceIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OccupantLinksPlaceIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OccupantLinksPlaceIriTemplateMapping.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'place': place,
    };
  }

  @override
  String toString() {
    return 'OccupantLinksPlaceIriTemplateMapping[place=$place, ]';
  }
}
