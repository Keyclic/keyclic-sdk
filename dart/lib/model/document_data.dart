part of keyclic_sdk_api.api;

class DocumentData {
  DocumentData({
    this.file,
    this.permission,
  });

  DocumentData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    file = DocumentDataFile.fromJson(json['file']);
    permission = DocumentDataPermission.fromJson(json['permission']);
  }

  DocumentDataFile file;

  DocumentDataPermission permission;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentData &&
        runtimeType == other.runtimeType &&
        file == other.file &&
        permission == other.permission;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= (file?.hashCode ?? 0);
    hashCode ^= (permission?.hashCode ?? 0);

    return hashCode;
  }

  static List<DocumentData> listFromJson(List<dynamic> json) {
    return json == null
        ? <DocumentData>[]
        : json.map((dynamic value) => DocumentData.fromJson(value)).toList();
  }

  static Map<String, DocumentData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DocumentData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DocumentData.fromJson(value));
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
    return 'DocumentData[file=$file, permission=$permission, ]';
  }
}
