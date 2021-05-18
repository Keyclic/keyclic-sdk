part of keyclic_sdk_api.api;

class PlanLinksSelf {
  PlanLinksSelf({
    this.href,
    this.iriTemplate,
  });

  factory PlanLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlanLinksSelf(
      href: json['href'],
      iriTemplate: PlanLinksSelfIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the self associated to the given plan. */
  String href;

  PlanLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlanLinksSelf &&
        runtimeType == other.runtimeType &&
        href == other.href &&
        iriTemplate == other.iriTemplate;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= href?.hashCode ?? 0;
    hashCode ^= iriTemplate?.hashCode ?? 0;

    return hashCode;
  }

  static List<PlanLinksSelf> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PlanLinksSelf.fromJson(value))
            ?.toList() ??
        <PlanLinksSelf>[];
  }

  static Map<String, PlanLinksSelf> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, PlanLinksSelf>((String key, dynamic value) {
          return MapEntry(key, PlanLinksSelf.fromJson(value));
        }) ??
        <String, PlanLinksSelf>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate?.toJson(),
    };
  }

  @override
  String toString() {
    return 'PlanLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
