part of keyclic_sdk_api.api;

class DocumentPatchFile {
  DocumentPatchFile({
    this.name,
  });

  factory DocumentPatchFile.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DocumentPatchFile(
      name: json['name'],
    );
  }

  String name;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentPatchFile &&
        runtimeType == other.runtimeType &&
        name == other.name;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= name?.hashCode ?? 0;

    return hashCode;
  }

  static List<DocumentPatchFile> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => DocumentPatchFile.fromJson(value))
            ?.toList() ??
        <DocumentPatchFile>[];
  }

  static Map<String, DocumentPatchFile> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, DocumentPatchFile>((String key, dynamic value) {
          return MapEntry(key, DocumentPatchFile.fromJson(value));
        }) ??
        <String, DocumentPatchFile>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (name != null) 'name': name,
    };
  }

  @override
  String toString() {
    return 'DocumentPatchFile[name=$name, ]';
  }
}
