part of keyclic_sdk_api.api;

class DelegationWorkflowTransitionDataTransitionEnum {
  static const String accept_ = "accept";
  static const String refuse_ = "refuse";
}

class DelegationWorkflowTransitionData {
  DelegationWorkflowTransitionData({
    this.transition,
  });

  DelegationWorkflowTransitionData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    transition = json['transition'];
  }

  /// use DelegationWorkflowTransitionDataTransitionEnum
  String transition;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DelegationWorkflowTransitionData &&
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

  static List<DelegationWorkflowTransitionData> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <DelegationWorkflowTransitionData>[]
        : json
            .map((dynamic value) =>
                DelegationWorkflowTransitionData.fromJson(value))
            .toList();
  }

  static Map<String, DelegationWorkflowTransitionData> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DelegationWorkflowTransitionData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DelegationWorkflowTransitionData.fromJson(value));
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
    return 'DelegationWorkflowTransitionData[transition=$transition, ]';
  }
}
