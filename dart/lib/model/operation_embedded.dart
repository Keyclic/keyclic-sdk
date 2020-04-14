part of keyclic_sdk_api.api;

class OperationEmbedded {
  OperationEmbedded({
    this.duration,
    this.operator_,
    this.stateTransitions,
    this.tracking,
    this.workflow,
  });

  factory OperationEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationEmbedded(
      duration: OperationEmbeddedDuration.fromJson(json['duration']),
      operator_: Person.fromJson(json['operator']),
      stateTransitions: json['stateTransitions'] is List
          ? List<String>.from(json['stateTransitions'])
          : null,
      tracking: json['tracking'],
      workflow: DelegationEmbeddedWorkflow.fromJson(json['workflow']),
    );
  }

  OperationEmbeddedDuration duration;

  Person operator_;

  List<String> stateTransitions;

  String tracking;

  DelegationEmbeddedWorkflow workflow;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationEmbedded &&
        runtimeType == other.runtimeType &&
        duration == other.duration &&
        operator_ == other.operator_ &&
        DeepCollectionEquality.unordered()
            .equals(stateTransitions, other.stateTransitions) &&
        tracking == other.tracking &&
        workflow == other.workflow;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (stateTransitions is List && stateTransitions.isNotEmpty) {
      hashCode ^= stateTransitions
          .map((String element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= duration?.hashCode ?? 0;
    hashCode ^= operator_?.hashCode ?? 0;
    hashCode ^= tracking?.hashCode ?? 0;
    hashCode ^= workflow?.hashCode ?? 0;

    return hashCode;
  }

  static List<OperationEmbedded> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => OperationEmbedded.fromJson(value))
            ?.toList() ??
        <OperationEmbedded>[];
  }

  static Map<String, OperationEmbedded> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, OperationEmbedded>((String key, dynamic value) {
          return MapEntry(key, OperationEmbedded.fromJson(value));
        }) ??
        <String, OperationEmbedded>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (duration != null) 'duration': duration.toJson(),
      if (operator_ != null) 'operator': operator_.toJson(),
      if (stateTransitions != null) 'stateTransitions': stateTransitions,
      if (tracking != null) 'tracking': tracking,
      if (workflow != null) 'workflow': workflow.toJson(),
    };
  }

  @override
  String toString() {
    return 'OperationEmbedded[duration=$duration, operator_=$operator_, stateTransitions=$stateTransitions, tracking=$tracking, workflow=$workflow, ]';
  }
}
