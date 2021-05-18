part of keyclic_sdk_api.api;

class Service {
  Service({
    this.address,
    this.contactPoint,
    this.createdAt,
    this.description,
    this.id,
    this.name,
    this.onCall,
    this.type,
    this.updatedAt,
  });

  factory Service.fromJson(Map<String, dynamic> json) {
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

    return Service(
      address: ServicePostalAddress.fromJson(json['address']),
      contactPoint: ServiceContactPoint.fromJson(json['contactPoint']),
      createdAt: createdAt,
      description: json['description'],
      id: json['id'],
      name: json['name'],
      onCall: ServiceContactPoint.fromJson(json['onCall']),
      type: json['type'],
      updatedAt: updatedAt,
    );
  }

  ServicePostalAddress address;

  ServiceContactPoint contactPoint;

  DateTime createdAt;

  String description;

  String id;

  String name;

  ServiceContactPoint onCall;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Service &&
        runtimeType == other.runtimeType &&
        address == other.address &&
        contactPoint == other.contactPoint &&
        createdAt == other.createdAt &&
        description == other.description &&
        id == other.id &&
        name == other.name &&
        onCall == other.onCall &&
        type == other.type &&
        updatedAt == other.updatedAt;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= address?.hashCode ?? 0;
    hashCode ^= contactPoint?.hashCode ?? 0;
    hashCode ^= createdAt?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= onCall?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= updatedAt?.hashCode ?? 0;

    return hashCode;
  }

  static List<Service> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => Service.fromJson(value))?.toList() ??
        <Service>[];
  }

  static Map<String, Service> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, Service>((String key, dynamic value) {
          return MapEntry(key, Service.fromJson(value));
        }) ??
        <String, Service>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'address': address?.toJson(),
      'contactPoint': contactPoint?.toJson(),
      'createdAt': createdAt?.toUtc()?.toIso8601String(),
      'description': description,
      'id': id,
      'name': name,
      'onCall': onCall?.toJson(),
      'type': type,
      'updatedAt': updatedAt?.toUtc()?.toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Service[address=$address, contactPoint=$contactPoint, createdAt=$createdAt, description=$description, id=$id, name=$name, onCall=$onCall, type=$type, updatedAt=$updatedAt, ]';
  }
}
