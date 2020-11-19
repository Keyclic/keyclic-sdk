part of keyclic_sdk_api.api;

class DelegationEmbedded {
  DelegationEmbedded({
    this.service,
    this.workflow,
  });

  factory DelegationEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DelegationEmbedded(
      service: InternalService.fromJson(json['service']),
      workflow: DelegationEmbeddedWorkflow.fromJson(json['workflow']),
    );
  }

  InternalService service;

  DelegationEmbeddedWorkflow workflow;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DelegationEmbedded &&
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
      if (service != null) 'service': service.toJson(),
      if (workflow != null) 'workflow': workflow.toJson(),
    };
  }

  @override
  String toString() {
    return 'DelegationEmbedded[service=$service, workflow=$workflow, ]';
  }
}
