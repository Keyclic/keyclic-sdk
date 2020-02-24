part of keyclic_sdk_api.api;

class InvitationLinksMember {
  InvitationLinksMember({
    this.href,
    this.iriTemplate,
  });

  factory InvitationLinksMember.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InvitationLinksMember(
      href: json['href'],
      iriTemplate:
          InvitationLinksMemberIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the member associated to the given invitation. */
  String href;

  InvitationLinksMemberIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InvitationLinksMember &&
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

  static List<InvitationLinksMember> listFromJson(List<dynamic> json) {
    return json == null
        ? <InvitationLinksMember>[]
        : json
            .map((dynamic value) => InvitationLinksMember.fromJson(value))
            .toList();
  }

  static Map<String, InvitationLinksMember> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, InvitationLinksMember>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = InvitationLinksMember.fromJson(value));
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
    return 'InvitationLinksMember[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
