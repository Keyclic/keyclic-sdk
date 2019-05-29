part of keyclic_sdk_api.api;

class PublicationLinksSelfIriTemplate {
  PublicationLinksSelfIriTemplate();

  PublicationLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = PublicationLinksSelfIriTemplateMapping.fromJson(json['mapping']);
  }

  PublicationLinksSelfIriTemplateMapping mapping;

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'PublicationLinksSelfIriTemplate[mapping=$mapping, ]';
  }

  static List<PublicationLinksSelfIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<PublicationLinksSelfIriTemplate>()
        : json
            .map((value) => PublicationLinksSelfIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, PublicationLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PublicationLinksSelfIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PublicationLinksSelfIriTemplate.fromJson(value));
    }
    return map;
  }
}
