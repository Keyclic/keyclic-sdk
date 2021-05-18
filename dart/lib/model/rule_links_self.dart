part of keyclic_sdk_api.api;

class RuleLinksSelf {
  RuleLinksSelf({
    this.href,
    this.iriTemplate,
  });

  factory RuleLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return RuleLinksSelf(
      href: json['href'],
      iriTemplate: RuleLinksSelfIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the self associated to the given rule. */
  String href;

  RuleLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RuleLinksSelf &&
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

  static List<RuleLinksSelf> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => RuleLinksSelf.fromJson(value))
            ?.toList() ??
        <RuleLinksSelf>[];
  }

  static Map<String, RuleLinksSelf> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, RuleLinksSelf>((String key, dynamic value) {
          return MapEntry(key, RuleLinksSelf.fromJson(value));
        }) ??
        <String, RuleLinksSelf>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'RuleLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
