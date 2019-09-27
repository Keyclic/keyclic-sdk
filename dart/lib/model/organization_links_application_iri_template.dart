part of keyclic_sdk_api.api;

class OrganizationLinksApplicationIriTemplate {
  OrganizationLinksApplicationIriTemplate({
    this.mapping,
  });

  OrganizationLinksApplicationIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = ApplicationLinksSelfIriTemplateMapping.fromJson(json['mapping']);
  }

  ApplicationLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinksApplicationIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= mapping?.hashCode ?? 0;

    return hashCode;
  }

  static List<OrganizationLinksApplicationIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <OrganizationLinksApplicationIriTemplate>[]
        : json
            .map((dynamic value) =>
                OrganizationLinksApplicationIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, OrganizationLinksApplicationIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OrganizationLinksApplicationIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OrganizationLinksApplicationIriTemplate.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'OrganizationLinksApplicationIriTemplate[mapping=$mapping, ]';
  }
}
