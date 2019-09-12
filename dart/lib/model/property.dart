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
    if (json['enum'] is List) {
      enum_ = List<String>.from(json['enum']);
    }
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
  int get hashCode {
    int hashCode = 0;

    if (enum_ is List && enum_.isNotEmpty) {
      hashCode ^= enum_
          .map((String element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= (conditions?.hashCode ?? 0);
    hashCode ^= (default_?.hashCode ?? 0);
    hashCode ^= (description?.hashCode ?? 0);
    hashCode ^= (format?.hashCode ?? 0);
    hashCode ^= (id?.hashCode ?? 0);
    hashCode ^= (items?.hashCode ?? 0);
    hashCode ^= (maxItems?.hashCode ?? 0);
    hashCode ^= (minItems?.hashCode ?? 0);
    hashCode ^= (propertyOrder?.hashCode ?? 0);
    hashCode ^= (title?.hashCode ?? 0);
    hashCode ^= (type?.hashCode ?? 0);

    return hashCode;
  }

  static List<Property> listFromJson(List<dynamic> json) {
    return json == null
        ? <Property>[]
        : json.map((dynamic value) => Property.fromJson(value)).toList();
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
