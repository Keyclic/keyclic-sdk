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
      allOf: ConditionListCondition.listFromJson(json['allOf']),
    );
  }

  List<ConditionListCondition> allOf;

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
          .map((ConditionListCondition element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<PropertyConditionList> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PropertyConditionList.fromJson(value))
            ?.toList() ??
        <PropertyConditionList>[];
  }

  static Map<String, PropertyConditionList> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, PropertyConditionList>((String key, dynamic value) {
          return MapEntry(key, PropertyConditionList.fromJson(value));
        }) ??
        <String, PropertyConditionList>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'allOf': allOf,
    };
  }

  @override
  String toString() {
    return 'PropertyConditionList[allOf=$allOf, ]';
  }
}
