part of keyclic_sdk_api.api;

class InternalServiceData {
  InternalServiceData({
    this.organization,
    this.name,
    this.description,
  });

  factory InternalServiceData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InternalServiceData(
      organization: json['organization'],
      name: json['name'],
      description: json['description'],
    );
  }

  String organization;

  String name;

  String description;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServiceData &&
        runtimeType == other.runtimeType &&
        organization == other.organization &&
        name == other.name &&
        description == other.description;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= organization?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;

    return hashCode;
  }

  static List<InternalServiceData> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => InternalServiceData.fromJson(value))
            ?.toList() ??
        <InternalServiceData>[];
  }

  static Map<String, InternalServiceData> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, InternalServiceData.fromJson(value));
        }) ??
        <String, InternalServiceData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (organization != null) 'organization': organization,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
    };
  }

  @override
  String toString() {
    return 'InternalServiceData[organization=$organization, name=$name, description=$description, ]';
  }
}
