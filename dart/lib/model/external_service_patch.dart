part of keyclic_sdk_api.api;

class ExternalServicePatch {
  ExternalServicePatch({
    this.contactPoint,
    this.description,
    this.name,
  });

  factory ExternalServicePatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ExternalServicePatch(
      contactPoint:
          ExternalServicePatchContactPoint.fromJson(json['contactPoint']),
      description: json['description'],
      name: json['name'],
    );
  }

  ExternalServicePatchContactPoint contactPoint;

  String description;

  String name;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExternalServicePatch &&
        runtimeType == other.runtimeType &&
        contactPoint == other.contactPoint &&
        description == other.description &&
        name == other.name;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= contactPoint?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;

    return hashCode;
  }

  static List<ExternalServicePatch> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ExternalServicePatch.fromJson(value))
            ?.toList() ??
        <ExternalServicePatch>[];
  }

  static Map<String, ExternalServicePatch> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, ExternalServicePatch.fromJson(value));
        }) ??
        <String, ExternalServicePatch>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (contactPoint != null) 'contactPoint': contactPoint.toJson(),
      if (description != null) 'description': description,
      if (name != null) 'name': name,
    };
  }

  @override
  String toString() {
    return 'ExternalServicePatch[contactPoint=$contactPoint, description=$description, name=$name, ]';
  }
}
