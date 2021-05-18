part of keyclic_sdk_api.api;

class MarkerLinksSelfIriTemplateMapping {
  MarkerLinksSelfIriTemplateMapping({
    this.marker,
  });

  factory MarkerLinksSelfIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MarkerLinksSelfIriTemplateMapping(
      marker: json['marker'],
    );
  }

  String marker;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MarkerLinksSelfIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        marker == other.marker;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= marker?.hashCode ?? 0;

    return hashCode;
  }

  static List<MarkerLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                MarkerLinksSelfIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <MarkerLinksSelfIriTemplateMapping>[];
  }

  static Map<String, MarkerLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, MarkerLinksSelfIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(
              key, MarkerLinksSelfIriTemplateMapping.fromJson(value));
        }) ??
        <String, MarkerLinksSelfIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (marker != null) 'marker': marker,
    };
  }

  @override
  String toString() {
    return 'MarkerLinksSelfIriTemplateMapping[marker=$marker, ]';
  }
}
