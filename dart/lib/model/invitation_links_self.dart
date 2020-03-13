part of keyclic_sdk_api.api;

class InvitationLinksSelf {
  InvitationLinksSelf({
    this.href,
    this.iriTemplate,
  });

  factory InvitationLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InvitationLinksSelf(
      href: json['href'],
      iriTemplate: InvitationLinksSelfIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the self associated to the given invitation. */
  String href;

  InvitationLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InvitationLinksSelf &&
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

  static List<InvitationLinksSelf> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => InvitationLinksSelf.fromJson(value))
            ?.toList() ??
        <InvitationLinksSelf>[];
  }

  static Map<String, InvitationLinksSelf> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, InvitationLinksSelf>((String key, dynamic value) {
          return MapEntry(key, InvitationLinksSelf.fromJson(value));
        }) ??
        <String, InvitationLinksSelf>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'InvitationLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
