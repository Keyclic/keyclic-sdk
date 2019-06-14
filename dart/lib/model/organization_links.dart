part of keyclic_sdk_api.api;

class OrganizationLinks {
  OrganizationLinks({
    this.self,
    this.businessActivity,
    this.logo,
  });

  OrganizationLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    self = OrganizationLinksSelf.fromJson(json['self']);
    businessActivity =
        OrganizationLinksBusinessActivity.fromJson(json['businessActivity']);
    logo = OrganizationLinksLogo.fromJson(json['logo']);
  }

  OrganizationLinksSelf self;

  OrganizationLinksBusinessActivity businessActivity;

  OrganizationLinksLogo logo;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinks && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'self': self,
      'businessActivity': businessActivity,
      'logo': logo,
    };
  }

  @override
  String toString() {
    return 'OrganizationLinks[self=$self, businessActivity=$businessActivity, logo=$logo, ]';
  }

  static List<OrganizationLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? List<OrganizationLinks>()
        : json.map((value) => OrganizationLinks.fromJson(value)).toList();
  }

  static Map<String, OrganizationLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, OrganizationLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OrganizationLinks.fromJson(value));
    }
    return map;
  }
}