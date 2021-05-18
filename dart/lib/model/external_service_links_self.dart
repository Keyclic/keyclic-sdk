part of keyclic_sdk_api.api;

class ExternalServiceLinksSelf {
  ExternalServiceLinksSelf({
    this.href,
    this.iriTemplate,
  });

  factory ExternalServiceLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ExternalServiceLinksSelf(
      href: json['href'],
      iriTemplate:
          ExternalServiceLinksSelfIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the self associated to the given externalservice. */
  String href;

  ExternalServiceLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExternalServiceLinksSelf &&
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

  static List<ExternalServiceLinksSelf> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ExternalServiceLinksSelf.fromJson(value))
            ?.toList() ??
        <ExternalServiceLinksSelf>[];
  }

  static Map<String, ExternalServiceLinksSelf> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ExternalServiceLinksSelf>(
            (String key, dynamic value) {
          return MapEntry(key, ExternalServiceLinksSelf.fromJson(value));
        }) ??
        <String, ExternalServiceLinksSelf>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate?.toJson(),
    };
  }

  @override
  String toString() {
    return 'ExternalServiceLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
