part of keyclic_sdk_api.api;

class ExternalServiceData {
  ExternalServiceData({
    this.organization,
    this.name,
    this.description,
    this.provider,
  });

  factory ExternalServiceData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ExternalServiceData(
      organization: json['organization'],
      name: json['name'],
      description: json['description'],
      provider: json['provider'],
    );
  }

  String organization;

  String name;

  String description;

  String provider;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExternalServiceData &&
        runtimeType == other.runtimeType &&
        organization == other.organization &&
        name == other.name &&
        description == other.description &&
        provider == other.provider;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= organization?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= provider?.hashCode ?? 0;

    return hashCode;
  }

  static List<ExternalServiceData> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ExternalServiceData.fromJson(value))
            ?.toList() ??
        <ExternalServiceData>[];
  }

  static Map<String, ExternalServiceData> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, ExternalServiceData.fromJson(value));
        }) ??
        <String, ExternalServiceData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (organization != null) 'organization': organization,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (provider != null) 'provider': provider,
    };
  }

  @override
  String toString() {
    return 'ExternalServiceData[organization=$organization, name=$name, description=$description, provider=$provider, ]';
  }
}
