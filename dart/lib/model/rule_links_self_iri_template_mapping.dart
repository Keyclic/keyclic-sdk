part of keyclic_sdk_api.api;

class RuleLinksSelfIriTemplateMapping {
  RuleLinksSelfIriTemplateMapping({
    this.rule,
  });

  factory RuleLinksSelfIriTemplateMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return RuleLinksSelfIriTemplateMapping(
      rule: json['rule'],
    );
  }

  String rule;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RuleLinksSelfIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        rule == other.rule;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= rule?.hashCode ?? 0;

    return hashCode;
  }

  static List<RuleLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                RuleLinksSelfIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <RuleLinksSelfIriTemplateMapping>[];
  }

  static Map<String, RuleLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, RuleLinksSelfIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(key, RuleLinksSelfIriTemplateMapping.fromJson(value));
        }) ??
        <String, RuleLinksSelfIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (rule != null) 'rule': rule,
    };
  }

  @override
  String toString() {
    return 'RuleLinksSelfIriTemplateMapping[rule=$rule, ]';
  }
}
