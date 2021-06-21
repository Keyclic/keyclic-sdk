// @dart=2.10
part of keyclic_sdk_api.api;

class OccupantLinksSelf {
  OccupantLinksSelf({
    this.href,
    this.iriTemplate,
  });

  factory OccupantLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OccupantLinksSelf(
      href: json['href'],
      iriTemplate: OccupantLinksSelfIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the self associated to the given occupant. */
  String href;

  OccupantLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantLinksSelf &&
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

  static List<OccupantLinksSelf> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => OccupantLinksSelf.fromJson(value))
            ?.toList() ??
        <OccupantLinksSelf>[];
  }

  static Map<String, OccupantLinksSelf> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, OccupantLinksSelf>((String key, dynamic value) {
          return MapEntry(key, OccupantLinksSelf.fromJson(value));
        }) ??
        <String, OccupantLinksSelf>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'OccupantLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
