// @dart=2.10
part of keyclic_sdk_api.api;

class MarkerLinksPlanIriTemplateMapping {
  MarkerLinksPlanIriTemplateMapping({
    this.plan,
  });

  factory MarkerLinksPlanIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MarkerLinksPlanIriTemplateMapping(
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

    return other is MarkerLinksPlanIriTemplateMapping &&
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

  static List<MarkerLinksPlanIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                MarkerLinksPlanIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <MarkerLinksPlanIriTemplateMapping>[];
  }

  static Map<String, MarkerLinksPlanIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, MarkerLinksPlanIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(
              key, MarkerLinksPlanIriTemplateMapping.fromJson(value));
        }) ??
        <String, MarkerLinksPlanIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (plan != null) 'plan': plan,
    };
  }

  @override
  String toString() {
    return 'MarkerLinksPlanIriTemplateMapping[plan=$plan, ]';
  }
}
