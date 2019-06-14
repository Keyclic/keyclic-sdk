part of keyclic_sdk_api.api;

class Place {
  Place({
    this.branchCode,
    this.description,
    this.geo,
    this.name,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.type,
    this.links,
  });

  Place.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    branchCode = json['branchCode'];
    description = json['description'];
    geo = PlaceGeo.fromJson(json['geo']);
    name = json['name'];
    id = json['id'];
    createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }
    updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }
    type = json['type'];
    links = PlaceLinks.fromJson(json['_links']);
  }

  String branchCode;

  String description;

  PlaceGeo geo;

  String name;

  String id;

  DateTime createdAt;

  DateTime updatedAt;

  String type;

  PlaceLinks links;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is Place &&
        runtimeType == other.runtimeType &&
        geo == other.geo &&
        name == other.name &&
        id == other.id &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode =>
      0 ^
      geo.hashCode ^
      name.hashCode ^
      id.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode;

  Map<String, dynamic> toJson() {
    return {
      'branchCode': branchCode,
      'description': description,
      'geo': geo,
      'name': name,
      'id': id,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updatedAt': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'type': type,
      '_links': links,
    };
  }

  @override
  String toString() {
    return 'Place[branchCode=$branchCode, description=$description, geo=$geo, name=$name, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, type=$type, links=$links, ]';
  }

  static List<Place> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Place>()
        : json.map((value) => Place.fromJson(value)).toList();
  }

  static Map<String, Place> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Place>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Place.fromJson(value));
    }
    return map;
  }
}