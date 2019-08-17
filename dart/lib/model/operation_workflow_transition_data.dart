part of keyclic_sdk_api.api;

class OperationWorkflowTransitionData {
  OperationWorkflowTransitionData({
    this.transition,
  });

  OperationWorkflowTransitionData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    transition = json['transition'];
  }

  String transition;
  //enum transitionEnum {  accept,  assign,  progress,  refuse,  reset,  resolve,  };

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is OperationWorkflowTransitionData &&
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
