part of keyclic_sdk_api.api;

class DelegationLinksFromIriTemplate {
  DelegationLinksFromIriTemplate({
    this.mapping,
  });

  DelegationLinksFromIriTemplate.fromJson(Map<String, dynamic> json) {
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

    return other is DelegationLinksFromIriTemplate &&
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
    return 'DelegationLinksFromIriTemplate[mapping=$mapping, ]';
  }

  static List<DelegationLinksFromIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? List<DelegationLinksFromIriTemplate>()
        : json
            .map((value) => DelegationLinksFromIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, DelegationLinksFromIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DelegationLinksFromIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DelegationLinksFromIriTemplate.fromJson(value));
    }
    return map;
  }
}
