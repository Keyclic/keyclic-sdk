part of keyclic_sdk_api.api;

class DocumentPermission {
  DocumentPermission({
    this.targetGroup,
  });

  factory DocumentPermission.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DocumentPermission(
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

    return other is DocumentPermission &&
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

  static List<DocumentPermission> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => DocumentPermission.fromJson(value))
            ?.toList() ??
        <DocumentPermission>[];
  }

  static Map<String, DocumentPermission> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, DocumentPermission.fromJson(value));
        }) ??
        <String, DocumentPermission>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (targetGroup != null) 'targetGroup': targetGroup,
    };
  }

  @override
  String toString() {
    return 'DocumentPermission[targetGroup=$targetGroup, ]';
  }
}
