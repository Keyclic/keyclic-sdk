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
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberLinksPerson &&
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

  static List<MemberLinksPerson> listFromJson(List<dynamic> json) {
    return json == null
        ? <MemberLinksPerson>[]
        : json
            .map((dynamic value) => MemberLinksPerson.fromJson(value))
            .toList();
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
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'MemberLinksPerson[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
