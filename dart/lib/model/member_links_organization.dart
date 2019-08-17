part of keyclic_sdk_api.api;

class MemberLinksOrganization {
  MemberLinksOrganization({
    this.href,
    this.iriTemplate,
  });

  MemberLinksOrganization.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        MemberLinksOrganizationIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the organization associated to the given member. */
  String href;

  MemberLinksOrganizationIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is MemberLinksOrganization && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<MemberLinksOrganization> listFromJson(List<dynamic> json) {
    return json == null
        ? List<MemberLinksOrganization>()
        : json.map((value) => MemberLinksOrganization.fromJson(value)).toList();
  }

  static Map<String, MemberLinksOrganization> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, MemberLinksOrganization>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = MemberLinksOrganization.fromJson(value));
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
    return 'MemberLinksOrganization[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
