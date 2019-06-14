part of keyclic_sdk_api.api;

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

  String transition;
  //enum transitionEnum {  deliver,  dispatch,  fail,  publish,  process,  success,  };

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackWorkflowTransitionData &&
        runtimeType == other.runtimeType &&
        transition == other.transition;
  }

  @override
  int get hashCode => 0 ^ transition.hashCode;

  Map<String, dynamic> toJson() {
    return {
      'transition': transition,
    };
  }

  @override
  String toString() {
    return 'FeedbackWorkflowTransitionData[transition=$transition, ]';
  }

  static List<FeedbackWorkflowTransitionData> listFromJson(List<dynamic> json) {
    return json == null
        ? List<FeedbackWorkflowTransitionData>()
        : json
            .map((value) => FeedbackWorkflowTransitionData.fromJson(value))
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
}
