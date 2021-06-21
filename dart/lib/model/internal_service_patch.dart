// @dart=2.10
part of keyclic_sdk_api.api;

class InternalServicePatch {
  InternalServicePatch({
    this.address,
    this.contactPoint,
    this.description,
    this.manager,
    this.name,
  });

  factory InternalServicePatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InternalServicePatch(
      address: ExternalServicePatchAddress.fromJson(json['address']),
      contactPoint:
          ExternalServicePatchContactPoint.fromJson(json['contactPoint']),
      description: json['description'],
      manager: json['manager'],
      name: json['name'],
    );
  }

  ExternalServicePatchAddress address;

  ExternalServicePatchContactPoint contactPoint;

  String description;

  String manager;

  String name;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServicePatch &&
        runtimeType == other.runtimeType &&
        address == other.address &&
        contactPoint == other.contactPoint &&
        description == other.description &&
        manager == other.manager &&
        name == other.name;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= address?.hashCode ?? 0;
    hashCode ^= contactPoint?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= manager?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;

    return hashCode;
  }

  static List<InternalServicePatch> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => InternalServicePatch.fromJson(value))
            ?.toList() ??
        <InternalServicePatch>[];
  }

  static Map<String, InternalServicePatch> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, InternalServicePatch>((String key, dynamic value) {
          return MapEntry(key, InternalServicePatch.fromJson(value));
        }) ??
        <String, InternalServicePatch>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (address != null) 'address': address.toJson(),
      if (contactPoint != null) 'contactPoint': contactPoint.toJson(),
      if (description != null) 'description': description,
      if (manager != null) 'manager': manager,
      if (name != null) 'name': name,
    };
  }

  @override
  String toString() {
    return 'InternalServicePatch[address=$address, contactPoint=$contactPoint, description=$description, manager=$manager, name=$name, ]';
  }
}
