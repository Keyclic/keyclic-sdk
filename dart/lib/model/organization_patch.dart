part of keyclic_sdk_api.api;

class OrganizationPatch {
  OrganizationPatch({
    this.address,
    this.alternateName,
    this.description,
    this.logo,
    this.name,
    this.preferences,
  });

  factory OrganizationPatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OrganizationPatch(
      address: ExternalServicePatchAddress.fromJson(json['address']),
      alternateName: json['alternateName'],
      description: json['description'],
      logo: json['logo'],
      name: json['name'],
      preferences: OrganizationPatchPreferences.fromJson(json['preferences']),
    );
  }

  ExternalServicePatchAddress address;

  String alternateName;

  String description;

  String logo;

  String name;

  OrganizationPatchPreferences preferences;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationPatch &&
        runtimeType == other.runtimeType &&
        address == other.address &&
        alternateName == other.alternateName &&
        description == other.description &&
        logo == other.logo &&
        name == other.name &&
        preferences == other.preferences;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= address?.hashCode ?? 0;
    hashCode ^= alternateName?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= logo?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= preferences?.hashCode ?? 0;

    return hashCode;
  }

  static List<OrganizationPatch> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => OrganizationPatch.fromJson(value))
            ?.toList() ??
        <OrganizationPatch>[];
  }

  static Map<String, OrganizationPatch> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, OrganizationPatch>((String key, dynamic value) {
          return MapEntry(key, OrganizationPatch.fromJson(value));
        }) ??
        <String, OrganizationPatch>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (address != null) 'address': address.toJson(),
      if (alternateName != null) 'alternateName': alternateName,
      if (description != null) 'description': description,
      if (logo != null) 'logo': logo,
      if (name != null) 'name': name,
      if (preferences != null) 'preferences': preferences.toJson(),
    };
  }

  @override
  String toString() {
    return 'OrganizationPatch[address=$address, alternateName=$alternateName, description=$description, logo=$logo, name=$name, preferences=$preferences, ]';
  }
}
