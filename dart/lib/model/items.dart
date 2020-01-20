part of keyclic_sdk_api.api;

class Items {
  Items({
    this.oneOf,
  });

  factory Items.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Items(
      oneOf: Choice.listFromJson(json['oneOf']),
    );
  }

  List<Choice> oneOf;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Items &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(oneOf, other.oneOf);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (oneOf is List && oneOf.isNotEmpty) {
      hashCode ^= oneOf
          .map((Choice element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<Items> listFromJson(List<dynamic> json) {
    return json == null
        ? <Items>[]
        : json.map((dynamic value) => Items.fromJson(value)).toList();
  }

  static Map<String, Items> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Items>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Items.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (oneOf != null) 'oneOf': oneOf,
    };
  }

  @override
  String toString() {
    return 'Items[oneOf=$oneOf, ]';
  }
}
