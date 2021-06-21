// @dart=2.10
part of keyclic_sdk_api.api;

class ConfigurationPlaceType {
  ConfigurationPlaceType({
    this.id,
    this.type,
    this.workflow,
  });

  factory ConfigurationPlaceType.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ConfigurationPlaceType(
      id: json['id'],
      type: json['type'],
      workflow: PlaceTypeWorkflow.fromJson(json['workflow']),
    );
  }

  String id;

  String type;

  PlaceTypeWorkflow workflow;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ConfigurationPlaceType &&
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

  static List<ConfigurationPlaceType> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ConfigurationPlaceType.fromJson(value))
            ?.toList() ??
        <ConfigurationPlaceType>[];
  }

  static Map<String, ConfigurationPlaceType> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, ConfigurationPlaceType>((String key, dynamic value) {
          return MapEntry(key, ConfigurationPlaceType.fromJson(value));
        }) ??
        <String, ConfigurationPlaceType>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (type != null) 'type': type,
      if (workflow != null) 'workflow': workflow.toJson(),
    };
  }

  @override
  String toString() {
    return 'ConfigurationPlaceType[id=$id, type=$type, workflow=$workflow, ]';
  }
}
