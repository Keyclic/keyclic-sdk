part of keyclic_sdk_api.api;

class OperationWorkflowTransitionDataTransitionEnum {
  static const String assign_ = "assign";
  static const String progress_ = "progress";
  static const String resolve_ = "resolve";
}

class OperationWorkflowTransitionData {
  OperationWorkflowTransitionData({
    this.transition,
  });

  factory OperationWorkflowTransitionData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationWorkflowTransitionData(
      transition: json['transition'],
    );
  }

  /// use OperationWorkflowTransitionDataTransitionEnum
  String transition;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationWorkflowTransitionData &&
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

  static List<OperationWorkflowTransitionData> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <OperationWorkflowTransitionData>[]
        : json
            .map((dynamic value) =>
                OperationWorkflowTransitionData.fromJson(value))
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

  Map<String, dynamic> toJson() {
    return {
      if (transition != null) 'transition': transition,
    };
  }

  @override
  String toString() {
    return 'OperationWorkflowTransitionData[transition=$transition, ]';
  }
}
