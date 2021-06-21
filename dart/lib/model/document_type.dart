// @dart=2.10
part of keyclic_sdk_api.api;

class DocumentType {
  DocumentType({
    this.id,
    this.type,
    this.name,
    this.description,
  });

  factory DocumentType.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DocumentType(
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

    return other is DocumentType &&
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

  static List<DocumentType> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => DocumentType.fromJson(value))
            ?.toList() ??
        <DocumentType>[];
  }

  static Map<String, DocumentType> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, DocumentType>((String key, dynamic value) {
          return MapEntry(key, DocumentType.fromJson(value));
        }) ??
        <String, DocumentType>{};
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
    return 'DocumentType[id=$id, type=$type, name=$name, description=$description, ]';
  }
}
