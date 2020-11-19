part of keyclic_sdk_api.api;

class InternalServiceData {
  InternalServiceData({
    this.address,
    this.contactPoint,
    this.description,
    this.manager,
    this.name,
    this.organization,
  });

  factory InternalServiceData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InternalServiceData(
      address: InternalServiceDataAddress.fromJson(json['address']),
      contactPoint:
          InternalServiceDataContactPoint.fromJson(json['contactPoint']),
      description: json['description'],
      manager: json['manager'],
      name: json['name'],
      organization: json['organization'],
    );
  }

  InternalServiceDataAddress address;

  InternalServiceDataContactPoint contactPoint;

  String description;

  String manager;

  String name;

  String organization;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServiceData &&
        runtimeType == other.runtimeType &&
        address == other.address &&
        contactPoint == other.contactPoint &&
        description == other.description &&
        manager == other.manager &&
        name == other.name &&
        organization == other.organization;
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
    hashCode ^= organization?.hashCode ?? 0;

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
    return json?.map<String, InternalServiceData>((String key, dynamic value) {
          return MapEntry(key, InternalServiceData.fromJson(value));
        }) ??
        <String, InternalServiceData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (address != null) 'address': address.toJson(),
      if (contactPoint != null) 'contactPoint': contactPoint.toJson(),
      if (description != null) 'description': description,
      if (manager != null) 'manager': manager,
      if (name != null) 'name': name,
      if (organization != null) 'organization': organization,
    };
  }

  @override
  String toString() {
    return 'InternalServiceData[address=$address, contactPoint=$contactPoint, description=$description, manager=$manager, name=$name, organization=$organization, ]';
  }
}
