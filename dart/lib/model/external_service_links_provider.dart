part of keyclic_sdk_api.api;

class ExternalServiceLinksProvider {
  ExternalServiceLinksProvider({
    this.href,
    this.iriTemplate,
  });

  factory ExternalServiceLinksProvider.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ExternalServiceLinksProvider(
      href: json['href'],
      iriTemplate:
          ExternalServiceLinksProviderIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the provider associated to the given externalservice. */
  String href;

  ExternalServiceLinksProviderIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExternalServiceLinksProvider &&
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

  static List<ExternalServiceLinksProvider> listFromJson(List<dynamic> json) {
    return json
            ?.map(
                (dynamic value) => ExternalServiceLinksProvider.fromJson(value))
            ?.toList() ??
        <ExternalServiceLinksProvider>[];
  }

  static Map<String, ExternalServiceLinksProvider> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, ExternalServiceLinksProvider.fromJson(value));
        }) ??
        <String, ExternalServiceLinksProvider>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'ExternalServiceLinksProvider[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
