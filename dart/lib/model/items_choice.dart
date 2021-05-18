part of keyclic_sdk_api.api;

class ItemsChoice {
  ItemsChoice({
    this.default_,
    this.description,
    this.enum_,
    this.format,
    this.id,
    this.maxItems,
    this.minItems,
    this.oneOf,
    this.propertyOrder,
    this.title,
    this.type,
  });

  factory ItemsChoice.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ItemsChoice(
      default_: json['default'],
      description: json['description'],
      enum_: json['enum'] is List ? List<String>.from(json['enum']) : null,
      format: json['format'],
      id: json['id'],
      maxItems: json['maxItems'],
      minItems: json['minItems'],
      oneOf: ItemsChoice.listFromJson(json['oneOf']),
      propertyOrder: json['propertyOrder'],
      title: json['title'],
      type: json['type'],
    );
  }

  String default_;

  String description;

  List<String> enum_;

  String format;

  String id;

  int maxItems;

  int minItems;

  List<ItemsChoice> oneOf;

  int propertyOrder;

  String title;

  String type;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ItemsChoice &&
        runtimeType == other.runtimeType &&
        default_ == other.default_ &&
        description == other.description &&
        DeepCollectionEquality.unordered().equals(enum_, other.enum_) &&
        format == other.format &&
        id == other.id &&
        maxItems == other.maxItems &&
        minItems == other.minItems &&
        DeepCollectionEquality.unordered().equals(oneOf, other.oneOf) &&
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
    if (oneOf is List && oneOf.isNotEmpty) {
      hashCode ^= oneOf
          .map((ItemsChoice element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= default_?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= format?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= maxItems?.hashCode ?? 0;
    hashCode ^= minItems?.hashCode ?? 0;
    hashCode ^= propertyOrder?.hashCode ?? 0;
    hashCode ^= title?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;

    return hashCode;
  }

  static List<ItemsChoice> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ItemsChoice.fromJson(value))
            ?.toList() ??
        <ItemsChoice>[];
  }

  static Map<String, ItemsChoice> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, ItemsChoice>((String key, dynamic value) {
          return MapEntry(key, ItemsChoice.fromJson(value));
        }) ??
        <String, ItemsChoice>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'default': default_,
      'description': description,
      'enum': enum_,
      'format': format,
      'id': id,
      'maxItems': maxItems,
      'minItems': minItems,
      'oneOf': oneOf,
      'propertyOrder': propertyOrder,
      'title': title,
      'type': type,
    };
  }

  @override
  String toString() {
    return 'ItemsChoice[default_=$default_, description=$description, enum_=$enum_, format=$format, id=$id, maxItems=$maxItems, minItems=$minItems, oneOf=$oneOf, propertyOrder=$propertyOrder, title=$title, type=$type, ]';
  }
}
