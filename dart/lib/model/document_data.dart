part of keyclic_sdk_api.api;

class DocumentData {
  DocumentData();

  DocumentData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    file = DocumentDataFile.fromJson(json['file']);
    permission = DocumentDataPermission.fromJson(json['permission']);
  }

  DocumentDataFile file;

  DocumentDataPermission permission;

  Map<String, dynamic> toJson() {
    return {
      'file': file,
      'permission': permission,
    };
  }

  @override
  String toString() {
    return 'DocumentData[file=$file, permission=$permission, ]';
  }

  static List<DocumentData> listFromJson(List<dynamic> json) {
    return json == null
        ? List<DocumentData>()
        : json.map((value) => DocumentData.fromJson(value)).toList();
  }

  static Map<String, DocumentData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DocumentData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DocumentData.fromJson(value));
    }
    return map;
  }
}
