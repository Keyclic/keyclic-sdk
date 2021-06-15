part of keyclic_sdk_api.api;

class PlaceLinksChildrenIriTemplateMapping {
  PlaceLinksChildrenIriTemplateMapping({
    this.parent,
  });

  factory PlaceLinksChildrenIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceLinksChildrenIriTemplateMapping(
      parent: json['parent'],
    );
  }

  String parent;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksChildrenIriTemplateMapping &&
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

  static List<PlaceLinksChildrenIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                PlaceLinksChildrenIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <PlaceLinksChildrenIriTemplateMapping>[];
  }

  static Map<String, PlaceLinksChildrenIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, PlaceLinksChildrenIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(
              key, PlaceLinksChildrenIriTemplateMapping.fromJson(value));
        }) ??
        <String, PlaceLinksChildrenIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (parent != null) 'parent': parent,
    };
  }

  @override
  String toString() {
    return 'PlaceLinksChildrenIriTemplateMapping[parent=$parent, ]';
  }
}
