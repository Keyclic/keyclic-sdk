part of keyclic_sdk_api.api;

class PlaceLinksChildrenIriTemplate {
  PlaceLinksChildrenIriTemplate({
    this.mapping,
  });

  factory PlaceLinksChildrenIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceLinksChildrenIriTemplate(
      mapping: PlaceLinksChildrenIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  PlaceLinksChildrenIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksChildrenIriTemplate &&
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

  static List<PlaceLinksChildrenIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                PlaceLinksChildrenIriTemplate.fromJson(value))
            ?.toList() ??
        <PlaceLinksChildrenIriTemplate>[];
  }

  static Map<String, PlaceLinksChildrenIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, PlaceLinksChildrenIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, PlaceLinksChildrenIriTemplate.fromJson(value));
        }) ??
        <String, PlaceLinksChildrenIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'PlaceLinksChildrenIriTemplate[mapping=$mapping, ]';
  }
}
