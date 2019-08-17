part of keyclic_sdk_api.api;

class PublicationLinksOrganizationIriTemplate {
  PublicationLinksOrganizationIriTemplate({
    this.mapping,
  });

  PublicationLinksOrganizationIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping =
        CategoryLinksOrganizationIriTemplateMapping.fromJson(json['mapping']);
  }

  CategoryLinksOrganizationIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationLinksOrganizationIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'PublicationLinksOrganizationIriTemplate[mapping=$mapping, ]';
  }

  static List<PublicationLinksOrganizationIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<PublicationLinksOrganizationIriTemplate>()
        : json
            .map((value) =>
                PublicationLinksOrganizationIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, PublicationLinksOrganizationIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PublicationLinksOrganizationIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PublicationLinksOrganizationIriTemplate.fromJson(value));
    }
    return map;
  }
}
