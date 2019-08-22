part of keyclic_sdk_api.api;

class Property {
  Property({
    this.conditions,
    this.default_,
    this.description,
    this.enum_,
    this.format,
    this.id,
    this.items,
    this.maxItems,
    this.minItems,
    this.propertyOrder,
    this.title,
    this.type,
  });

  Property.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    conditions = PropertyConditions.fromJson(json['conditions']);
    default_ = json['default'];
    description = json['description'];
    enum_ = (json['enum'] as List)?.map((item) => item as String)?.toList();
    format = json['format'];
    id = json['id'];
    items = PropertyItems.fromJson(json['items']);
    maxItems = json['maxItems'];
    minItems = json['minItems'];
    propertyOrder = json['propertyOrder'];
    title = json['title'];
    type = json['type'];
  }

  PropertyConditions conditions;

  String default_;

  String description;

  List<String> enum_;

  String format;

  String id;

  PropertyItems items;

  int maxItems;

  int minItems;

  int propertyOrder;

  String title;

  String type;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Property &&
        runtimeType == other.runtimeType &&
        conditions == other.conditions &&
        default_ == other.default_ &&
        description == other.description &&
        DeepCollectionEquality.unordered().equals(enum_, other.enum_) &&
        format == other.format &&
        id == other.id &&
        items == other.items &&
        maxItems == other.maxItems &&
        minItems == other.minItems &&
        propertyOrder == other.propertyOrder &&
        title == other.title &&
        type == other.type;
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      conditions.hashCode ^
      default_.hashCode ^
      description.hashCode ^
      enum_.map((dynamic element) => element.hashCode).fold(0,
          (dynamic value, dynamic cursor) => value.hashCode ^ cursor.hashCode) ^
      format.hashCode ^
      id.hashCode ^
      items.hashCode ^
      maxItems.hashCode ^
      minItems.hashCode ^
      propertyOrder.hashCode ^
      title.hashCode ^
      type.hashCode;

  static List<Property> listFromJson(List<dynamic> json) {
    return json == null
        ? <Property>[]
        : json.map((value) => Property.fromJson(value)).toList();
  }

  static Map<String, Property> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Property>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Property.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'conditions': conditions,
      'default': default_,
      'description': description,
      'enum': enum_,
      'format': format,
      'id': id,
      'items': items,
      'maxItems': maxItems,
      'minItems': minItems,
      'propertyOrder': propertyOrder,
      'title': title,
      'type': type,
    };
  }

  @override
  String toString() {
    return 'Property[conditions=$conditions, default_=$default_, description=$description, enum_=$enum_, format=$format, id=$id, items=$items, maxItems=$maxItems, minItems=$minItems, propertyOrder=$propertyOrder, title=$title, type=$type, ]';
  }
}
