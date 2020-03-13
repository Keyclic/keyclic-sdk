part of keyclic_sdk_api.api;

class DelegationEmbeddedWorkflow {
  DelegationEmbeddedWorkflow({
    this.state,
    this.transitions,
  });

  factory DelegationEmbeddedWorkflow.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DelegationEmbeddedWorkflow(
      state: WorkflowState.fromJson(json['state']),
      transitions: Transition.listFromJson(json['transitions']),
    );
  }

  WorkflowState state;

  List<Transition> transitions;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DelegationEmbeddedWorkflow &&
        runtimeType == other.runtimeType &&
        state == other.state &&
        DeepCollectionEquality.unordered()
            .equals(transitions, other.transitions);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (transitions is List && transitions.isNotEmpty) {
      hashCode ^= transitions
          .map((Transition element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= state?.hashCode ?? 0;

    return hashCode;
  }

  static List<DelegationEmbeddedWorkflow> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => DelegationEmbeddedWorkflow.fromJson(value))
            ?.toList() ??
        <DelegationEmbeddedWorkflow>[];
  }

  static Map<String, DelegationEmbeddedWorkflow> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, DelegationEmbeddedWorkflow>(
            (String key, dynamic value) {
          return MapEntry(key, DelegationEmbeddedWorkflow.fromJson(value));
        }) ??
        <String, DelegationEmbeddedWorkflow>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (state != null) 'state': state.toJson(),
      if (transitions != null) 'transitions': transitions,
    };
  }

  @override
  String toString() {
    return 'DelegationEmbeddedWorkflow[state=$state, transitions=$transitions, ]';
  }
}
