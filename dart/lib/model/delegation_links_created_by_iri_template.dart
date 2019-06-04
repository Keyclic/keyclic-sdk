part of keyclic_sdk_api.api;

class DelegationLinksCreatedByIriTemplate {
  DelegationLinksCreatedByIriTemplate({
    this.mapping,
  });

  DelegationLinksCreatedByIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping =
        DelegationLinksCreatedByIriTemplateMapping.fromJson(json['mapping']);
  }

  DelegationLinksCreatedByIriTemplateMapping mapping;

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'DelegationLinksCreatedByIriTemplate[mapping=$mapping, ]';
  }

  static List<DelegationLinksCreatedByIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<DelegationLinksCreatedByIriTemplate>()
        : json
            .map((value) => DelegationLinksCreatedByIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, DelegationLinksCreatedByIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DelegationLinksCreatedByIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DelegationLinksCreatedByIriTemplate.fromJson(value));
    }
    return map;
  }
}
