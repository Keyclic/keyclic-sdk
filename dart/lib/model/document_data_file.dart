part of keyclic_sdk_api.api;

class DocumentDataFile {
  DocumentDataFile({
    this.content,
    this.contentType,
    this.name,
  });

  DocumentDataFile.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    content = json['content'];
    contentType = json['contentType'];
    name = json['name'];
  }

  String content;

  String contentType;

  String name;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentDataFile &&
        runtimeType == other.runtimeType &&
        content == other.content &&
        contentType == other.contentType &&
        name == other.name;
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^ content.hashCode ^ contentType.hashCode ^ name.hashCode;

  static List<DocumentDataFile> listFromJson(List<dynamic> json) {
    return json == null
        ? <DocumentDataFile>[]
        : json.map((value) => DocumentDataFile.fromJson(value)).toList();
  }

  static Map<String, DocumentDataFile> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DocumentDataFile>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DocumentDataFile.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'content': content,
      'contentType': contentType,
      'name': name,
    };
  }

  @override
  String toString() {
    return 'DocumentDataFile[content=$content, contentType=$contentType, name=$name, ]';
  }
}
