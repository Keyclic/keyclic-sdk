// @dart=2.10
part of keyclic_sdk_api.api;

class OperationLinksSelfIriTemplateMapping {
  OperationLinksSelfIriTemplateMapping({
    this.operation,
  });

  factory OperationLinksSelfIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksSelfIriTemplateMapping(
      operation: json['operation'],
    );
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
    return json
            ?.map((dynamic value) =>
                OperationLinksSelfIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <OperationLinksSelfIriTemplateMapping>[];
  }

  static Map<String, OperationLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, OperationLinksSelfIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(
              key, OperationLinksSelfIriTemplateMapping.fromJson(value));
        }) ??
        <String, OperationLinksSelfIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (operation != null) 'operation': operation,
    };
  }

  @override
  String toString() {
    return 'OperationLinksSelfIriTemplateMapping[operation=$operation, ]';
  }
}
