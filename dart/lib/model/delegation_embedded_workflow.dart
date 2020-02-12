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
      state: State.fromJson(json['state']),
      transitions: Transition.listFromJson(json['transitions']),
    );
  }

  State state;

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
    return json == null
        ? <DelegationEmbeddedWorkflow>[]
        : json
            .map((dynamic value) => DelegationEmbeddedWorkflow.fromJson(value))
            .toList();
  }

  static Map<String, DelegationEmbeddedWorkflow> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DelegationEmbeddedWorkflow>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DelegationEmbeddedWorkflow.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (state != null) 'state': state,
      if (transitions != null) 'transitions': transitions,
    };
  }

  @override
  String toString() {
    return 'DelegationEmbeddedWorkflow[state=$state, transitions=$transitions, ]';
  }
}
