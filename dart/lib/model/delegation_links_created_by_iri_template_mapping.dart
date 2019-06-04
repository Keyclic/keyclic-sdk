part of keyclic_sdk_api.api;

class DelegationLinksCreatedByIriTemplateMapping {
  DelegationLinksCreatedByIriTemplateMapping({
    this.person,
  });

  DelegationLinksCreatedByIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    person = json['person'];
  }

  String person;

  Map<String, dynamic> toJson() {
    return {
      'person': person,
    };
  }

  @override
  String toString() {
    return 'DelegationLinksCreatedByIriTemplateMapping[person=$person, ]';
  }

  static List<DelegationLinksCreatedByIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<DelegationLinksCreatedByIriTemplateMapping>()
        : json
            .map((value) =>
                DelegationLinksCreatedByIriTemplateMapping.fromJson(value))
            .toList();
  }

  static Map<String, DelegationLinksCreatedByIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DelegationLinksCreatedByIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] =
          DelegationLinksCreatedByIriTemplateMapping.fromJson(value));
    }
    return map;
  }
}
