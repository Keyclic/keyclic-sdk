part of keyclic_sdk_api.api;

class InternalService {
  InternalService({
    this.embedded,
    this.links,
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

  factory InternalService.fromJson(Map<String, dynamic> json) {
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

    return InternalService(
      embedded: InternalServiceEmbedded.fromJson(json['_embedded']),
      links: InternalServiceLinks.fromJson(json['_links']),
      address: InternalServicePostalAddress.fromJson(json['address']),
      contactPoint: InternalServiceContactPoint.fromJson(json['contactPoint']),
      createdAt: createdAt,
      description: json['description'],
      id: json['id'],
      name: json['name'],
      onCall: InternalServiceContactPoint.fromJson(json['onCall']),
      type: json['type'],
      updatedAt: updatedAt,
    );
  }

  InternalServiceEmbedded embedded;

  InternalServiceLinks links;

  InternalServicePostalAddress address;

  InternalServiceContactPoint contactPoint;

  DateTime createdAt;

  String description;

  String id;

  String name;

  InternalServiceContactPoint onCall;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalService &&
        runtimeType == other.runtimeType &&
        embedded == other.embedded &&
        links == other.links &&
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

    hashCode ^= embedded?.hashCode ?? 0;
    hashCode ^= links?.hashCode ?? 0;
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

  static List<InternalService> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => InternalService.fromJson(value))
            ?.toList() ??
        <InternalService>[];
  }

  static Map<String, InternalService> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, InternalService>((String key, dynamic value) {
          return MapEntry(key, InternalService.fromJson(value));
        }) ??
        <String, InternalService>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (embedded != null) '_embedded': embedded.toJson(),
      if (links != null) '_links': links.toJson(),
      if (address != null) 'address': address.toJson(),
      if (contactPoint != null) 'contactPoint': contactPoint.toJson(),
      if (createdAt != null) 'createdAt': createdAt.toUtc().toIso8601String(),
      if (description != null) 'description': description,
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (onCall != null) 'onCall': onCall.toJson(),
      if (type != null) 'type': type,
      if (updatedAt != null) 'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'InternalService[embedded=$embedded, links=$links, address=$address, contactPoint=$contactPoint, createdAt=$createdAt, description=$description, id=$id, name=$name, onCall=$onCall, type=$type, updatedAt=$updatedAt, ]';
  }
}
