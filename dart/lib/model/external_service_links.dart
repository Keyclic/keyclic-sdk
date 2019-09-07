part of keyclic_sdk_api.api;

class ExternalServiceLinks {
  ExternalServiceLinks({
    this.provider,
    this.self,
  });

  ExternalServiceLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    provider = ExternalServiceLinksProvider.fromJson(json['provider']);
    self = ExternalServiceLinksSelf.fromJson(json['self']);
  }

  ExternalServiceLinksProvider provider;

  ExternalServiceLinksSelf self;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExternalServiceLinks &&
        runtimeType == other.runtimeType &&
        provider == other.provider &&
        self == other.self;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ provider.hashCode ^ self.hashCode;

  static List<ExternalServiceLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? <ExternalServiceLinks>[]
        : json.map((value) => ExternalServiceLinks.fromJson(value)).toList();
  }

  static Map<String, ExternalServiceLinks> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ExternalServiceLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ExternalServiceLinks.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'provider': provider,
      'self': self,
    };
  }

  @override
  String toString() {
    return 'ExternalServiceLinks[provider=$provider, self=$self, ]';
  }
}
