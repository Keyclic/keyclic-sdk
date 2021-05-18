part of keyclic_sdk_api.api;

class DocumentDataFile {
  DocumentDataFile({
    this.content,
    this.contentType,
    this.name,
  });

  factory DocumentDataFile.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DocumentDataFile(
      content: json['content'],
      contentType: json['contentType'],
      name: json['name'],
    );
  }

  String content;

  String contentType;

  String name;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentDataFile &&
        runtimeType == other.runtimeType &&
        content == other.content &&
        contentType == other.contentType &&
        name == other.name;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= content?.hashCode ?? 0;
    hashCode ^= contentType?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;

    return hashCode;
  }

  static List<DocumentDataFile> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => DocumentDataFile.fromJson(value))
            ?.toList() ??
        <DocumentDataFile>[];
  }

  static Map<String, DocumentDataFile> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, DocumentDataFile>((String key, dynamic value) {
          return MapEntry(key, DocumentDataFile.fromJson(value));
        }) ??
        <String, DocumentDataFile>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (content != null) 'content': content,
      if (contentType != null) 'contentType': contentType,
      if (name != null) 'name': name,
    };
  }

  @override
  String toString() {
    return 'DocumentDataFile[content=$content, contentType=$contentType, name=$name, ]';
  }
}
