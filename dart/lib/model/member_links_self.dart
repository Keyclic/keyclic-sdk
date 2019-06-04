part of keyclic_sdk_api.api;

class MemberLinksSelf {
  MemberLinksSelf({
    this.href,
    this.iriTemplate,
  });

  MemberLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = MemberLinksSelfIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the self associated to the given member. */
  String href;

  MemberLinksSelfIriTemplate iriTemplate;

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'MemberLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<MemberLinksSelf> listFromJson(List<dynamic> json) {
    return json == null
        ? List<MemberLinksSelf>()
        : json.map((value) => MemberLinksSelf.fromJson(value)).toList();
  }

  static Map<String, MemberLinksSelf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MemberLinksSelf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = MemberLinksSelf.fromJson(value));
    }
    return map;
  }
}
