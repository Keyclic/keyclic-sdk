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
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Condition &&
        runtimeType == other.runtimeType &&
        id == other.id &&
        operator_ == other.operator_ &&
        path == other.path &&
        type == other.type &&
        DeepCollectionEquality.unordered().equals(value, other.value);
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      id.hashCode ^
      operator_.hashCode ^
      path.hashCode ^
      type.hashCode ^
      value.map((dynamic element) => element.hashCode).fold(0,
          (dynamic value, dynamic cursor) => value.hashCode ^ cursor.hashCode);

  static List<Condition> listFromJson(List<dynamic> json) {
    return json == null
        ? <Condition>[]
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
