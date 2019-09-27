part of keyclic_sdk_api.api;

class OperationLinksSelfIriTemplateMapping {
  OperationLinksSelfIriTemplateMapping({
    this.operation,
  });

  OperationLinksSelfIriTemplateMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    operation = json['operation'];
  }

  String operation;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksSelfIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        operation == other.operation;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= operation?.hashCode ?? 0;

    return hashCode;
  }

  static List<OperationLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <OperationLinksSelfIriTemplateMapping>[]
        : json
            .map((dynamic value) =>
                OperationLinksSelfIriTemplateMapping.fromJson(value))
            .toList();
  }

  static Map<String, OperationLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OperationLinksSelfIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OperationLinksSelfIriTemplateMapping.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'operation': operation,
    };
  }

  @override
  String toString() {
    return 'OperationLinksSelfIriTemplateMapping[operation=$operation, ]';
  }
}
