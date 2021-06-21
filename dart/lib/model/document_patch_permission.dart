// @dart=2.10
part of keyclic_sdk_api.api;

class DocumentPatchPermission {
  DocumentPatchPermission({
    this.targetGroup,
  });

  factory DocumentPatchPermission.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DocumentPatchPermission(
      targetGroup: json['targetGroup'],
    );
  }

  String targetGroup;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentPatchPermission &&
        runtimeType == other.runtimeType &&
        targetGroup == other.targetGroup;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= targetGroup?.hashCode ?? 0;

    return hashCode;
  }

  static List<DocumentPatchPermission> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => DocumentPatchPermission.fromJson(value))
            ?.toList() ??
        <DocumentPatchPermission>[];
  }

  static Map<String, DocumentPatchPermission> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, DocumentPatchPermission>((String key, dynamic value) {
          return MapEntry(key, DocumentPatchPermission.fromJson(value));
        }) ??
        <String, DocumentPatchPermission>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (targetGroup != null) 'targetGroup': targetGroup,
    };
  }

  @override
  String toString() {
    return 'DocumentPatchPermission[targetGroup=$targetGroup, ]';
  }
}
