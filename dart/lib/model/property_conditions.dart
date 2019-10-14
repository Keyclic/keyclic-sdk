part of keyclic_sdk_api.api;

class PropertyConditions {
  PropertyConditions({
    this.allOf,
  });

  PropertyConditions.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    allOf = Condition.listFromJson(json['allOf']);
  }

  List<Condition> allOf;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PropertyConditions &&
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

  static List<PropertyConditions> listFromJson(List<dynamic> json) {
    return json == null
        ? <PropertyConditions>[]
        : json
            .map((dynamic value) => PropertyConditions.fromJson(value))
            .toList();
  }

  static Map<String, PropertyConditions> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PropertyConditions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PropertyConditions.fromJson(value));
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
    return 'PropertyConditions[allOf=$allOf, ]';
  }
}
