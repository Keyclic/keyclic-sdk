part of keyclic_sdk_api.api;

class DocumentDataPermission {
  DocumentDataPermission({
    this.targetGroup,
  });

  factory DocumentDataPermission.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DocumentDataPermission(
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

    return other is DocumentDataPermission &&
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

  static List<DocumentDataPermission> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => DocumentDataPermission.fromJson(value))
            ?.toList() ??
        <DocumentDataPermission>[];
  }

  static Map<String, DocumentDataPermission> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, DocumentDataPermission>((String key, dynamic value) {
          return MapEntry(key, DocumentDataPermission.fromJson(value));
        }) ??
        <String, DocumentDataPermission>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'targetGroup': targetGroup,
    };
  }

  @override
  String toString() {
    return 'DocumentDataPermission[targetGroup=$targetGroup, ]';
  }
}
