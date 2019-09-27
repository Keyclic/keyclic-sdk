part of keyclic_sdk_api.api;

class InternalServicePatch {
  InternalServicePatch({
    this.contactPoint,
    this.description,
    this.name,
  });

  InternalServicePatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    contactPoint =
        ExternalServicePatchContactPoint.fromJson(json['contactPoint']);
    description = json['description'];
    name = json['name'];
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

    return other is InternalServicePatch &&
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

  static List<InternalServicePatch> listFromJson(List<dynamic> json) {
    return json == null
        ? <InternalServicePatch>[]
        : json
            .map((dynamic value) => InternalServicePatch.fromJson(value))
            .toList();
  }

  static Map<String, InternalServicePatch> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, InternalServicePatch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = InternalServicePatch.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'contactPoint': contactPoint,
      'description': description,
      'name': name,
    };
  }

  @override
  String toString() {
    return 'InternalServicePatch[contactPoint=$contactPoint, description=$description, name=$name, ]';
  }
}
