part of keyclic_sdk_api.api;

class DocumentPatchPermission {
  DocumentPatchPermission();

  DocumentPatchPermission.fromJson(Map<String, dynamic> json) {
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
    return 'DocumentPatchPermission[targetGroup=$targetGroup, ]';
  }

  static List<DocumentPatchPermission> listFromJson(List<dynamic> json) {
    return json == null ? List<DocumentPatchPermission>() : json.map((value) => DocumentPatchPermission.fromJson(value)).toList();
  }

  static Map<String, DocumentPatchPermission> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DocumentPatchPermission>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DocumentPatchPermission.fromJson(value));
    }
    return map;
  }
}
