part of keyclic_sdk_api.api;

class DocumentDataPermission {
  DocumentDataPermission({
    this.targetGroup,
  });

  DocumentDataPermission.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    targetGroup = json['targetGroup'];
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
    return json == null
        ? <DocumentDataPermission>[]
        : json
            .map((dynamic value) => DocumentDataPermission.fromJson(value))
            .toList();
  }

  static Map<String, DocumentDataPermission> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DocumentDataPermission>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DocumentDataPermission.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (targetGroup != null) 'targetGroup': targetGroup,
    };
  }

  @override
  String toString() {
    return 'DocumentDataPermission[targetGroup=$targetGroup, ]';
  }
}
