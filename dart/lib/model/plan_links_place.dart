// @dart=2.10
part of keyclic_sdk_api.api;

class PlanLinksPlace {
  PlanLinksPlace({
    this.href,
    this.iriTemplate,
  });

  factory PlanLinksPlace.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlanLinksPlace(
      href: json['href'],
      iriTemplate: PlanLinksPlaceIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the place associated to the given plan. */
  String href;

  PlanLinksPlaceIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlanLinksPlace &&
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

  static List<PlanLinksPlace> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PlanLinksPlace.fromJson(value))
            ?.toList() ??
        <PlanLinksPlace>[];
  }

  static Map<String, PlanLinksPlace> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, PlanLinksPlace>((String key, dynamic value) {
          return MapEntry(key, PlanLinksPlace.fromJson(value));
        }) ??
        <String, PlanLinksPlace>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'PlanLinksPlace[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
