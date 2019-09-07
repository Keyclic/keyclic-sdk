part of keyclic_sdk_api.api;

class DelegationLinksServiceIriTemplate {
  DelegationLinksServiceIriTemplate({
    this.mapping,
  });

  DelegationLinksServiceIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping =
        DelegationLinksServiceIriTemplateMapping.fromJson(json['mapping']);
  }

  DelegationLinksServiceIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DelegationLinksServiceIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ mapping.hashCode;

  static List<DelegationLinksServiceIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <DelegationLinksServiceIriTemplate>[]
        : json
            .map((value) => DelegationLinksServiceIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, DelegationLinksServiceIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DelegationLinksServiceIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DelegationLinksServiceIriTemplate.fromJson(value));
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
    return 'DelegationLinksServiceIriTemplate[mapping=$mapping, ]';
  }
}
