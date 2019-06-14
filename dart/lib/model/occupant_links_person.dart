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
    iriTemplate =
        DelegationLinksCreatedByIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the person associated to the given occupant. */
  String href;

  DelegationLinksCreatedByIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantLinksPerson && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

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

  static List<OccupantLinksPerson> listFromJson(List<dynamic> json) {
    return json == null
        ? List<OccupantLinksPerson>()
        : json.map((value) => OccupantLinksPerson.fromJson(value)).toList();
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
}