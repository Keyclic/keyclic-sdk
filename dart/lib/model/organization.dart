part of keyclic_sdk_api.api;

class Organization {
  Organization({
    this.links,
    this.address,
    this.alternateName,
    this.createdAt,
    this.description,
    this.enabled,
    this.id,
    this.name,
    this.preferences,
    this.type,
    this.updatedAt,
  });

  factory Organization.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    DateTime createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }

    DateTime updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }

    return Organization(
      links: OrganizationLinks.fromJson(json['_links']),
      address: OrganizationPostalAddress.fromJson(json['address']),
      alternateName: json['alternateName'],
      createdAt: createdAt,
      description: json['description'],
      enabled: json['enabled'],
      id: json['id'],
      name: json['name'],
      preferences: OrganizationPreferences.fromJson(json['preferences']),
      type: json['type'],
      updatedAt: updatedAt,
    );
  }

  OrganizationLinks links;

  OrganizationPostalAddress address;

  String alternateName;

  DateTime createdAt;

  String description;

  bool enabled;

  String id;

  String name;

  OrganizationPreferences preferences;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Organization &&
        runtimeType == other.runtimeType &&
        links == other.links &&
        address == other.address &&
        alternateName == other.alternateName &&
        createdAt == other.createdAt &&
        description == other.description &&
        enabled == other.enabled &&
        id == other.id &&
        name == other.name &&
        preferences == other.preferences &&
        type == other.type &&
        updatedAt == other.updatedAt;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= links?.hashCode ?? 0;
    hashCode ^= address?.hashCode ?? 0;
    hashCode ^= alternateName?.hashCode ?? 0;
    hashCode ^= createdAt?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= enabled?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= preferences?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= updatedAt?.hashCode ?? 0;

    return hashCode;
  }

  static List<Organization> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => Organization.fromJson(value))
            ?.toList() ??
        <Organization>[];
  }

  static Map<String, Organization> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, Organization>((String key, dynamic value) {
          return MapEntry(key, Organization.fromJson(value));
        }) ??
        <String, Organization>{};
  }

  Map<String, dynamic> toJson() {
    return {
      '_links': links?.toJson(),
      'address': address?.toJson(),
      'alternateName': alternateName,
      'createdAt': createdAt?.toUtc()?.toIso8601String(),
      'description': description,
      'enabled': enabled,
      'id': id,
      'name': name,
      'preferences': preferences?.toJson(),
      'type': type,
      'updatedAt': updatedAt?.toUtc()?.toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Organization[links=$links, address=$address, alternateName=$alternateName, createdAt=$createdAt, description=$description, enabled=$enabled, id=$id, name=$name, preferences=$preferences, type=$type, updatedAt=$updatedAt, ]';
  }
}
