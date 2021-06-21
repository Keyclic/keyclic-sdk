// @dart=2.10
part of keyclic_sdk_api.api;

class FeedbackWorkflowTransitionDataTransitionEnum {
  static const String process_ = "process";
  static const String publish_ = "publish";
}

class FeedbackWorkflowTransitionData {
  FeedbackWorkflowTransitionData({
    this.transition,
  });

  factory FeedbackWorkflowTransitionData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackWorkflowTransitionData(
      transition: json['transition'],
    );
  }

  /// use FeedbackWorkflowTransitionDataTransitionEnum
  String transition;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackWorkflowTransitionData &&
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

  static List<FeedbackWorkflowTransitionData> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                FeedbackWorkflowTransitionData.fromJson(value))
            ?.toList() ??
        <FeedbackWorkflowTransitionData>[];
  }

  static Map<String, FeedbackWorkflowTransitionData> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, FeedbackWorkflowTransitionData>(
            (String key, dynamic value) {
          return MapEntry(key, FeedbackWorkflowTransitionData.fromJson(value));
        }) ??
        <String, FeedbackWorkflowTransitionData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (transition != null) 'transition': transition,
    };
  }

  @override
  String toString() {
    return 'FeedbackWorkflowTransitionData[transition=$transition, ]';
  }
}
