part of keyclic_sdk_api.api;

class BusinessActivityMetadataSchema {
  BusinessActivityMetadataSchema({
    this.required,
    this.properties,
  });

  BusinessActivityMetadataSchema.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    required =
        (json['required'] as List)?.map((item) => item as String)?.toList();
    properties = Property.mapFromJson(json['properties']);
  }

  List<String> required;

  Map<String, Property> properties;

  Map<String, dynamic> toJson() {
    return {
      'required': required,
      'properties': properties,
    };
  }

  @override
  String toString() {
    return 'BusinessActivityMetadataSchema[required=$required, properties=$properties, ]';
  }

  static List<BusinessActivityMetadataSchema> listFromJson(List<dynamic> json) {
    return json == null
        ? List<BusinessActivityMetadataSchema>()
        : json
            .map((value) => BusinessActivityMetadataSchema.fromJson(value))
            .toList();
  }

  static Map<String, BusinessActivityMetadataSchema> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, BusinessActivityMetadataSchema>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = BusinessActivityMetadataSchema.fromJson(value));
    }
    return map;
  }
}
