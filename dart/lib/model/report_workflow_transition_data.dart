part of keyclic_sdk_api.api;

class ReportWorkflowTransitionData {
  ReportWorkflowTransitionData({
    this.transition,
  });

  ReportWorkflowTransitionData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    transition = json['transition'];
  }

  /// enum transitionEnum {  accept,  close,  hold,  progress,  refuse,  };
  String transition;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is ReportWorkflowTransitionData &&
        runtimeType == other.runtimeType &&
        transition == other.transition;
  }

  @override
  int get hashCode => 0 ^ transition.hashCode;

  static List<ReportWorkflowTransitionData> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ReportWorkflowTransitionData>()
        : json
            .map((value) => ReportWorkflowTransitionData.fromJson(value))
            .toList();
  }

  static Map<String, ReportWorkflowTransitionData> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReportWorkflowTransitionData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportWorkflowTransitionData.fromJson(value));
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
    return 'ReportWorkflowTransitionData[transition=$transition, ]';
  }
}
