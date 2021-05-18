part of keyclic_sdk_api.api;

class DocumentWorkflowDataTransitionEnum {
  static const String publish_ = "publish";
  static const String review_ = "review";
}

class DocumentWorkflowData {
  DocumentWorkflowData({
    this.transition,
  });

  factory DocumentWorkflowData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DocumentWorkflowData(
      transition: json['transition'],
    );
  }

  /// use DocumentWorkflowDataTransitionEnum
  String transition;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentWorkflowData &&
        runtimeType == other.runtimeType &&
        transition == other.transition;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= transition?.hashCode ?? 0;

    return hashCode;
  }

  static List<DocumentWorkflowData> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => DocumentWorkflowData.fromJson(value))
            ?.toList() ??
        <DocumentWorkflowData>[];
  }

  static Map<String, DocumentWorkflowData> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, DocumentWorkflowData>((String key, dynamic value) {
          return MapEntry(key, DocumentWorkflowData.fromJson(value));
        }) ??
        <String, DocumentWorkflowData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'transition': transition,
    };
  }

  @override
  String toString() {
    return 'DocumentWorkflowData[transition=$transition, ]';
  }
}
