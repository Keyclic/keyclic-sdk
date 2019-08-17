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
    iriTemplate = MemberLinksPersonIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the person associated to the given member. */
  String href;

  MemberLinksPersonIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is MemberLinksPerson && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

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
}
