part of keyclic_sdk_api.api;

class OccupantLinksSelf {
  OccupantLinksSelf({
    this.href,
    this.iriTemplate,
  });

  OccupantLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = OccupantLinksSelfIriTemplate.fromJson(json['iriTemplate']);
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
    return json == null
        ? <OccupantLinksSelf>[]
        : json
            .map((dynamic value) => OccupantLinksSelf.fromJson(value))
            .toList();
  }

  static Map<String, OccupantLinksSelf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, OccupantLinksSelf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OccupantLinksSelf.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'OccupantLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
