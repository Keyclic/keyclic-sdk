part of keyclic_sdk_api.api;

class RuleCollection {
  RuleCollection({
    this.items,
  });

  factory RuleCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return RuleCollection(
      items: Rule.listFromJson(json['items']),
    );
  }

  List<Rule> items;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RuleCollection &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (items is List && items.isNotEmpty) {
      hashCode ^= items
          .map((Rule element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<RuleCollection> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => RuleCollection.fromJson(value))
            ?.toList() ??
        <RuleCollection>[];
  }

  static Map<String, RuleCollection> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, RuleCollection>((String key, dynamic value) {
          return MapEntry(key, RuleCollection.fromJson(value));
        }) ??
        <String, RuleCollection>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (items != null) 'items': items,
    };
  }

  @override
  String toString() {
    return 'RuleCollection[items=$items, ]';
  }
}
