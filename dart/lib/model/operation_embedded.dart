part of keyclic_sdk_api.api;

class OperationEmbedded {
  OperationEmbedded({
    this.operator_,
    this.workflow,
  });

  factory OperationEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationEmbedded(
      operator_: Person.fromJson(json['operator']),
      workflow: DelegationEmbeddedWorkflow.fromJson(json['workflow']),
    );
  }

  Person operator_;

  DelegationEmbeddedWorkflow workflow;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationEmbedded &&
        runtimeType == other.runtimeType &&
        operator_ == other.operator_ &&
        workflow == other.workflow;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= operator_?.hashCode ?? 0;
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
      if (operator_ != null) 'operator': operator_.toJson(),
      if (workflow != null) 'workflow': workflow.toJson(),
    };
  }

  @override
  String toString() {
    return 'OperationEmbedded[operator_=$operator_, workflow=$workflow, ]';
  }
}
