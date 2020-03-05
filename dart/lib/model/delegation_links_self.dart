part of keyclic_sdk_api.api;

class DelegationLinksSelf {
  DelegationLinksSelf({
    this.href,
    this.iriTemplate,
  });

  factory DelegationLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DelegationLinksSelf(
      href: json['href'],
      iriTemplate: DelegationLinksSelfIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the self associated to the given delegation. */
  String href;

  DelegationLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DelegationLinksSelf &&
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

  static List<DelegationLinksSelf> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => DelegationLinksSelf.fromJson(value))
            ?.toList() ??
        <DelegationLinksSelf>[];
  }

  static Map<String, DelegationLinksSelf> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, DelegationLinksSelf.fromJson(value));
        }) ??
        <String, DelegationLinksSelf>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'DelegationLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
