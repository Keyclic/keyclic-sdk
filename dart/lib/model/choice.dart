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
    enum_ = (json['enum'] as List)?.map((item) => item as String)?.toList();
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
    if (identical(this, other)) {
      return true;
    }

    return other is Choice && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

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

  Map<String, dynamic> toJson() {
    return {
      'default': default_,
      'description': description,
      'enum': enum_,
      'format': format,
      'id': id,
      'maxItems': maxItems,
      'minItems': minItems,
      'propertyOrder': propertyOrder,
      'title': title,
      'type': type,
    };
  }

  @override
  String toString() {
    return 'Choice[default_=$default_, description=$description, enum_=$enum_, format=$format, id=$id, maxItems=$maxItems, minItems=$minItems, propertyOrder=$propertyOrder, title=$title, type=$type, ]';
  }
}
