part of keyclic_sdk_api.api;

class DelegationLinksSelfIriTemplateMapping {
  DelegationLinksSelfIriTemplateMapping();

  DelegationLinksSelfIriTemplateMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    delegation = json['delegation'];
  }

  String delegation;

  Map<String, dynamic> toJson() {
    return {
      'delegation': delegation,
    };
  }

  @override
  String toString() {
    return 'DelegationLinksSelfIriTemplateMapping[delegation=$delegation, ]';
  }

  static List<DelegationLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<DelegationLinksSelfIriTemplateMapping>()
        : json
            .map((value) =>
                DelegationLinksSelfIriTemplateMapping.fromJson(value))
            .toList();
  }

  static Map<String, DelegationLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DelegationLinksSelfIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DelegationLinksSelfIriTemplateMapping.fromJson(value));
    }
    return map;
  }
}
