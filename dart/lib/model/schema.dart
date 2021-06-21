// @dart=2.10
part of keyclic_sdk_api.api;

class Schema {
  Schema({
    this.properties,
    this.required,
  });

  factory Schema.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Schema(
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

    return other is Schema &&
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

  static List<Schema> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => Schema.fromJson(value))?.toList() ??
        <Schema>[];
  }

  static Map<String, Schema> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, Schema>((String key, dynamic value) {
          return MapEntry(key, Schema.fromJson(value));
        }) ??
        <String, Schema>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (properties != null) 'properties': properties,
      if (required != null) 'required': required,
    };
  }

  @override
  String toString() {
    return 'Schema[properties=$properties, required=$required, ]';
  }
}
