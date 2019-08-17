part of keyclic_sdk_api.api;

class OrganizationLinksBusinessActivityIriTemplate {
  OrganizationLinksBusinessActivityIriTemplate({
    this.mapping,
  });

  OrganizationLinksBusinessActivityIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping =
        BusinessActivityLinksImageIriTemplateMapping.fromJson(json['mapping']);
  }

  BusinessActivityLinksImageIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinksBusinessActivityIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<OrganizationLinksBusinessActivityIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<OrganizationLinksBusinessActivityIriTemplate>()
        : json
            .map((value) =>
                OrganizationLinksBusinessActivityIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, OrganizationLinksBusinessActivityIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OrganizationLinksBusinessActivityIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] =
          OrganizationLinksBusinessActivityIriTemplate.fromJson(value));
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
    return 'OrganizationLinksBusinessActivityIriTemplate[mapping=$mapping, ]';
  }
}
