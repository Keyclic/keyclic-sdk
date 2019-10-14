part of keyclic_sdk_api.api;

class PlaceLinksContainsPlacesIriTemplateMapping {
  PlaceLinksContainsPlacesIriTemplateMapping({
    this.parent,
  });

  PlaceLinksContainsPlacesIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    parent = json['parent'];
  }

  String parent;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksContainsPlacesIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        parent == other.parent;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= parent?.hashCode ?? 0;

    return hashCode;
  }

  static List<PlaceLinksContainsPlacesIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <PlaceLinksContainsPlacesIriTemplateMapping>[]
        : json
            .map((dynamic value) =>
                PlaceLinksContainsPlacesIriTemplateMapping.fromJson(value))
            .toList();
  }

  static Map<String, PlaceLinksContainsPlacesIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PlaceLinksContainsPlacesIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] =
          PlaceLinksContainsPlacesIriTemplateMapping.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (parent != null) 'parent': parent,
    };
  }

  @override
  String toString() {
    return 'PlaceLinksContainsPlacesIriTemplateMapping[parent=$parent, ]';
  }
}
