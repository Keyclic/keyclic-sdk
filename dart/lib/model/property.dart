part of keyclic_sdk_api.api;

class Property {
  Property();

  Property.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    type = json['type'];
    enum_ = (json['enum'] as List)?.map((item) => item as String)?.toList();
    description = json['description'];
    format = json['format'];
    maxItems = json['maxItems'];
    minItems = json['minItems'];
    default_ = json['default'];
    propertyOrder = json['propertyOrder'];
    title = json['title'];
    conditions = PropertyConditions.fromJson(json['conditions']);
    items = PropertyItems.fromJson(json['items']);
  }

  String type;

  List<String> enum_;

  String description;

  String format;

  int maxItems;

  int minItems;

  String default_;

  int propertyOrder;

  String title;

  PropertyConditions conditions;

  PropertyItems items;

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'enum': enum_,
      'description': description,
      'format': format,
      'maxItems': maxItems,
      'minItems': minItems,
      'default': default_,
      'propertyOrder': propertyOrder,
      'title': title,
      'conditions': conditions,
      'items': items,
    };
  }

  @override
  String toString() {
    return 'Property[type=$type, enum_=$enum_, description=$description, format=$format, maxItems=$maxItems, minItems=$minItems, default_=$default_, propertyOrder=$propertyOrder, title=$title, conditions=$conditions, items=$items, ]';
  }

  static List<Property> listFromJson(List<dynamic> json) {
    return json == null ? List<Property>() : json.map((value) => Property.fromJson(value)).toList();
  }

  static Map<String, Property> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Property>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Property.fromJson(value));
    }
    return map;
  }
}
