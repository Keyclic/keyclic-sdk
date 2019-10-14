part of keyclic_sdk_api.api;

class Choice {
  Choice({
    this.default_,
    this.description,
    this.enum_,
    this.format,
    this.id,
    this.maxItems,
    this.minItems,
    this.propertyOrder,
    this.title,
    this.type,
  });

  Choice.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    default_ = json['default'];
    description = json['description'];
    if (json['enum'] is List) {
      enum_ = List<String>.from(json['enum']);
    }
    format = json['format'];
    id = json['id'];
    maxItems = json['maxItems'];
    minItems = json['minItems'];
    propertyOrder = json['propertyOrder'];
    title = json['title'];
    type = json['type'];
  }

  String default_;

  String description;

  List<String> enum_;

  String format;

  String id;

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

    return other is Choice &&
        runtimeType == other.runtimeType &&
        default_ == other.default_ &&
        description == other.description &&
        DeepCollectionEquality.unordered().equals(enum_, other.enum_) &&
        format == other.format &&
        id == other.id &&
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

  static List<Choice> listFromJson(List<dynamic> json) {
    return json == null
        ? <Choice>[]
        : json.map((dynamic value) => Choice.fromJson(value)).toList();
  }

  static Map<String, Choice> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Choice>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Choice.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (default_ != null) 'default': default_,
      if (description != null) 'description': description,
      if (enum_ != null) 'enum': enum_,
      if (format != null) 'format': format,
      if (id != null) 'id': id,
      if (maxItems != null) 'maxItems': maxItems,
      if (minItems != null) 'minItems': minItems,
      if (propertyOrder != null) 'propertyOrder': propertyOrder,
      if (title != null) 'title': title,
      if (type != null) 'type': type,
    };
  }

  @override
  String toString() {
    return 'Choice[default_=$default_, description=$description, enum_=$enum_, format=$format, id=$id, maxItems=$maxItems, minItems=$minItems, propertyOrder=$propertyOrder, title=$title, type=$type, ]';
  }
}
