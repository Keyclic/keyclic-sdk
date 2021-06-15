part of keyclic_sdk_api.api;

class OccupantLinksMember {
  OccupantLinksMember({
    this.href,
    this.iriTemplate,
  });

  factory OccupantLinksMember.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OccupantLinksMember(
      href: json['href'],
      iriTemplate: OccupantLinksMemberIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the member associated to the given occupant. */
  String href;

  OccupantLinksMemberIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantLinksMember &&
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

  static List<OccupantLinksMember> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => OccupantLinksMember.fromJson(value))
            ?.toList() ??
        <OccupantLinksMember>[];
  }

  static Map<String, OccupantLinksMember> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, OccupantLinksMember>((String key, dynamic value) {
          return MapEntry(key, OccupantLinksMember.fromJson(value));
        }) ??
        <String, OccupantLinksMember>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate?.toJson(),
    };
  }

  @override
  String toString() {
    return 'OccupantLinksMember[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
