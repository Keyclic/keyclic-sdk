part of keyclic_sdk_api.api;

class DelegationLinksSelfIriTemplate {
  DelegationLinksSelfIriTemplate({
    this.mapping,
  });

  factory DelegationLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DelegationLinksSelfIriTemplate(
      mapping: DelegationLinksSelfIriTemplateMapping.fromJson(json['mapping']),
    );
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
    return json
            ?.map((dynamic value) =>
                DelegationLinksSelfIriTemplate.fromJson(value))
            ?.toList() ??
        <DelegationLinksSelfIriTemplate>[];
  }

  static Map<String, DelegationLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, DelegationLinksSelfIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, DelegationLinksSelfIriTemplate.fromJson(value));
        }) ??
        <String, DelegationLinksSelfIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'DelegationLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
