part of keyclic_sdk_api.api;

class BusinessActivitySchema {
  BusinessActivitySchema({
    this.properties,
    this.required,
  });

  factory BusinessActivitySchema.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BusinessActivitySchema(
      properties: SchemaProperty.mapFromJson(json['properties']),
      required:
          json['required'] is List ? List<String>.from(json['required']) : null,
    );
  }

  Map<String, SchemaProperty> properties;

  List<String> required;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivitySchema &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered()
            .equals(properties, other.properties) &&
        DeepCollectionEquality.unordered().equals(required, other.required);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (required is List && required.isNotEmpty) {
      hashCode ^= required
          .map((String element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    if (properties is Map && properties.isNotEmpty) {
      hashCode ^= properties.keys
          .map((dynamic element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
      hashCode ^= properties.values
          .map((dynamic element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<BusinessActivitySchema> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => BusinessActivitySchema.fromJson(value))
            ?.toList() ??
        <BusinessActivitySchema>[];
  }

  static Map<String, BusinessActivitySchema> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, BusinessActivitySchema>((String key, dynamic value) {
          return MapEntry(key, BusinessActivitySchema.fromJson(value));
        }) ??
        <String, BusinessActivitySchema>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'properties': properties,
      'required': required,
    };
  }

  @override
  String toString() {
    return 'BusinessActivitySchema[properties=$properties, required=$required, ]';
  }
}
