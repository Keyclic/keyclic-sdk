part of keyclic_sdk_api.api;

class ExternalServiceEmbedded {
  ExternalServiceEmbedded({
    this.provider,
  });

  factory ExternalServiceEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ExternalServiceEmbedded(
      provider: Organization.fromJson(json['provider']),
    );
  }

  Organization provider;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExternalServiceEmbedded &&
        runtimeType == other.runtimeType &&
        provider == other.provider;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= provider?.hashCode ?? 0;

    return hashCode;
  }

  static List<ExternalServiceEmbedded> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ExternalServiceEmbedded.fromJson(value))
            ?.toList() ??
        <ExternalServiceEmbedded>[];
  }

  static Map<String, ExternalServiceEmbedded> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, ExternalServiceEmbedded>((String key, dynamic value) {
          return MapEntry(key, ExternalServiceEmbedded.fromJson(value));
        }) ??
        <String, ExternalServiceEmbedded>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (provider != null) 'provider': provider.toJson(),
    };
  }

  @override
  String toString() {
    return 'ExternalServiceEmbedded[provider=$provider, ]';
  }
}
