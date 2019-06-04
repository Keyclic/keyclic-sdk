part of keyclic_sdk_api.api;

class MemberLinksPerson {
  MemberLinksPerson({
    this.href,
    this.iriTemplate,
  });

  MemberLinksPerson.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        DelegationLinksCreatedByIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the person associated to the given member. */
  String href;

  DelegationLinksCreatedByIriTemplate iriTemplate;

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'MemberLinksPerson[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<MemberLinksPerson> listFromJson(List<dynamic> json) {
    return json == null
        ? List<MemberLinksPerson>()
        : json.map((value) => MemberLinksPerson.fromJson(value)).toList();
  }

  static Map<String, MemberLinksPerson> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MemberLinksPerson>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = MemberLinksPerson.fromJson(value));
    }
    return map;
  }
}
