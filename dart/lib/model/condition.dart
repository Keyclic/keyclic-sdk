part of keyclic_sdk_api.api;

class Condition {
  Condition({
    this.id,
    this.operator_,
    this.path,
    this.type,
    this.value,
  });

  Condition.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    id = json['id'];
    operator_ = json['operator'];
    path = json['path'];
    type = json['type'];
    value = (json['value'] as List)?.map((item) => item as String)?.toList();
  }

  String id;

  String operator_;

  String path;

  String type;

  List<String> value;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is Condition && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<Condition> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Condition>()
        : json.map((value) => Condition.fromJson(value)).toList();
  }

  static Map<String, Condition> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Condition>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Condition.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'operator': operator_,
      'path': path,
      'type': type,
      'value': value,
    };
  }

  @override
  String toString() {
    return 'Condition[id=$id, operator_=$operator_, path=$path, type=$type, value=$value, ]';
  }
}
