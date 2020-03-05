part of keyclic_sdk_api.api;

class ExternalServiceLinks {
  ExternalServiceLinks({
    this.provider,
    this.self,
  });

  factory ExternalServiceLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ExternalServiceLinks(
      provider: ExternalServiceLinksProvider.fromJson(json['provider']),
      self: ExternalServiceLinksSelf.fromJson(json['self']),
    );
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
  int get hashCode {
    int hashCode = 0;

    hashCode ^= provider?.hashCode ?? 0;
    hashCode ^= self?.hashCode ?? 0;

    return hashCode;
  }

  static List<ExternalServiceLinks> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ExternalServiceLinks.fromJson(value))
            ?.toList() ??
        <ExternalServiceLinks>[];
  }

  static Map<String, ExternalServiceLinks> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, ExternalServiceLinks.fromJson(value));
        }) ??
        <String, ExternalServiceLinks>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (provider != null) 'provider': provider.toJson(),
      if (self != null) 'self': self.toJson(),
    };
  }

  @override
  String toString() {
    return 'ExternalServiceLinks[provider=$provider, self=$self, ]';
  }
}
