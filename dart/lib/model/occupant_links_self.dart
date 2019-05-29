part of keyclic_sdk_api.api;

class OccupantLinksSelf {
  OccupantLinksSelf();

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

  static List<OccupantLinksSelf> listFromJson(List<dynamic> json) {
    return json == null ? List<OccupantLinksSelf>() : json.map((value) => OccupantLinksSelf.fromJson(value)).toList();
  }

  static Map<String, OccupantLinksSelf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, OccupantLinksSelf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = OccupantLinksSelf.fromJson(value));
    }
    return map;
  }
}
