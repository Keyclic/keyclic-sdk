part of keyclic_sdk_api.api;

class ConditionListCondition {
  ConditionListCondition({
    this.id,
    this.operator_,
    this.path,
    this.type,
    this.value,
  });

  factory ConditionListCondition.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ConditionListCondition(
      id: json['id'],
      operator_: json['operator'],
      path: json['path'],
      type: json['type'],
      value: json['value'] is List ? List<String>.from(json['value']) : null,
    );
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

    return other is ConditionListCondition &&
        runtimeType == other.runtimeType &&
        id == other.id &&
        operator_ == other.operator_ &&
        path == other.path &&
        type == other.type &&
        DeepCollectionEquality.unordered().equals(value, other.value);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (value is List && value.isNotEmpty) {
      hashCode ^= value
          .map((String element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= operator_?.hashCode ?? 0;
    hashCode ^= path?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;

    return hashCode;
  }

  static List<ConditionListCondition> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ConditionListCondition.fromJson(value))
            ?.toList() ??
        <ConditionListCondition>[];
  }

  static Map<String, ConditionListCondition> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, ConditionListCondition>((String key, dynamic value) {
          return MapEntry(key, ConditionListCondition.fromJson(value));
        }) ??
        <String, ConditionListCondition>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (operator_ != null) 'operator': operator_,
      if (path != null) 'path': path,
      if (type != null) 'type': type,
      if (value != null) 'value': value,
    };
  }

  @override
  String toString() {
    return 'ConditionListCondition[id=$id, operator_=$operator_, path=$path, type=$type, value=$value, ]';
  }
}
