part of keyclic_sdk_api.api;

class ExternalServiceLinksProvider {
  ExternalServiceLinksProvider({
    this.href,
    this.iriTemplate,
  });

  ExternalServiceLinksProvider.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        ExternalServiceLinksProviderIriTemplate.fromJson(json['iriTemplate']);
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
  int get hashCode => 0 ^ href.hashCode ^ iriTemplate.hashCode;

  static List<ExternalServiceLinksProvider> listFromJson(List<dynamic> json) {
    return json == null
        ? <ExternalServiceLinksProvider>[]
        : json
            .map((value) => ExternalServiceLinksProvider.fromJson(value))
            .toList();
  }

  static Map<String, ExternalServiceLinksProvider> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ExternalServiceLinksProvider>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ExternalServiceLinksProvider.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'ExternalServiceLinksProvider[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
