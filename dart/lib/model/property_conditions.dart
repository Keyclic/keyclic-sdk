part of keyclic_sdk_api.api;

class PropertyConditions {
  PropertyConditions();

  PropertyConditions.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    allOf = Condition.listFromJson(json['allOf']);
  }

  List<Condition> allOf;

  Map<String, dynamic> toJson() {
    return {
      'allOf': allOf,
    };
  }

  @override
  String toString() {
    return 'PropertyConditions[allOf=$allOf, ]';
  }

  static List<PropertyConditions> listFromJson(List<dynamic> json) {
    return json == null
        ? List<PropertyConditions>()
        : json.map((value) => PropertyConditions.fromJson(value)).toList();
  }

  static Map<String, PropertyConditions> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PropertyConditions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PropertyConditions.fromJson(value));
    }
    return map;
  }
}
