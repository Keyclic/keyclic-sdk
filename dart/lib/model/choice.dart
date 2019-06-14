part of keyclic_sdk_api.api;

class Choice {
  Choice({
    this.type,
    this.enum_,
    this.description,
    this.format,
    this.maxItems,
    this.minItems,
    this.default_,
    this.propertyOrder,
    this.title,
  });

  Choice.fromJson(Map<String, dynamic> json) {
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

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is Choice && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

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
    };
  }

  @override
  String toString() {
    return 'Choice[type=$type, enum_=$enum_, description=$description, format=$format, maxItems=$maxItems, minItems=$minItems, default_=$default_, propertyOrder=$propertyOrder, title=$title, ]';
  }

  static List<Choice> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Choice>()
        : json.map((value) => Choice.fromJson(value)).toList();
  }

  static Map<String, Choice> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Choice>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Choice.fromJson(value));
    }
    return map;
  }
}
