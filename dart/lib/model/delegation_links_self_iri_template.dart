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

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DelegationLinksSelfIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= mapping?.hashCode ?? 0;

    return hashCode;
  }

  static List<DelegationLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? <DelegationLinksSelfIriTemplate>[]
        : json
            .map((dynamic value) =>
                DelegationLinksSelfIriTemplate.fromJson(value))
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

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'DelegationLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
