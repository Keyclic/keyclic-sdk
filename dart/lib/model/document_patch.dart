// @dart=2.10
part of keyclic_sdk_api.api;

class DocumentPatch {
  DocumentPatch({
    this.file,
    this.permission,
    this.text,
  });

  factory DocumentPatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DocumentPatch(
      file: DocumentPatchFile.fromJson(json['file']),
      permission: DocumentPatchPermission.fromJson(json['permission']),
      text: json['text'],
    );
  }

  DocumentPatchFile file;

  DocumentPatchPermission permission;

  String text;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentPatch &&
        runtimeType == other.runtimeType &&
        file == other.file &&
        permission == other.permission &&
        text == other.text;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= file?.hashCode ?? 0;
    hashCode ^= permission?.hashCode ?? 0;
    hashCode ^= text?.hashCode ?? 0;

    return hashCode;
  }

  static List<DocumentPatch> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => DocumentPatch.fromJson(value))
            ?.toList() ??
        <DocumentPatch>[];
  }

  static Map<String, DocumentPatch> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, DocumentPatch>((String key, dynamic value) {
          return MapEntry(key, DocumentPatch.fromJson(value));
        }) ??
        <String, DocumentPatch>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (file != null) 'file': file.toJson(),
      if (permission != null) 'permission': permission.toJson(),
      if (text != null) 'text': text,
    };
  }

  @override
  String toString() {
    return 'DocumentPatch[file=$file, permission=$permission, text=$text, ]';
  }
}
