part of keyclic_sdk_api.api;

class DocumentFile {
  DocumentFile({
    this.contentType,
    this.name,
  });

  DocumentFile.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    contentType = json['contentType'];
    name = json['name'];
  }

  String contentType;

  String name;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentFile &&
        runtimeType == other.runtimeType &&
        name == other.name;
  }

  @override
  int get hashCode => 0 ^ name.hashCode;

  Map<String, dynamic> toJson() {
    return {
      'contentType': contentType,
      'name': name,
    };
  }

  @override
  String toString() {
    return 'DocumentFile[contentType=$contentType, name=$name, ]';
  }

  static List<DocumentFile> listFromJson(List<dynamic> json) {
    return json == null
        ? List<DocumentFile>()
        : json.map((value) => DocumentFile.fromJson(value)).toList();
  }

  static Map<String, DocumentFile> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DocumentFile>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DocumentFile.fromJson(value));
    }
    return map;
  }
}