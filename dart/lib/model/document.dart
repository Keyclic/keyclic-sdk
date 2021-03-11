part of keyclic_sdk_api.api;

class Document {
  Document({
    this.embedded,
    this.links,
    this.createdAt,
    this.file,
    this.id,
    this.name,
    this.permission,
    this.text,
    this.type,
    this.updatedAt,
  });

  factory Document.fromJson(Map<String, dynamic> json) {
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

    return Document(
      embedded: DocumentEmbedded.fromJson(json['_embedded']),
      links: DocumentLinks.fromJson(json['_links']),
      createdAt: createdAt,
      file: DocumentFile.fromJson(json['file']),
      id: json['id'],
      name: json['name'],
      permission: DocumentPermission.fromJson(json['permission']),
      text: json['text'],
      type: json['type'],
      updatedAt: updatedAt,
    );
  }

  DocumentEmbedded embedded;

  DocumentLinks links;

  DateTime createdAt;

  DocumentFile file;

  String id;

  String name;

  DocumentPermission permission;

  String text;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Document &&
        runtimeType == other.runtimeType &&
        embedded == other.embedded &&
        links == other.links &&
        createdAt == other.createdAt &&
        file == other.file &&
        id == other.id &&
        name == other.name &&
        permission == other.permission &&
        text == other.text &&
        type == other.type &&
        updatedAt == other.updatedAt;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= embedded?.hashCode ?? 0;
    hashCode ^= links?.hashCode ?? 0;
    hashCode ^= createdAt?.hashCode ?? 0;
    hashCode ^= file?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= permission?.hashCode ?? 0;
    hashCode ^= text?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= updatedAt?.hashCode ?? 0;

    return hashCode;
  }

  static List<Document> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => Document.fromJson(value))?.toList() ??
        <Document>[];
  }

  static Map<String, Document> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, Document>((String key, dynamic value) {
          return MapEntry(key, Document.fromJson(value));
        }) ??
        <String, Document>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (embedded != null) '_embedded': embedded.toJson(),
      if (links != null) '_links': links.toJson(),
      if (createdAt != null) 'createdAt': createdAt.toUtc().toIso8601String(),
      if (file != null) 'file': file.toJson(),
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (permission != null) 'permission': permission.toJson(),
      if (text != null) 'text': text,
      if (type != null) 'type': type,
      if (updatedAt != null) 'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Document[embedded=$embedded, links=$links, createdAt=$createdAt, file=$file, id=$id, name=$name, permission=$permission, text=$text, type=$type, updatedAt=$updatedAt, ]';
  }
}
