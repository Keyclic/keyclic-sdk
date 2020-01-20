part of keyclic_sdk_api.api;

class OrganizationLinks {
  OrganizationLinks({
    this.application,
    this.businessActivity,
    this.configuration,
    this.logo,
    this.self,
  });

  factory OrganizationLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OrganizationLinks(
      application: OrganizationLinksApplication.fromJson(json['application']),
      businessActivity:
          OrganizationLinksBusinessActivity.fromJson(json['businessActivity']),
      configuration:
          OrganizationLinksConfiguration.fromJson(json['configuration']),
      logo: OrganizationLinksLogo.fromJson(json['logo']),
      self: OrganizationLinksSelf.fromJson(json['self']),
    );
  }

  OrganizationLinksApplication application;

  OrganizationLinksBusinessActivity businessActivity;

  OrganizationLinksConfiguration configuration;

  OrganizationLinksLogo logo;

  OrganizationLinksSelf self;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinks &&
        runtimeType == other.runtimeType &&
        application == other.application &&
        businessActivity == other.businessActivity &&
        configuration == other.configuration &&
        logo == other.logo &&
        self == other.self;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= application?.hashCode ?? 0;
    hashCode ^= businessActivity?.hashCode ?? 0;
    hashCode ^= configuration?.hashCode ?? 0;
    hashCode ^= logo?.hashCode ?? 0;
    hashCode ^= self?.hashCode ?? 0;

    return hashCode;
  }

  static List<OrganizationLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? <OrganizationLinks>[]
        : json
            .map((dynamic value) => OrganizationLinks.fromJson(value))
            .toList();
  }

  static Map<String, OrganizationLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, OrganizationLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OrganizationLinks.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (application != null) 'application': application,
      if (businessActivity != null) 'businessActivity': businessActivity,
      if (configuration != null) 'configuration': configuration,
      if (logo != null) 'logo': logo,
      if (self != null) 'self': self,
    };
  }

  @override
  String toString() {
    return 'OrganizationLinks[application=$application, businessActivity=$businessActivity, configuration=$configuration, logo=$logo, self=$self, ]';
  }
}
