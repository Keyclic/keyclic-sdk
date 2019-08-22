part of keyclic_sdk_api.api;

class DelegationLinksToIriTemplate {
  DelegationLinksToIriTemplate({
    this.mapping,
  });

  DelegationLinksToIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping =
        CategoryLinksOrganizationIriTemplateMapping.fromJson(json['mapping']);
  }

  CategoryLinksOrganizationIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DelegationLinksToIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ mapping.hashCode;

  static List<DelegationLinksToIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? <DelegationLinksToIriTemplate>[]
        : json
            .map((value) => DelegationLinksToIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, DelegationLinksToIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DelegationLinksToIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DelegationLinksToIriTemplate.fromJson(value));
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
    return 'DelegationLinksToIriTemplate[mapping=$mapping, ]';
  }
}
