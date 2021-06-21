// @dart=2.10
part of keyclic_sdk_api.api;

class PlaceLinksSelf {
  PlaceLinksSelf({
    this.href,
    this.iriTemplate,
  });

  factory PlaceLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceLinksSelf(
      href: json['href'],
      iriTemplate: PlaceLinksSelfIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the self associated to the given place. */
  String href;

  PlaceLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksSelf &&
        runtimeType == other.runtimeType &&
        href == other.href &&
        iriTemplate == other.iriTemplate;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= href?.hashCode ?? 0;
    hashCode ^= iriTemplate?.hashCode ?? 0;

    return hashCode;
  }

  static List<PlaceLinksSelf> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PlaceLinksSelf.fromJson(value))
            ?.toList() ??
        <PlaceLinksSelf>[];
  }

  static Map<String, PlaceLinksSelf> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, PlaceLinksSelf>((String key, dynamic value) {
          return MapEntry(key, PlaceLinksSelf.fromJson(value));
        }) ??
        <String, PlaceLinksSelf>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'PlaceLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
