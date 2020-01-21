part of keyclic_sdk_api.api;

class PropertyConditionList {
  PropertyConditionList({
    this.allOf,
  });

  factory PropertyConditionList.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PropertyConditionList(
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

    return other is PropertyConditionList &&
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

  static List<PropertyConditionList> listFromJson(List<dynamic> json) {
    return json == null
        ? <PropertyConditionList>[]
        : json
            .map((dynamic value) => PropertyConditionList.fromJson(value))
            .toList();
  }

  static Map<String, PropertyConditionList> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PropertyConditionList>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PropertyConditionList.fromJson(value));
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
    return 'PropertyConditionList[allOf=$allOf, ]';
  }
}
