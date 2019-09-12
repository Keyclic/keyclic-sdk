part of keyclic_sdk_api.api;

class FeedbackWorkflowTransitionDataTransitionEnum {
  static const String process_ = "process";
  static const String publish_ = "publish";
}

class FeedbackWorkflowTransitionData {
  FeedbackWorkflowTransitionData({
    this.transition,
  });

  FeedbackWorkflowTransitionData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    transition = json['transition'];
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

    hashCode ^= (transition?.hashCode ?? 0);

    return hashCode;
  }

  static List<FeedbackWorkflowTransitionData> listFromJson(List<dynamic> json) {
    return json == null
        ? <FeedbackWorkflowTransitionData>[]
        : json
            .map((dynamic value) =>
                FeedbackWorkflowTransitionData.fromJson(value))
            .toList();
  }

  static Map<String, FeedbackWorkflowTransitionData> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackWorkflowTransitionData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackWorkflowTransitionData.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'transition': transition,
    };
  }

  @override
  String toString() {
    return 'FeedbackWorkflowTransitionData[transition=$transition, ]';
  }
}
