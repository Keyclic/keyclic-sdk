part of keyclic_sdk_api.api;

class OperationEmbedded {
  OperationEmbedded({
    this.createdBy,
    this.operator_,
    this.workflow,
  });

  factory OperationEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationEmbedded(
      createdBy: Person.fromJson(json['createdBy']),
      operator_: Person.fromJson(json['operator']),
      workflow: AssignmentEmbeddedWorkflow.fromJson(json['workflow']),
    );
  }

  Person createdBy;

  Person operator_;

  AssignmentEmbeddedWorkflow workflow;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationEmbedded &&
        runtimeType == other.runtimeType &&
        createdBy == other.createdBy &&
        operator_ == other.operator_ &&
        workflow == other.workflow;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= createdBy?.hashCode ?? 0;
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
      if (createdBy != null) 'createdBy': createdBy.toJson(),
      if (operator_ != null) 'operator': operator_.toJson(),
      if (workflow != null) 'workflow': workflow.toJson(),
    };
  }

  @override
  String toString() {
    return 'OperationEmbedded[createdBy=$createdBy, operator_=$operator_, workflow=$workflow, ]';
  }
}
