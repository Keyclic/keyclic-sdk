part of keyclic_sdk_api.api;

class InternalServiceLinksSelf {
  InternalServiceLinksSelf({
    this.href,
    this.iriTemplate,
  });

  factory InternalServiceLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InternalServiceLinksSelf(
      href: json['href'],
      iriTemplate:
          InternalServiceLinksSelfIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the self associated to the given internalservice. */
  String href;

  InternalServiceLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServiceLinksSelf &&
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

  static List<InternalServiceLinksSelf> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => InternalServiceLinksSelf.fromJson(value))
            ?.toList() ??
        <InternalServiceLinksSelf>[];
  }

  static Map<String, InternalServiceLinksSelf> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, InternalServiceLinksSelf>(
            (String key, dynamic value) {
          return MapEntry(key, InternalServiceLinksSelf.fromJson(value));
        }) ??
        <String, InternalServiceLinksSelf>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'InternalServiceLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
