part of keyclic_sdk_api.api;

class BusinessActivityMetadataSchema {
  BusinessActivityMetadataSchema({
    this.properties,
    this.required,
  });

  BusinessActivityMetadataSchema.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    properties = Property.mapFromJson(json['properties']);
    required =
        (json['required'] as List)?.map((item) => item as String)?.toList();
  }

  Map<String, Property> properties;

  List<String> required;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivityMetadataSchema &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'properties': properties,
      'required': required,
    };
  }

  @override
  String toString() {
    return 'BusinessActivityMetadataSchema[properties=$properties, required=$required, ]';
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
