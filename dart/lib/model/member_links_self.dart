part of keyclic_sdk_api.api;

class MemberLinksSelf {
  MemberLinksSelf({
    this.href,
    this.iriTemplate,
  });

  factory MemberLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MemberLinksSelf(
      href: json['href'],
      iriTemplate: MemberLinksSelfIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the self associated to the given member. */
  String href;

  MemberLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberLinksSelf &&
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

  static List<MemberLinksSelf> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => MemberLinksSelf.fromJson(value))
            ?.toList() ??
        <MemberLinksSelf>[];
  }

  static Map<String, MemberLinksSelf> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, MemberLinksSelf>((String key, dynamic value) {
          return MapEntry(key, MemberLinksSelf.fromJson(value));
        }) ??
        <String, MemberLinksSelf>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'MemberLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
