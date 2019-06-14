part of keyclic_sdk_api.api;

class Document {
  Document({
    this.file,
    this.permission,
    this.id,
    this.createdAt,
    this.type,
    this.links,
  });

  Document.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    file = DocumentFile.fromJson(json['file']);
    permission = DocumentPermission.fromJson(json['permission']);
    id = json['id'];
    createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }
    type = json['type'];
    links = DocumentLinks.fromJson(json['_links']);
  }

  DocumentFile file;

  DocumentPermission permission;

  String id;

  DateTime createdAt;

  String type;

  DocumentLinks links;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is Document &&
        runtimeType == other.runtimeType &&
        file == other.file &&
        permission == other.permission &&
        id == other.id &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode =>
      0 ^
      file.hashCode ^
      permission.hashCode ^
      id.hashCode ^
      createdAt.hashCode;

  Map<String, dynamic> toJson() {
    return {
      'file': file,
      'permission': permission,
      'id': id,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'type': type,
      '_links': links,
    };
  }

  @override
  String toString() {
    return 'Document[file=$file, permission=$permission, id=$id, createdAt=$createdAt, type=$type, links=$links, ]';
  }

  static List<Document> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Document>()
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
}