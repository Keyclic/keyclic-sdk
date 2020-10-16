part of keyclic_sdk_api.api;

class PlaceEmbeddedDocumentTypes {
  PlaceEmbeddedDocumentTypes({
    this.id,
    this.type,
    this.name,
    this.description,
  });

  factory PlaceEmbeddedDocumentTypes.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceEmbeddedDocumentTypes(
      id: json['id'],
      type: json['type'],
      name: json['name'],
      description: json['description'],
    );
  }

  String id;

  String type;

  String name;

  String description;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceEmbeddedDocumentTypes &&
        runtimeType == other.runtimeType &&
        id == other.id &&
        type == other.type &&
        name == other.name &&
        description == other.description;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;

    return hashCode;
  }

  static List<PlaceEmbeddedDocumentTypes> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PlaceEmbeddedDocumentTypes.fromJson(value))
            ?.toList() ??
        <PlaceEmbeddedDocumentTypes>[];
  }

  static Map<String, PlaceEmbeddedDocumentTypes> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, PlaceEmbeddedDocumentTypes>(
            (String key, dynamic value) {
          return MapEntry(key, PlaceEmbeddedDocumentTypes.fromJson(value));
        }) ??
        <String, PlaceEmbeddedDocumentTypes>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (type != null) 'type': type,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
    };
  }

  @override
  String toString() {
    return 'PlaceEmbeddedDocumentTypes[id=$id, type=$type, name=$name, description=$description, ]';
  }
}
