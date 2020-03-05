part of keyclic_sdk_api.api;

class OrganizationPatch {
  OrganizationPatch({
    this.name,
    this.alternateName,
    this.description,
    this.logo,
    this.preferences,
  });

  factory OrganizationPatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OrganizationPatch(
      name: json['name'],
      alternateName: json['alternateName'],
      description: json['description'],
      logo: json['logo'],
      preferences: OrganizationPatchPreferences.fromJson(json['preferences']),
    );
  }

  String name;

  String alternateName;

  String description;

  String logo;

  OrganizationPatchPreferences preferences;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationPatch &&
        runtimeType == other.runtimeType &&
        name == other.name &&
        alternateName == other.alternateName &&
        description == other.description &&
        logo == other.logo &&
        preferences == other.preferences;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= alternateName?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= logo?.hashCode ?? 0;
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
    return json?.map((String key, dynamic value) {
          return MapEntry(key, OrganizationPatch.fromJson(value));
        }) ??
        <String, OrganizationPatch>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (name != null) 'name': name,
      if (alternateName != null) 'alternateName': alternateName,
      if (description != null) 'description': description,
      if (logo != null) 'logo': logo,
      if (preferences != null) 'preferences': preferences.toJson(),
    };
  }

  @override
  String toString() {
    return 'OrganizationPatch[name=$name, alternateName=$alternateName, description=$description, logo=$logo, preferences=$preferences, ]';
  }
}
