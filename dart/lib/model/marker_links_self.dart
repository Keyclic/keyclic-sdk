part of keyclic_sdk_api.api;

class MarkerLinksSelf {
  MarkerLinksSelf({
    this.href,
    this.iriTemplate,
  });

  factory MarkerLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MarkerLinksSelf(
      href: json['href'],
      iriTemplate: MarkerLinksSelfIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the self associated to the given marker. */
  String href;

  MarkerLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MarkerLinksSelf &&
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

  static List<MarkerLinksSelf> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => MarkerLinksSelf.fromJson(value))
            ?.toList() ??
        <MarkerLinksSelf>[];
  }

  static Map<String, MarkerLinksSelf> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, MarkerLinksSelf>((String key, dynamic value) {
          return MapEntry(key, MarkerLinksSelf.fromJson(value));
        }) ??
        <String, MarkerLinksSelf>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'MarkerLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
