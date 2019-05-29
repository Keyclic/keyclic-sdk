part of keyclic_sdk_api.api;

class DocumentPatch {
  DocumentPatch();

  DocumentPatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    file = DocumentPatchFile.fromJson(json['file']);
    permission = DocumentPatchPermission.fromJson(json['permission']);
  }

  DocumentPatchFile file;

  DocumentPatchPermission permission;

  Map<String, dynamic> toJson() {
    return {
      'file': file,
      'permission': permission,
    };
  }

  @override
  String toString() {
    return 'DocumentPatch[file=$file, permission=$permission, ]';
  }

  static List<DocumentPatch> listFromJson(List<dynamic> json) {
    return json == null ? List<DocumentPatch>() : json.map((value) => DocumentPatch.fromJson(value)).toList();
  }

  static Map<String, DocumentPatch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DocumentPatch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DocumentPatch.fromJson(value));
    }
    return map;
  }
}
