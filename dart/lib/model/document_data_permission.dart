part of keyclic_sdk_api.api;

class DocumentDataPermission {
  DocumentDataPermission();

  DocumentDataPermission.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    targetGroup = json['targetGroup'];
  }

  String targetGroup;

  Map<String, dynamic> toJson() {
    return {
      'targetGroup': targetGroup,
    };
  }

  @override
  String toString() {
    return 'DocumentDataPermission[targetGroup=$targetGroup, ]';
  }

  static List<DocumentDataPermission> listFromJson(List<dynamic> json) {
    return json == null ? List<DocumentDataPermission>() : json.map((value) => DocumentDataPermission.fromJson(value)).toList();
  }

  static Map<String, DocumentDataPermission> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DocumentDataPermission>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DocumentDataPermission.fromJson(value));
    }
    return map;
  }
}
