part of keyclic_sdk_api.api;

class ExternalServiceData {
  ExternalServiceData({
    this.organization,
    this.name,
    this.description,
    this.provider,
  });

  ExternalServiceData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    organization = json['organization'];
    name = json['name'];
    description = json['description'];
    provider = json['provider'];
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

    hashCode ^= (organization?.hashCode ?? 0);
    hashCode ^= (name?.hashCode ?? 0);
    hashCode ^= (description?.hashCode ?? 0);
    hashCode ^= (provider?.hashCode ?? 0);

    return hashCode;
  }

  static List<ExternalServiceData> listFromJson(List<dynamic> json) {
    return json == null
        ? <ExternalServiceData>[]
        : json
            .map((dynamic value) => ExternalServiceData.fromJson(value))
            .toList();
  }

  static Map<String, ExternalServiceData> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ExternalServiceData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ExternalServiceData.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'organization': organization,
      'name': name,
      'description': description,
      'provider': provider,
    };
  }

  @override
  String toString() {
    return 'ExternalServiceData[organization=$organization, name=$name, description=$description, provider=$provider, ]';
  }
}
