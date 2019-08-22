part of keyclic_sdk_api.api;

class DocumentPatch {
  DocumentPatch({
    this.file,
    this.permission,
  });

  DocumentPatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    file = DocumentPatchFile.fromJson(json['file']);
    permission = DocumentPermission.fromJson(json['permission']);
  }

  DocumentPatchFile file;

  DocumentPermission permission;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentPatch &&
        runtimeType == other.runtimeType &&
        file == other.file &&
        permission == other.permission;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ file.hashCode ^ permission.hashCode;

  static List<DocumentPatch> listFromJson(List<dynamic> json) {
    return json == null
        ? <DocumentPatch>[]
        : json.map((value) => DocumentPatch.fromJson(value)).toList();
  }

  static Map<String, DocumentPatch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DocumentPatch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DocumentPatch.fromJson(value));
    }
    return map;
  }

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
}
