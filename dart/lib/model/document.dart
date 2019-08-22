part of keyclic_sdk_api.api;

class Document {
  Document({
    this.links,
    this.createdAt,
    this.file,
    this.id,
    this.permission,
    this.type,
  });

  Document.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    links = DocumentLinks.fromJson(json['_links']);
    createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }
    file = DocumentFile.fromJson(json['file']);
    id = json['id'];
    permission = DocumentPermission.fromJson(json['permission']);
    type = json['type'];
  }

  DocumentLinks links;

  DateTime createdAt;

  DocumentFile file;

  String id;

  DocumentPermission permission;

  String type;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Document &&
        runtimeType == other.runtimeType &&
        links == other.links &&
        createdAt == other.createdAt &&
        file == other.file &&
        id == other.id &&
        permission == other.permission &&
        type == other.type;
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      links.hashCode ^
      createdAt.hashCode ^
      file.hashCode ^
      id.hashCode ^
      permission.hashCode ^
      type.hashCode;

  static List<Document> listFromJson(List<dynamic> json) {
    return json == null
        ? <Document>[]
        : json.map((value) => Document.fromJson(value)).toList();
  }

  static Map<String, Document> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Document>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Document.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      '_links': links,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'file': file,
      'id': id,
      'permission': permission,
      'type': type,
    };
  }

  @override
  String toString() {
    return 'Document[links=$links, createdAt=$createdAt, file=$file, id=$id, permission=$permission, type=$type, ]';
  }
}
