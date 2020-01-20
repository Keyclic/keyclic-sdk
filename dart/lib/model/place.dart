part of keyclic_sdk_api.api;

class Place {
  Place({
    this.embedded,
    this.links,
    this.branchCode,
    this.createdAt,
    this.description,
    this.geo,
    this.id,
    this.name,
    this.preferences,
    this.type,
    this.updatedAt,
  });

  factory Place.fromJson(Map<String, dynamic> json) {
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

    return Place(
      embedded: PlaceEmbedded.fromJson(json['_embedded']),
      links: PlaceLinks.fromJson(json['_links']),
      branchCode: json['branchCode'],
      createdAt: createdAt,
      description: json['description'],
      geo: GeoShape.fromJson(json['geo']),
      id: json['id'],
      name: json['name'],
      preferences: Preferences.fromJson(json['preferences']),
      type: json['type'],
      updatedAt: updatedAt,
    );
  }

  PlaceEmbedded embedded;

  PlaceLinks links;

  String branchCode;

  DateTime createdAt;

  String description;

  GeoShape geo;

  String id;

  String name;

  Preferences preferences;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Place &&
        runtimeType == other.runtimeType &&
        embedded == other.embedded &&
        links == other.links &&
        branchCode == other.branchCode &&
        createdAt == other.createdAt &&
        description == other.description &&
        geo == other.geo &&
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

    hashCode ^= embedded?.hashCode ?? 0;
    hashCode ^= links?.hashCode ?? 0;
    hashCode ^= branchCode?.hashCode ?? 0;
    hashCode ^= createdAt?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= geo?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= preferences?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= updatedAt?.hashCode ?? 0;

    return hashCode;
  }

  static List<Place> listFromJson(List<dynamic> json) {
    return json == null
        ? <Place>[]
        : json.map((dynamic value) => Place.fromJson(value)).toList();
  }

  static Map<String, Place> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Place>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Place.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (embedded != null) '_embedded': embedded,
      if (links != null) '_links': links,
      if (branchCode != null) 'branchCode': branchCode,
      if (createdAt != null) 'createdAt': createdAt.toUtc().toIso8601String(),
      if (description != null) 'description': description,
      if (geo != null) 'geo': geo,
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (preferences != null) 'preferences': preferences,
      if (type != null) 'type': type,
      if (updatedAt != null) 'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Place[embedded=$embedded, links=$links, branchCode=$branchCode, createdAt=$createdAt, description=$description, geo=$geo, id=$id, name=$name, preferences=$preferences, type=$type, updatedAt=$updatedAt, ]';
  }
}
