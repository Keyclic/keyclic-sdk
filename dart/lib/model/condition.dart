part of keyclic_sdk_api.api;

class Condition {
  Condition();

  Condition.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    operator_ = json['operator'];
    path = json['path'];
    value = (json['value'] as List)?.map((item) => item as String)?.toList();
  }

  String operator_;

  String path;

  List<String> value;

  Map<String, dynamic> toJson() {
    return {
      'operator': operator_,
      'path': path,
      'value': value,
    };
  }

  @override
  String toString() {
    return 'Condition[operator_=$operator_, path=$path, value=$value, ]';
  }

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
}
