part of keyclic_sdk_api.api;

class RuleLinksSelfIriTemplate {
  RuleLinksSelfIriTemplate({
    this.mapping,
  });

  factory RuleLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return RuleLinksSelfIriTemplate(
      mapping: RuleLinksSelfIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  RuleLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RuleLinksSelfIriTemplate &&
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

  static List<RuleLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => RuleLinksSelfIriTemplate.fromJson(value))
            ?.toList() ??
        <RuleLinksSelfIriTemplate>[];
  }

  static Map<String, RuleLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, RuleLinksSelfIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, RuleLinksSelfIriTemplate.fromJson(value));
        }) ??
        <String, RuleLinksSelfIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'RuleLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
