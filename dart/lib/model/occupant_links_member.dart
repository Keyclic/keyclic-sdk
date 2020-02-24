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
    return json == null
        ? <OccupantLinksMember>[]
        : json
            .map((dynamic value) => OccupantLinksMember.fromJson(value))
            .toList();
  }

  static Map<String, OccupantLinksMember> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OccupantLinksMember>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OccupantLinksMember.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'OccupantLinksMember[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
