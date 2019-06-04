part of keyclic_sdk_api.api;

class PublicationLinksSelfIriTemplateMapping {
  PublicationLinksSelfIriTemplateMapping({
    this.organization,
    this.publication,
  });

  PublicationLinksSelfIriTemplateMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    organization = json['organization'];
    publication = json['publication'];
  }

  String organization;

  String publication;

  Map<String, dynamic> toJson() {
    return {
      'organization': organization,
      'publication': publication,
    };
  }

  @override
  String toString() {
    return 'PublicationLinksSelfIriTemplateMapping[organization=$organization, publication=$publication, ]';
  }

  static List<PublicationLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<PublicationLinksSelfIriTemplateMapping>()
        : json
            .map((value) =>
                PublicationLinksSelfIriTemplateMapping.fromJson(value))
            .toList();
  }

  static Map<String, PublicationLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PublicationLinksSelfIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PublicationLinksSelfIriTemplateMapping.fromJson(value));
    }
    return map;
  }
}
