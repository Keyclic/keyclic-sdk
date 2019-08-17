part of keyclic_sdk_api.api;

class Place {
  Place({
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

  Place.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    links = PlaceLinks.fromJson(json['_links']);
    branchCode = json['branchCode'];
    createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }
    description = json['description'];
    geo = PlaceGeo.fromJson(json['geo']);
    id = json['id'];
    name = json['name'];
    preferences = PlacePreferences.fromJson(json['preferences']);
    type = json['type'];
    updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }
  }

  PlaceLinks links;

  String branchCode;

  DateTime createdAt;

  String description;

  PlaceGeo geo;

  String id;

  String name;

  PlacePreferences preferences;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is Place &&
        runtimeType == other.runtimeType &&
        geo == other.geo &&
        name == other.name;
  }

  @override
  int get hashCode => 0 ^ geo.hashCode ^ name.hashCode;

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

  Map<String, dynamic> toJson() {
    return {
      '_links': links,
      'branchCode': branchCode,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'description': description,
      'geo': geo,
      'id': id,
      'name': name,
      'preferences': preferences,
      'type': type,
      'updatedAt': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Place[links=$links, branchCode=$branchCode, createdAt=$createdAt, description=$description, geo=$geo, id=$id, name=$name, preferences=$preferences, type=$type, updatedAt=$updatedAt, ]';
  }
}
