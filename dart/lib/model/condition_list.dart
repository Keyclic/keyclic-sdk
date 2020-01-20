part of keyclic_sdk_api.api;

class ConditionList {
  ConditionList({
    this.allOf,
  });

  factory ConditionList.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ConditionList(
      allOf: Condition.listFromJson(json['allOf']),
    );
  }

  List<Condition> allOf;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ConditionList &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(allOf, other.allOf);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (allOf is List && allOf.isNotEmpty) {
      hashCode ^= allOf
          .map((Condition element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<ConditionList> listFromJson(List<dynamic> json) {
    return json == null
        ? <ConditionList>[]
        : json.map((dynamic value) => ConditionList.fromJson(value)).toList();
  }

  static Map<String, ConditionList> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ConditionList>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ConditionList.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (allOf != null) 'allOf': allOf,
    };
  }

  @override
  String toString() {
    return 'ConditionList[allOf=$allOf, ]';
  }
}
