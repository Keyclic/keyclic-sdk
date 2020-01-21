part of keyclic_sdk_api.api;

class ConfigurationDelegationType {
  ConfigurationDelegationType({
    this.id,
    this.type,
    this.workflow,
  });

  factory ConfigurationDelegationType.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ConfigurationDelegationType(
      id: json['id'],
      type: json['type'],
      workflow: DelegationTypeWorkflow.fromJson(json['workflow']),
    );
  }

  String id;

  String type;

  DelegationTypeWorkflow workflow;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ConfigurationDelegationType &&
        runtimeType == other.runtimeType &&
        id == other.id &&
        type == other.type &&
        workflow == other.workflow;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= workflow?.hashCode ?? 0;

    return hashCode;
  }

  static List<ConfigurationDelegationType> listFromJson(List<dynamic> json) {
    return json == null
        ? <ConfigurationDelegationType>[]
        : json
            .map((dynamic value) => ConfigurationDelegationType.fromJson(value))
            .toList();
  }

  static Map<String, ConfigurationDelegationType> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ConfigurationDelegationType>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ConfigurationDelegationType.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (type != null) 'type': type,
      if (workflow != null) 'workflow': workflow,
    };
  }

  @override
  String toString() {
    return 'ConfigurationDelegationType[id=$id, type=$type, workflow=$workflow, ]';
  }
}
