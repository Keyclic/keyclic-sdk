part of keyclic_sdk_api.api;

class DocumentData {
  DocumentData({
    this.container,
    this.type,
    this.file,
    this.permission,
  });

  factory DocumentData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DocumentData(
      container: json['container'],
      type: json['type'],
      file: DocumentDataFile.fromJson(json['file']),
      permission: DocumentDataPermission.fromJson(json['permission']),
    );
  }

  String container;

  String type;

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
        container == other.container &&
        type == other.type &&
        file == other.file &&
        permission == other.permission;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= container?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
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
      'container': container,
      'type': type,
      'file': file?.toJson(),
      'permission': permission?.toJson(),
    };
  }

  @override
  String toString() {
    return 'DocumentData[container=$container, type=$type, file=$file, permission=$permission, ]';
  }
}
