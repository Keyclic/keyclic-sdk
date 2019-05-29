part of keyclic_sdk_api.api;

class ReportWorkflowTransitionData {
  ReportWorkflowTransitionData();

  ReportWorkflowTransitionData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    transition = json['transition'];
  }

  String transition;
  //enum transitionEnum {  accept,  refuse,  hold,  progress,  close,  };

  Map<String, dynamic> toJson() {
    return {
      'transition': transition,
    };
  }

  @override
  String toString() {
    return 'ReportWorkflowTransitionData[transition=$transition, ]';
  }

  static List<ReportWorkflowTransitionData> listFromJson(List<dynamic> json) {
    return json == null ? List<ReportWorkflowTransitionData>() : json.map((value) => ReportWorkflowTransitionData.fromJson(value)).toList();
  }

  static Map<String, ReportWorkflowTransitionData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReportWorkflowTransitionData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReportWorkflowTransitionData.fromJson(value));
    }
    return map;
  }
}
