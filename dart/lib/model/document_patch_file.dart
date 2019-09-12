part of keyclic_sdk_api.api;

class DocumentPatchFile {
  DocumentPatchFile({
    this.name,
  });

  DocumentPatchFile.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    name = json['name'];
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

    hashCode ^= (name?.hashCode ?? 0);

    return hashCode;
  }

  static List<DocumentPatchFile> listFromJson(List<dynamic> json) {
    return json == null
        ? <DocumentPatchFile>[]
        : json
            .map((dynamic value) => DocumentPatchFile.fromJson(value))
            .toList();
  }

  static Map<String, DocumentPatchFile> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DocumentPatchFile>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DocumentPatchFile.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
    };
  }

  @override
  String toString() {
    return 'DocumentPatchFile[name=$name, ]';
  }
}
