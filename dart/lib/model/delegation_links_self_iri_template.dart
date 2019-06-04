part of keyclic_sdk_api.api;

class DelegationLinksSelfIriTemplate {
  DelegationLinksSelfIriTemplate({
    this.mapping,
  });

  DelegationLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = DelegationLinksSelfIriTemplateMapping.fromJson(json['mapping']);
  }

  DelegationLinksSelfIriTemplateMapping mapping;

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'DelegationLinksSelfIriTemplate[mapping=$mapping, ]';
  }

  static List<DelegationLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? List<DelegationLinksSelfIriTemplate>()
        : json
            .map((value) => DelegationLinksSelfIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, DelegationLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DelegationLinksSelfIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DelegationLinksSelfIriTemplate.fromJson(value));
    }
    return map;
  }
}
