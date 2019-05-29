part of keyclic_sdk_api.api;

class FeedbackWorkflowTransitionData {
  FeedbackWorkflowTransitionData();

  FeedbackWorkflowTransitionData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    transition = json['transition'];
  }

  String transition;
  //enum transitionEnum {  deliver,  dispatch,  fail,  publish,  process,  success,  };

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
