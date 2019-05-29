part of keyclic_sdk_api.api;

class Schema {
  Schema();

  Schema.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    properties = Property.mapFromJson(json['properties']);
    required = (json['required'] as List)?.map((item) => item as String)?.toList();
  }

  Map<String, Property> properties;

  List<String> required;

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

  static List<Schema> listFromJson(List<dynamic> json) {
    return json == null ? List<Schema>() : json.map((value) => Schema.fromJson(value)).toList();
  }

  static Map<String, Schema> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Schema>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Schema.fromJson(value));
    }
    return map;
  }
}
