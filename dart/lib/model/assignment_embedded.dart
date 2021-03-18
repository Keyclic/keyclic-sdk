part of keyclic_sdk_api.api;

class AssignmentEmbedded {
  AssignmentEmbedded({
    this.service,
    this.workflow,
  });

  factory AssignmentEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return AssignmentEmbedded(
      service: InternalService.fromJson(json['service']),
      workflow: AssignmentEmbeddedWorkflow.fromJson(json['workflow']),
    );
  }

  InternalService service;

  AssignmentEmbeddedWorkflow workflow;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentEmbedded &&
        runtimeType == other.runtimeType &&
        service == other.service &&
        workflow == other.workflow;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= service?.hashCode ?? 0;
    hashCode ^= workflow?.hashCode ?? 0;

    return hashCode;
  }

  static List<AssignmentEmbedded> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => AssignmentEmbedded.fromJson(value))
            ?.toList() ??
        <AssignmentEmbedded>[];
  }

  static Map<String, AssignmentEmbedded> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, AssignmentEmbedded>((String key, dynamic value) {
          return MapEntry(key, AssignmentEmbedded.fromJson(value));
        }) ??
        <String, AssignmentEmbedded>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (service != null) 'service': service.toJson(),
      if (workflow != null) 'workflow': workflow.toJson(),
    };
  }

  @override
  String toString() {
    return 'AssignmentEmbedded[service=$service, workflow=$workflow, ]';
  }
}
