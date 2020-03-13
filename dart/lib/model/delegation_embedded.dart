part of keyclic_sdk_api.api;

class DelegationEmbedded {
  DelegationEmbedded({
    this.stateTransitions,
    this.workflow,
  });

  factory DelegationEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DelegationEmbedded(
      stateTransitions: json['stateTransitions'] is List
          ? List<String>.from(json['stateTransitions'])
          : null,
      workflow: DelegationEmbeddedWorkflow.fromJson(json['workflow']),
    );
  }

  List<String> stateTransitions;

  DelegationEmbeddedWorkflow workflow;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DelegationEmbedded &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered()
            .equals(stateTransitions, other.stateTransitions) &&
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

    hashCode ^= workflow?.hashCode ?? 0;

    return hashCode;
  }

  static List<DelegationEmbedded> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => DelegationEmbedded.fromJson(value))
            ?.toList() ??
        <DelegationEmbedded>[];
  }

  static Map<String, DelegationEmbedded> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, DelegationEmbedded>((String key, dynamic value) {
          return MapEntry(key, DelegationEmbedded.fromJson(value));
        }) ??
        <String, DelegationEmbedded>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (stateTransitions != null) 'stateTransitions': stateTransitions,
      if (workflow != null) 'workflow': workflow.toJson(),
    };
  }

  @override
  String toString() {
    return 'DelegationEmbedded[stateTransitions=$stateTransitions, workflow=$workflow, ]';
  }
}
