part of keyclic_sdk_api.api;

class OperationWorkflowTransitionData {
  OperationWorkflowTransitionData();

  OperationWorkflowTransitionData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    transition = json['transition'];
  }

  String transition;
  //enum transitionEnum {  reset,  assign,  accept,  refuse,  progress,  resolve,  };

  Map<String, dynamic> toJson() {
    return {
      'transition': transition,
    };
  }

  @override
  String toString() {
    return 'OperationWorkflowTransitionData[transition=$transition, ]';
  }

  static List<OperationWorkflowTransitionData> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<OperationWorkflowTransitionData>()
        : json
            .map((value) => OperationWorkflowTransitionData.fromJson(value))
            .toList();
  }

  static Map<String, OperationWorkflowTransitionData> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OperationWorkflowTransitionData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OperationWorkflowTransitionData.fromJson(value));
    }
    return map;
  }
}
