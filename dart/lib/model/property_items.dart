part of keyclic_sdk_api.api;

class PropertyItems {
  PropertyItems({
    this.oneOf,
  });

  PropertyItems.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    oneOf = Choice.listFromJson(json['oneOf']);
  }

  List<Choice> oneOf;

  Map<String, dynamic> toJson() {
    return {
      'oneOf': oneOf,
    };
  }

  @override
  String toString() {
    return 'PropertyItems[oneOf=$oneOf, ]';
  }

  static List<PropertyItems> listFromJson(List<dynamic> json) {
    return json == null
        ? List<PropertyItems>()
        : json.map((value) => PropertyItems.fromJson(value)).toList();
  }

  static Map<String, PropertyItems> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PropertyItems>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PropertyItems.fromJson(value));
    }
    return map;
  }
}
