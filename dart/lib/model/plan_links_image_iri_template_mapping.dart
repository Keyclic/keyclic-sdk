part of keyclic_sdk_api.api;

class PlanLinksImageIriTemplateMapping {
  PlanLinksImageIriTemplateMapping({
    this.plan,
  });

  factory PlanLinksImageIriTemplateMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlanLinksImageIriTemplateMapping(
      plan: json['plan'],
    );
  }

  String plan;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlanLinksImageIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        plan == other.plan;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= plan?.hashCode ?? 0;

    return hashCode;
  }

  static List<PlanLinksImageIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                PlanLinksImageIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <PlanLinksImageIriTemplateMapping>[];
  }

  static Map<String, PlanLinksImageIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, PlanLinksImageIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(
              key, PlanLinksImageIriTemplateMapping.fromJson(value));
        }) ??
        <String, PlanLinksImageIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (plan != null) 'plan': plan,
    };
  }

  @override
  String toString() {
    return 'PlanLinksImageIriTemplateMapping[plan=$plan, ]';
  }
}
