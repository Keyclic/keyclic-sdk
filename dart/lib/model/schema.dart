part of keyclic_sdk_api.api;

class Schema {
  Schema({
    this.properties,
    this.required,
  });

  Schema.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    properties = Property.mapFromJson(json['properties']);
    if (json['required'] is List) {
      required = List<String>.from(json['required']);
    }
  }

  Map<String, Property> properties;

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
    return json == null
        ? <Schema>[]
        : json.map((dynamic value) => Schema.fromJson(value)).toList();
  }

  static Map<String, Schema> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Schema>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Schema.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'properties': properties,
      'required': required,
    };
  }

  @override
  String toString() {
    return 'Schema[properties=$properties, required=$required, ]';
  }
}
