part of keyclic_sdk_api.api;

class MarkerLinksPlan {
  MarkerLinksPlan({
    this.href,
    this.iriTemplate,
  });

  factory MarkerLinksPlan.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MarkerLinksPlan(
      href: json['href'],
      iriTemplate: MarkerLinksPlanIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the plan associated to the given marker. */
  String href;

  MarkerLinksPlanIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MarkerLinksPlan &&
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

  static List<MarkerLinksPlan> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => MarkerLinksPlan.fromJson(value))
            ?.toList() ??
        <MarkerLinksPlan>[];
  }

  static Map<String, MarkerLinksPlan> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, MarkerLinksPlan>((String key, dynamic value) {
          return MapEntry(key, MarkerLinksPlan.fromJson(value));
        }) ??
        <String, MarkerLinksPlan>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'MarkerLinksPlan[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
