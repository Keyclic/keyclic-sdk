part of keyclic_sdk_api.api;

class OccupantLinksPerson {
  OccupantLinksPerson({
    this.href,
    this.iriTemplate,
  });

  OccupantLinksPerson.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = OccupantLinksPersonIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the person associated to the given occupant. */
  String href;

  OccupantLinksPersonIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantLinksPerson &&
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

  static List<OccupantLinksPerson> listFromJson(List<dynamic> json) {
    return json == null
        ? <OccupantLinksPerson>[]
        : json
            .map((dynamic value) => OccupantLinksPerson.fromJson(value))
            .toList();
  }

  static Map<String, OccupantLinksPerson> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OccupantLinksPerson>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OccupantLinksPerson.fromJson(value));
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
    return 'OccupantLinksPerson[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
