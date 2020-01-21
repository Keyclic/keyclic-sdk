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
      properties: Property.mapFromJson(json['properties']),
      required:
          json['required'] is List ? List<String>.from(json['required']) : null,
    );
  }

  Map<String, Property> properties;

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
    return json == null
        ? <BusinessActivitySchema>[]
        : json
            .map((dynamic value) => BusinessActivitySchema.fromJson(value))
            .toList();
  }

  static Map<String, BusinessActivitySchema> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, BusinessActivitySchema>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = BusinessActivitySchema.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (properties != null) 'properties': properties,
      if (required != null) 'required': required,
    };
  }

  @override
  String toString() {
    return 'BusinessActivitySchema[properties=$properties, required=$required, ]';
  }
}
