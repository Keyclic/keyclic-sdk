part of keyclic_sdk_api.api;

class ReportWorkflowTransitionDataTransitionEnum {
  static const String accept_ = "accept";
  static const String close_ = "close";
  static const String hold_ = "hold";
  static const String progress_ = "progress";
  static const String refuse_ = "refuse";
}

class ReportWorkflowTransitionData {
  ReportWorkflowTransitionData({
    this.transition,
  });

  factory ReportWorkflowTransitionData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportWorkflowTransitionData(
      transition: json['transition'],
    );
  }

  /// use ReportWorkflowTransitionDataTransitionEnum
  String transition;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportWorkflowTransitionData &&
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

  static List<ReportWorkflowTransitionData> listFromJson(List<dynamic> json) {
    return json == null
        ? <ReportWorkflowTransitionData>[]
        : json
            .map(
                (dynamic value) => ReportWorkflowTransitionData.fromJson(value))
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
      if (transition != null) 'transition': transition,
    };
  }

  @override
  String toString() {
    return 'ReportWorkflowTransitionData[transition=$transition, ]';
  }
}
