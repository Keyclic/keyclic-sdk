// @dart=2.10
part of keyclic_sdk_api.api;

class MemberLinksOrganization {
  MemberLinksOrganization({
    this.href,
    this.iriTemplate,
  });

  factory MemberLinksOrganization.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MemberLinksOrganization(
      href: json['href'],
      iriTemplate:
          MemberLinksOrganizationIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the organization associated to the given member. */
  String href;

  MemberLinksOrganizationIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberLinksOrganization &&
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

  static List<MemberLinksOrganization> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => MemberLinksOrganization.fromJson(value))
            ?.toList() ??
        <MemberLinksOrganization>[];
  }

  static Map<String, MemberLinksOrganization> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, MemberLinksOrganization>((String key, dynamic value) {
          return MapEntry(key, MemberLinksOrganization.fromJson(value));
        }) ??
        <String, MemberLinksOrganization>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'MemberLinksOrganization[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
