part of keyclic_sdk_api.api;

class DigitalDocumentPermission {
  DigitalDocumentPermission({
    this.targetGroup,
  });

  factory DigitalDocumentPermission.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DigitalDocumentPermission(
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

    return other is DigitalDocumentPermission &&
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

  static List<DigitalDocumentPermission> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => DigitalDocumentPermission.fromJson(value))
            ?.toList() ??
        <DigitalDocumentPermission>[];
  }

  static Map<String, DigitalDocumentPermission> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, DigitalDocumentPermission>(
            (String key, dynamic value) {
          return MapEntry(key, DigitalDocumentPermission.fromJson(value));
        }) ??
        <String, DigitalDocumentPermission>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (targetGroup != null) 'targetGroup': targetGroup,
    };
  }

  @override
  String toString() {
    return 'DigitalDocumentPermission[targetGroup=$targetGroup, ]';
  }
}
