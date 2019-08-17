part of keyclic_sdk_api.api;

class DocumentPermission {
  DocumentPermission({
    this.targetGroup,
  });

  DocumentPermission.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    targetGroup = json['targetGroup'];
  }

  String targetGroup;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentPermission && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<DocumentPermission> listFromJson(List<dynamic> json) {
    return json == null
        ? List<DocumentPermission>()
        : json.map((value) => DocumentPermission.fromJson(value)).toList();
  }

  static Map<String, DocumentPermission> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DocumentPermission>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DocumentPermission.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'targetGroup': targetGroup,
    };
  }

  @override
  String toString() {
    return 'DocumentPermission[targetGroup=$targetGroup, ]';
  }
}
