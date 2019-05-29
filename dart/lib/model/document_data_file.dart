part of keyclic_sdk_api.api;

class DocumentDataFile {
  DocumentDataFile();

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

  static List<DocumentDataFile> listFromJson(List<dynamic> json) {
    return json == null
        ? List<DocumentDataFile>()
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
}
