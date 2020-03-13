part of keyclic_sdk_api.api;

class DocumentData {
  DocumentData({
    this.file,
    this.permission,
  });

  factory DocumentData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DocumentData(
      file: DocumentDataFile.fromJson(json['file']),
      permission: DocumentDataPermission.fromJson(json['permission']),
    );
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

    hashCode ^= file?.hashCode ?? 0;
    hashCode ^= permission?.hashCode ?? 0;

    return hashCode;
  }

  static List<DocumentData> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => DocumentData.fromJson(value))
            ?.toList() ??
        <DocumentData>[];
  }

  static Map<String, DocumentData> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, DocumentData>((String key, dynamic value) {
          return MapEntry(key, DocumentData.fromJson(value));
        }) ??
        <String, DocumentData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (file != null) 'file': file.toJson(),
      if (permission != null) 'permission': permission.toJson(),
    };
  }

  @override
  String toString() {
    return 'DocumentData[file=$file, permission=$permission, ]';
  }
}
